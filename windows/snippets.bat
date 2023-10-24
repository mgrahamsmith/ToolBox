::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: Miscellanious code snippets.  See comments for explanation.
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Check if file / folder exists:
@echo off 
if exist folder_name (
  echo YES
) else (
  echo NO
)

:: Alternate way to check if a file exists.
::
:: Example: Check whether the current environment is under WSL
:: Source: https://superuser.com/questions/1749781/how-can-i-check-if-the-environment-is-wsl-from-a-shell-script

if [ -f "/proc/sys/fs/binfmt_misc/WSLInterop" ]; then
   . "$HOME/.bash.d/wsl"
fi
