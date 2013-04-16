# clifu
Command line scripts and environment setups project taking shape before your eyes.


# Setup

First, fork the repository. You'll want to work off your own copy. 

Then run this:

    git clone git@github.com:<username>/clifu.git ~/.clifu
    cd ~/.clifu
    
    echo CLIFU_HOME=\${CLIFU_HOME:-`pwd`} >> ~/.bashrc
    echo source \$CLIFU_HOME/setup.sh     >> ~/.bashrc

Then put this in your `.bash_profile`:

    if [ -f ~/.bashrc ]; then
       source ~/.bashrc
    fi

# TODO
  * Break all of the shell scripts out into package directories
  * clifu management scripts
    * list
    * install
    * uninstall
    * disable
  * Add support for remote install of new clifu packages which essentially just downloads a directory and places it into the packages.d directory
