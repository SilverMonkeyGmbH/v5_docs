Manual for Module "Operations"
=============================================================

.. contents:: *In this article:*
  :local:
  :depth: 3


.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet! You may cause damage to your system. This article will be finished soon.


************************************************************************************
Hidden Settings
************************************************************************************
Hidden settings are configurable features that are not available through the standard configuration UI. 

These settings have to be set within the ``Configuration.xml`` in a text editor.

.. tip:: Within the hidden settings section XPATH notation is used to give information about the correct location of the setting. Please visit `this website <http://www.w3schools.com/xsl/xpath_syntax.asp>`_ in order to get more information on XPATH notation.

==============================
Alternative New Computer Popup
==============================

In order to change the behaviour of the new computer, hit the "plus" button and
add the following XML tag to ``//sites/site``:

.. code-block:: xml
 :linenos:

  <AlternateCreatePopup><![CDATA[javascript: functionXY();]]></AlternateCreatePopup>

**Example**

You have created a special CMDB class for computer import with the form ID ``84``. You can open a popup with the built-in javascript function ``sW``:

.. code-block:: xml
 :linenos:

  <AlternateCreatePopup><![CDATA[javascript: sW('v_84_','../Support/TypeView.aspx?PopUp=true&TypeViewId=84',650,500,true);]]></AlternateCreatePopup>


.. code-block:: xml
 :linenos:

  <AlternateCreatePopup><![CDATA[javascript: sW('v_84_','../Support/TypeView.aspx?PopUp=true&TypeViewId=84&Id=NewEntry',650,500,true);]]></AlternateCreatePopup>  

Use ``&Id=NewEntry`` to create a new entry on the fly. This allows you to directly show actions buttons and saves one click.

==============================
Debug Mode
==============================

By setting debugmode to true a verbose log is created in app_data directory with more internal process information.
Add the following XML tag to ``//system``

.. code-block:: xml
 :linenos:

  <debugLogging>true</debugLogging>


==============================
Debug Mode
==============================  


************************************************************************************
Settings
************************************************************************************

==============================
Client Commands
==============================

Client commands are visible in the properties dialogue in the SIM OPS module.
There are different types of client commands.

.. image:: _static/ComputerActions_001.png

.. image:: _static/ComputerActions_002.png

---------------------------
WMI Query
---------------------------

Executes SQL select on the target machine and displays the output on the website.

**Example:** View the services of the client including his / her status. 

.. csv-table::
   :header: "Setting","Value"
   :widths: 40,60

   "Type", "WMI query"
   "Namespace", "root\\cimv2"
   "Query", "SELECT DisplayName, Description, StartMode, StartName, State FROM Win32_Service"

---------------------------
Registry Query
---------------------------
Reads from target machine registry and displays the output on the website.

**Example:** View Add Remove Programs 

.. csv-table::
   :header: "Setting","Value"
   :widths: 40,60

   "Type", "Registry query"
   "Namespace", "HKEY_LOCAL_MACHINE"
   "Class", "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall"
   "Query", "DisplayName, DisplayVersion, Publisher, InstallDate"

---------------------------
WMI Query Command
---------------------------
Executes a specific WMI method for every returned object.

**Example:** Stop Windows Services with Specific Name 

.. csv-table::
   :header: "Setting","Value"
   :widths: 40,60

   "Type", "WMI Query command"
   "Namespace", "root\\cimv2"
   "Query", "select * from Win32_Service where Name='W3SVC'"
   "Command", "StopService"

---------------------------
WMI Class Command
---------------------------
Executes a WMI class method.

**Example:**  Trigger SCCM HW Inventory on client 

.. csv-table::
   :header: "Setting","Value"
   :widths: 40,60

   "Type", "WMI Class command"
   "Namespace", "root\\ccm"
   "Class", "SMS_Client"
   "Command", "TriggerSchedule~{00000000-0000-0000-0000-000000000001}"   

---------------------------
ClickOnce
---------------------------
Executes local executables such as MSTSC for extended functionality regarding client systems.

**Example:** Start MSTSC with a Parameter

.. csv-table::
   :header: "Setting","Value"
   :widths: 40,60

   "Type", "ClickOnce"
   "Query", "../Tools/ClickOnce/SIM_Ops_Clickonce.application?{ComputerName}"

``SIM_Ops_Clickonce.application`` is only delivered with the latest version. You can change its behaviour (executable, parameters) in the config file under "Tools\ClickOnce\Application Files\SIM_Ops_Clickonce_1_0_0_0\SIM_Ops_Clickonce.exe.config.deploy".

.. tip:: If ``ClickOnce`` is missing in your configuration please open the Configuration.xml file and change all lines from
  
  + "query_wmi,WMI query;query_files,Filesystem;query_registry,Registry query;cmd_query_wmi,WMI query command;cmd_class_wmi,WMI class command;wol,WakeOnLAN" 
  
  to
  
  + "query_wmi,WMI query;query_files,Filesystem;query_registry,Registry query;cmd_query_wmi,WMI query command;cmd_class_wmi,WMI class command;wol,WakeOnLAN;clickonce,ClickOnce"`
  
   
