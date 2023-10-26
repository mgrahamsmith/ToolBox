================================================================================
Bash Shell
================================================================================

Useful samples for using bash shell and bash scripts.

.. contents ::


Samples
--------------------------------------------------------------------------------

* `snippets.sh`_: Miscellanious bash shell samples.  See comments for explanation.

.. _snippets.sh: ./snippets.sh


Miscellaneous
--------------------------------------------------------------------------------

Redirect STDERR to STDOUT
^^^^^^^^^^^^^^^^^^^^^^^^^

To redirect STDERR to STDOUT, you have to add :code:`2>&1` at the end of each line: ::

  echo "Error occurred" >> log.file 2>&1

Signal EOF from Bash
^^^^^^^^^^^^^^^^^^^^

To signal EOF from Bash shell: :code:`Ctrl-D`
