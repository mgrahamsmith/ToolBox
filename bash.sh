# Useful bash snippets

# Useful edits for ~/.bashrc

# Bash Escape sequences:
       When  executing  interactively,  bash displays the primary
       prompt PS1 when it is ready to read  a  command,  and  the
       secondary  prompt PS2 when it needs more input to complete
       a command.  Bash allows these prompt strings  to  be  cus­
       tomized by inserting a number of backslash-escaped special
       characters that are decoded as follows:
              \a     an ASCII bell character (07)
              \d     the date  in  "Weekday  Month  Date"  format
                     (e.g., "Tue May 26")
              \e     an ASCII escape character (033)
              \h     the hostname up to the first `.'
              \H     the hostname
              \j     the  number of jobs currently managed by the
                     shell
              \l     the basename of the shell's terminal  device
                     name
              \n     newline
              \r     carriage return
              \s     the  name  of  the shell, the basename of $0
                     (the portion following the final slash)
              \t     the current time in 24-hour HH:MM:SS format
              \T     the current time in 12-hour HH:MM:SS format
              \@     the current time in 12-hour am/pm format
              \u     the username of the current user
              \v     the version of bash (e.g., 2.00)
              \V     the release of bash,  version  +  patchlevel
                     (e.g., 2.00.0)
              \w     the current working directory
              \W     the  basename  of the current working direc­
                     tory
              \!     the history number of this command
              \#     the command number of this command
              \$     if the effective UID is 0, a #, otherwise  a
                     $
              \nnn   the  character  corresponding  to  the octal
                     number nnn
              \\     a backslash
              \[     begin a sequence of non-printing characters,
                     which could be used to embed a terminal con­
                     trol sequence into the prompt
              \]     end a sequence of non-printing characters

# Only show current working directory in shell prompt:
# The following should produce:
#   username@hostname:workingdir
#
# NOTE: Note the \W instead of default \w in the lines setting PS1=...
# This ensures only the working directory is shown, instead of entire aboslute path.
#
# 
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
fi
unset color_prompt force_color_prompt

# Show git branch name
#
# Example:
# 
force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W $(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt

# NOTE: 
