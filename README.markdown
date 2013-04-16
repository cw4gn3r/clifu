# clifu
Command line scripts and environment setups project taking shape before your eyes.


# Setup

First, fork the repository. You'll want to work off your own copy. Now follow these steps:

1. First, run this:

    git clone git@github.com:<username>/clifu.git ~/.clifu
    cd ~/.clifu
    
    echo CLIFU_HOME=\${CLIFU_HOME:-`pwd`} >> ~/.bashrc
    echo source \$CLIFU_HOME/setup.sh     >> ~/.bashrc

2. Then put this in your `.bash_profile`:

    if [ -f ~/.bashrc ]; then
       source ~/.bashrc
    fi
    
3. Finally, create symlinks in the directory `profile.d` to all the scripts in 
`packages.d` that you want to use. For example, if you're using [RVM](http://rvm.io),
you might want to do this

    cd profile.d
    ln -s ../packages.d/rvm.sh
    
4. Restart your shell (or open a new one). Alternatively, if you want to see the changes
in your current shell, run this:

    source ~/.clifu/setup.sh

# TODO
  * ~~Break all of the shell scripts out into package directories~~
  * clifu management scripts
    * list
    * install
    * uninstall
    * disable
  * Add support for remote install of new clifu packages which essentially just downloads a directory and places it into the packages.d directory
