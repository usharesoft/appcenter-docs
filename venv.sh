#!/bin/bash

# Checking if script is being sourced (only works for bash)
(return 0 2>/dev/null) && SOURCED=1 || SOURCED=0
if [ $SOURCED != 1 ]; then
    echo "Please source the command instead of executing it:"
    echo "  source $0"
    exit 1
fi

BASEDIR=$(pwd)

if [ ! -f "$BASEDIR/venv.sh" ]; then
    echo "Please run this script at the root of the appcenter-docs directory"
    return 1
elif [ -d "$BASEDIR/.venv" ]; then
    echo "Existing virtual environment found."
    source $BASEDIR/.venv/bin/activate
else
    echo "==================================================================="
    echo "Installing new virtual environment, this will take a few minutes..."
    echo "==================================================================="
    virtualenv $BASEDIR/.venv && source $BASEDIR/.venv/bin/activate && pip install -r $BASEDIR/requirements.txt
fi

function validate-param() {
    if [[ "$1" == "admin" || "$1" == "end-user" ]]; then
       return 0
   else
       echo "Required parameter: 'end-user', 'admin'"
       return 1
   fi
}

function make-doc() {
    validate-param $1 && pushd "$BASEDIR/$1/en" && make clean htmlwerror && popd
}

function serve-doc() {
    validate-param $1 && echo "ctrl-C to stop the server " && pushd $BASEDIR/$1/en/build/html &&
        python -m SimpleHTTPServer || popd
}

echo -e
echo -e "\e[1mmake-doc\e[0m can be used to generate the doc html:"
echo -e "  make-doc admin"
echo -e "  make-doc end-user"
echo -e
echo -e "\e[1mserve-doc\e[0m can be used to serve the generated html for local consultation:"
echo -e "  serve-doc admin"
echo -e "  serve-doc end-user"
echo -e
echo -e "The recommended order of generation is \e[1madmin\e[0m -> \e[1mend-user\e[0m"
echo -e
echo -e "To exit the virtual environment, execute 'deactivate'"
echo -e "To remove the virtual environment, delete the directory '.venv'"
echo -e "If your virtual environment stops working, try deleting '.venv', 'deactivate' and rerun this script"
