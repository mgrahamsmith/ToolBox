================================================================================
Linux
================================================================================

Useful tools, tips, and Bash commands for Linux.

.. contents::


Miscellanious
--------------------------------------------------------------------------------

* Compressing / uncompressing :code:`.gz` files in Bash: ::

    $ gzip -h
    Usage: gzip [OPTION]... [FILE]...
    Compress or uncompress FILEs (by default, compress FILES in-place).

    Example: ::

        $ gzip -d file.gz


Getting Host System Information
--------------------------------------------------------------------------------

Bash commands for getting Linux host system info.


* :code:`uname -a` - print system information ::

    $ uname -a
    Linux hostname 5.15.90.1-microsoft-standard-WSL2 #1 SMP Fri Jan 27 02:56:13 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux

* :code:`/proc/version` ::

    $ cat /proc/version
    Linux version 5.15.90.1-microsoft-standard-WSL2 (oe-user@oe-host) (x86_64-msft-linux-gcc (GCC) 9.3.0, GNU ld (GNU Binutils) 2.34.0.20200220) #1 SMP Fri Jan 27 02:56:13 UTC 2023
    
* :code:`/etc/os-release` ::

    $ cat /etc/os-release
    PRETTY_NAME="Ubuntu 22.04.2 LTS"
    NAME="Ubuntu"
    VERSION_ID="22.04"
    VERSION="22.04.2 LTS (Jammy Jellyfish)"
    VERSION_CODENAME=jammy
    ID=ubuntu
    ID_LIKE=debian
    HOME_URL="https://www.ubuntu.com/"
    SUPPORT_URL="https://help.ubuntu.com/"
    BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
    PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
    UBUNTU_CODENAME=jammy


Linux Documentation
--------------------------------------------------------------------------------

Pull in relevant kernel documentation package (Debian): ::
    
    sudo apt install linux-doc

You’ll find all the documentation in text and HTML formats under :code:`/usr/share/doc/linux-doc/Documentation/`
and :code:`/usr/share/doc/linux-doc/html/` respectively.

Source: see `this response <https://unix.stackexchange.com/questions/658427/offline-documentation-of-kernel-org>`_
on StackExchange.

    TODO: add notes on how to build in Ubuntu 22.04.
