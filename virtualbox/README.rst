================================================================================
Oracle VM VirtualBox
================================================================================

Utilities for `Oracle VM VirtualBox <https://www.virtualbox.org/>`_.

.. contents ::

Fix Screen Resolution
--------------------------------------------------------------------------------

Running Ubuntu-18.04.

I have a high resolution screen (3840 x 2160).  Default settings for VirtualBox
look pretty terrible, but I fixed them easily by clicking "View" in the
VitrualBox window (must be in windowed mode: **Host + F**.  **Host** is defined as
**Right Ctrl** by default).

From the "View" dropdown > "Virtual Screen 1" > "Scale to 200%", then > "Resize
to 1920 x 1200" (the highest res option available).


Controlling VirtualBox from the PowerShell
--------------------------------------------------------------------------------

Make sure the location of :code:`VBoxManage.exe` is added to the Windows PATH: ::
    
    > $Env:path 
    ... ;C:\Program Files\Oracle\VirtualBox;

See `Controlling VirtualBox from the Command Line <https://www.oracle.com/technical-resources/articles/it-infrastructure/admin-manage-vbox-cli.html>`_.

* :code:`> VBoxManage list vms`: Observe existing virtual machines.
* :code:`> VBoxManage list runningvms`: View the VMs that are running at the moment.
* :code:`> VBoxManage list -l runningvms`: Output a detailed list.
* :code:`> VBoxManage showvminfo <vm_name>`: look at current settings of the VM.`


Starting a VM on a Headless Server
--------------------------------------------------------------------------------

Oracle VM VirtualBox provides remote machine display through the VirtualBox
Remote Desktop Extension (VRDE) interface implemented within the Oracle VM
VirtualBox Extension Pack package, which you can download from the `Oracle VM
VirtualBox download page <https://www.virtualbox.org/wiki/Downloads>`_.

:code:`> VBoxManage modifyvm OracleLinux6Test --vrde on`


TODO
--------------------------------------------------------------------------------

* Add instructions for ssh access to running VM.
