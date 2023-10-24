================================================================================
Oracle VM VirtualBox
================================================================================

Utilities for `Oracle VM VirtualBox <https://www.virtualbox.org/>`_.


Controlling VirtualBox from the Command Line
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
VirtualBox download page <https://www.virtualbox.org/wiki/Downloads>`_. ::

    > VBoxManage modifyvm OracleLinux6Test --vrde on
