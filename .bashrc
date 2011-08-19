#for virtualenv python
export WORKON_HOME=$HOME/projects
export VIRTUALENVWRAPPER_HOOK_DIR=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_LOG_DIR=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
#Run these commands in your console, they will edit necessary files:
#echo 'basename "$VIRTUAL_ENV" > ~/.last_venv' >> $VIRTUALENVWRAPPER_HOOK_DIR/postactivate
#echo 'rm ~/.last_venv' >> $VIRTUALENVWRAPPER_HOOK_DIR/postdeactivate
#Then open your `~/.bashrc` or `~/.profile` or whatever your shell uses and append:
if [ -e ~/.last_venv ]; then
    workon `cat ~/.last_venv`
fi
