KB00021 - Disable AD Sync
=========================================

To disable AD Sync (which is performed every 12 hours by the first website visitor) simply follow the steps below.

1. Find configuration.xml
++++++++++++++++++++++++++

Further information on how to find the Configuration.xml file, read the corresponding article. ( :doc:`../KB00014_Finding-Log-Files-and-Configuration-XML/index` )


2. Change date to future date:

  .. literalinclude:: _static/configuration.xml
    :language: xml
    :emphasize-lines: 4