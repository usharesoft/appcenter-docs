## UForge AppCenter Documentation

This directory contains the source for UForge AppCenter online documentation.  This uses [Sphinx](http://sphinx-doc.org) to build static html files from these source files.

### Building locally

Install [Sphinx](http://sphinx-doc.org)

    $ pip install sphinx

Install [read the docs theme](https://github.com/snide/sphinx_rtd_theme):

    $ pip install sphinx_rtd_theme
    
Build the docs and open them in your browser:

    $ cd documentation/uforge-appcenter/end-user/en
    $ make html
    $ open build/html/index.html

### Contributions Welcome!

If you find a typo or you feel like you can improve the content of the documentation, we welcome contributions and comments. Feel free to open issues or pull requests like any normal GitHub project.
