Manual for Module "CMDB"
=============================================================

.. warning:: This article is under construction! Please DO NOT refer to any of the instructions below, yet!
             You may cause damage to your system! This article will be finished soon.

.. contents:: *In this article:*
  :local:
  :depth: 3

.. _CMDB-SCCM-transfer:

************************************************************************************
SCCM Transfer
************************************************************************************

The SCCM transfer module is basically a collection of SQL queries which are executed and delivered to SCCM. This way, customers can fully change the behaviour to their needs.
In general SCCM transfer can be configured in two different modes:

a) Single computer transfer (used by form action button)
b) Multiple computer transfer (used by list action button)

You will find the configuration for SCCM trensfer in "Settings->CMDB".

.. csv-table:: 
   :header: "Function","Description"
   :widths: 40,80

   "Description (de/en)", "Info text displayed in the pop-up."
   "List query", "Query which builds up the dropdown list in the pop-up."
   "Computer query", "Selects mandatory data for computer import. 
   It is important to stick to the correct order of the selected attributes:

    1. = Unique ID of computer element in SIM database
    2. = Target computer name
    3. = MAC Address
    4. = SMBIOS GUID (if available the computer will be created with SMBIOSGUID rather that MAC Address)

   Available variables:

    - ""{0}"" = Selected (computer) item database IDs in the popup.
    - ""{roles}"" = Roles the user is currently in.
    - ""{user}"" = Username of the user currently logged in (DOMAIN\Username).
    - ""{id}"" = ID of the CMDB item. **Note**: Only available when opened via action button.
    - ""{param}"" = Additional parameters defined in the view. Note: Only available when opened via action button.

   "
   "Variable query", "Variables added to the created SCCM computer object.
   It is important to stick to the correct order of the selected attributes:

    1. = Name of the computervariable
    2. = Value of the computervariable
    3. = Locale of the computervariable (if unknown please use '1031')

   Available variables:

    - ""{0}"" = SIM DB ID of the transferred computer object.
    - ""{param}"" = Parameter string given by the corresponding action button parameter.

   Special variable prefixes:

    - ""ConfigMgrColl"" = If the variable has this prefix, a direct membership will be created for the collection **name**.
    - ""ConfigMgrPrimaryUser"" = If the variable has this prefix, a primary user relationship will be created (``DOMAIN\Username`` notation).
   
   "
   "Software query", "Variable SCCM **package** list created at runtime and added as variables to the computer object."
   "Application query", "Variable SCCM **application** list created at runtime and added as variables to the computer object."
   "Computer update", "SQL script which is executed for every transfered computer with import result.
   Available variables:

    - ""{0}"" = SIM DB ID of the transfered computer object.
    - ""{1}"" = Message of the result. If successful the message is empty.

   "
   "Site", "Target SCCM site object (Settings->Sites)."
   "Configuration", "Computer configuration (variables, collections) which is the base for the creation of a new computer object."


  



.. _CMDB-Single-computer-transfer:
======================================
Single Computer Transfer Example
======================================

Exchange the following XML with the corresponding elements in your configuration.xml:

.. literalinclude:: _static/ExampleSingleComputerTransfer.xml
    :language: xml
    :emphasize-lines: 1


.. warning:: After import, make sure you have "Site" and "Configuration" configured correctly in Settings -> CMDB.


.. _CMDB-Multiple-computer-transfer:
======================================
Multiple Computer Transfer Example
======================================

Content will be published soon.
