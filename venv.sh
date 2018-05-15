#!/bin/bash

# Checking if the running process is "/bin/sh"
# If it's "/bin/sh" then the user is executing the file directly
# We want the user to source the file instead (source ./venv.sh or . ./venv.sh)
if ps -p $$ --no-headers -o cmd | grep -q "^/bin/sh "; then
    echo "Please source the command instead of executing it:"
    echo "  source $0"
    exit 1
fi

BASEDIR=$(dirname $(readlink -f "$0"))
if [ -d "$BASEDIR/.venv" ]; then
    echo "Existing virtual environment found."
    source $BASEDIR/.venv/bin/activate
else
    echo "==================================================================="
    echo "Installing new virtual environment, this will take a few minutes..."
    echo "==================================================================="
    virtualenv $BASEDIR/.venv && source $BASEDIR/.venv/bin/activate && pip install -r $BASEDIR/requirements.txt
fi

function validate-param() {
    case "$1" in
        "apis" | "admin" | "end-user")
            return 0
            ;;
        *)
            echo 'Required parameter: "end-user", "admin", or "apis"'
            return 1
            ;;
    esac
}

function make-doc() { validate-param $1 && pushd $BASEDIR/$1/en && make clean html && popd }

function serve-doc() {
    validate-param $1 && echo "ctrl-C to stop the server " && pushd $BASEDIR/$1/en/build/html &&
        python -m SimpleHTTPServer || popd
}

function copy-uforge-api() {
    UFORGE_DIR=$(realpath "$BASEDIR/../uforge")
    if [[ ! -z "$1" ]]; then
       UFORGE_DIR=$1
    fi

    echo "Please make sure that uforge wadl has been generated (mvn clean install -PnoLib,noGWT,wadl) before copying."
    echo "Copy uforge API files from $UFORGE_DIR? [y/n]"
    read
    echo

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Copying generated API files into apis/en/source/ ..."
        cp -v $UFORGE_DIR/UForgeAPI/target/xslt/dto/*.rst $BASEDIR/apis/en/source/pages/dto-objects
        # careful with the space in "uForge API" directory, need the double quote
        cp -v "$(find $UFORGE_DIR/uForgeRest/target/xslt/ -name index.rst)" $BASEDIR/apis/en/source/
        cp -v $UFORGE_DIR/uForgeRest/target/wadl/application.wadl $BASEDIR/apis/en/source/pages
        cp -v $UFORGE_DIR/uForgeRest/target/wadl/uforge.xsd $BASEDIR/apis/en/source/pages/dto-objects

        echo "Fixing the generated index.rst to add the missing label for end-user doc if needed..."
        # the silent grep makes sure we don't do it if the label already exists
        grep -q '_apis-index:' $BASEDIR/apis/en/source/index.rst || sed -i '1 a \\n.. _apis-index:' $BASEDIR/apis/en/source/index.rst

    else
        echo "Copy aborted."
    fi

}

echo
echo "\e[1mumake-doc\e[0m can be used to generate the doc html:"
echo "  make-doc apis"
echo "  make-doc admin"
echo "  make-doc end-user"
echo
echo "\e[1muserve-doc\e[0m can be used to serve the generated html for local consultation:"
echo "  serve-doc apis"
echo "  serve-doc admin"
echo "  serve-doc end-user"
echo
echo "\e[1mucopy-uforge-api [uforge-dir]\e[0m can be used to copy uforge generated API files to update apis doc:"
echo "  copy-uforge-api ../uforge"
echo "  \e[2m# the above is the default value\e[0m"
echo "  copy-uforge-api"
echo
echo "The recommended order of generation is \e[1mapis\e[0m -> \e[1madmin\e[0m -> \e[1mend-user\e[0m"
echo
echo "To exit the virtual environment, execute 'deactivate'"
echo "To remove the virtual environment, delete the directory '.venv'"
