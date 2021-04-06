### Place at the bottom of your .bashrc file

# Include custom functions
if [ -f ~/.shell_functions ]; then
    . ~/.shell_functions
fi

# Initialize Linux
linux_initialize