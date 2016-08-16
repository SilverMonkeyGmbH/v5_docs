KB00021 - Disable AD Sync
=========================================

To disable the AD Sync (which is performed every 12 hours by the first website visitor) simply follow the above steps.

1. Find configuration.xml
Go to configuration.xml file.
Further info here: :doc:`../KB00014_Finding-Log-Files-and-Configuration-XML/index`


2. Change date to future date:
  .. literalinclude:: _static/configuration.xml
    :language: xml
    :emphasize-lines: 4