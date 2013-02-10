# set our control file as environment variable
export BLINK_FILE=~/.blink1

# define a function that pipes through to 'say',
# but also looks for certain strings it what was said and notifies the
# blink(1) device
blink_say() {
    say "$*"
    echo "$*" | grep "commencing rollout" && echo "#ffcc00" > $BLINK_FILE
    echo "$*" | grep "rollout completed"  && echo "#00ee00" > $BLINK_FILE &&
    (sleep 20; echo "#000000" > $BLINK_FILE) &
}

# alias it to replace the actual 'say' command
alias say=blink_say
