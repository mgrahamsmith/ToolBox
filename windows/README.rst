================================================================================
Windows
================================================================================

Useful samples for Windows Command Prompt, Powershell, and Batch scripts.

.. contents ::


PowerShell
--------------------------------------------------------------------------------

See `Learning PowerShell: Introdution <https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/00-introduction?view=powershell-7.3>`_

Useful Commands
^^^^^^^^^^^^^^^

* Get environment path variables: :code:`> $Env:path`

* What version of PowerShell am I running? :code:`> $PSVersionTable`

* :code:`Get-Command`: 

* :code:`Get-Help`: Helps you learn how to use commands once you find them. ::

   > Get-Help -Name Get-Help

* :code:`Get-Member`: 


Vocabulary
^^^^^^^^^^

* **cmdlet**: Compiled commands in PowerShell are called cmdlets. Cmdlet is pronounced "command-let" (not CMD-let).


Samples
--------------------------------------------------------------------------------

* `snippets.bat`_: Miscellanious Batch script samples.  See comments for explanation.

.. _snippets.bat: ./snippets.bat


Miscellanious
--------------------------------------------------------------------------------

In Windows, to signal EOF from command prompt: :code:`Ctrl-Z` + :code:`Enter`
