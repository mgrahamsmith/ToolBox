================================================================================
reStructured Text
================================================================================

Useful reStructuredText (:code:`.rst`) markup samples.

.. contents::

reStructuredText markup
--------------------------------------------------------------------------------

`reStructuredText markup`_: this is an excellent resource for .rst samples, from
`Python's devguide`_.

"This document describes the custom reStructuredText markup introduced by Sphinx
to support Python documentation and how it should be used."

Source file:
https://github.com/python/devguide/blob/main/documentation/markup.rst

View a local copy in this repo: `markup.rst`_

.. _reStructuredText markup: https://devguide.python.org/documentation/markup/#restructuredtext-markup
.. _Python's devguide: https://devguide.python.org/documentation/markup/#restructuredtext-primer
.. _markup.rst: ./markup.rst

Samples
--------------------------------------------------------------------------------

Section Headers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Section heading convention from `reStructuredText markup`_.

80 character length samples in order of decreasing succession:
::

    ################################################################################
    Part Heading
    ################################################################################

    ********************************************************************************
    Chapter Heading
    ********************************************************************************
    
    ================================================================================
    Section Heading
    ================================================================================

    Subsection Heading
    --------------------------------------------------------------------------------

    Subsubsection Heading
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    Paragraph Heading
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    Even Smaller Heading
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Paragraph-level markup
--------------------------------------------------------------------------------

.. note::

   An especially important bit of information about an API that a user should be
   aware of when using whatever bit of API the note pertains to.  The content of
   the directive should be written in complete sentences and include all
   appropriate punctuation.

   Example::

      .. note::

         This function is not suitable for sending spam e-mails.