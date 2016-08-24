Manual for module "CMDB"
=============================================================

.. contents:: *In this article:*
  :local:
  :depth: 3


************************************************************************************
Views
************************************************************************************

===============
Form Elements
===============

Every form element has to be definded in 

 .. code-block:: xml
  :linenos:

  <views><view><controls>

------------------
headline
------------------

Enter the following code to display a headline:

  .. code-block:: xml
    :linenos:

    <views><view><controls><headline text="Text">


------------------
section
------------------

Define a section as follows

  .. code-block:: xml
    :linenos:

    <views><view><controls><section text="Text">

------------------
paragraph
------------------

Define a paragraph as follows

  .. code-block:: xml
    :linenos:

    <views><view><controls><paragraph text="Text">

------------------
attribute
------------------

You can add an attribute in this way

  .. code-block:: xml
    :linenos:

    <views>
    <view>
    <controls>
    <attribute 
        field="[attribute name]"
        validation="[*]"
        readonly="[true|false]"
        width="[250]"
        height="[0]"
        label="[designation]"
        setDefaultOnLoad="[rule]"
        forceDefault="[true|false]"
        Comment="[comment]"
    >

.. csv-table:: 
   :header: "Function","Description"
   :widths: 40,80

   "Name - de / Name - en", "The Displayname of the attribute"
   "Field name", "This is the actual column name in the SIM SQL DB"
   "Database Type", "Describes the attributes type."
   "LDAP path", "LADP path for the AD Users/Groups"
   "Auto Postback", "-- Feature not used --"
   "Suggestion", "Autocomplete. If suggestions are enabled, earlier entered will be suggested"
   "Default value","Defines a default value that will be set automatically."
   "Logical Key", "-- Feature not used --"
   "Input mask","Specifies the required format of the entry. Example: **-**-**-**-**-** (for MAC-Adresses) '*' is a placeholder. A valid entry would be 11-11-11-11-11-11."
   "Number format", "Defines the required format of every entry. Example: „#,##0.0“ „dd.MM.yyyy“"
   "Items", "Items of a Datalist seperated by semicolon. Example: Yes;No;(choose)"
   "Fill stage", "-- Feature not used --"
   "Object reference", "Used for Object reference Attributes, choose the table you want to reference"
   "Filter", "Used for Object reference Attributes, filter the entrys in the table you are referencing"
   "LDAP path", "LADP path for the AD Users/Groups"

------------------
connections
------------------

------------------
link
------------------



===============
Action Buttons
===============

Action buttons are buttons in detail forms. When a user has write rights for the specific step the user can click on that button. Action button are on the right side of every detail form as the following figure shows: 

  .. image:: _static/ActionButtonsOverview.png

Every action button has to be definded within a view in the XML block ``<views><view><controls>``. Please see the following example:

.. literalinclude:: _static/ViewExample.xml
    :language: xml
    :linenos:
    :emphasize-lines: 6


------------------
Execute
------------------

Execution of a commandline or a script. The process will be executed in the context of the IIS application pool.
However, you can use in the script impersonation for using specific accounts.


 .. code-block:: xml 
  :linenos:

   <execute   
      title="Title of the button" 
      command="C:\windows\system32\cmd.exe"
      arguments="{Var1} {Var2} {Var3}"
      exit_1="Execution was sucessfully processed."
      exit_2="Error while execution. See log for details."
      wait="true" 
   />

**Available attributes**

.. csv-table:: 
   :header: "Attribute","Description"
   :widths: 40,60

   "title=""Resource""", "Title of the button"
   "command=""PathToExe""", "Full path to the executable. Environment variables are not supported."
   "arguments=""{Var1} {Var2} {Var3}""", "Arguments passed to the executed process."
   "exit_nn=""Ressource""", "After execution the exit code will be passed to the website. If a corresponding exit_nn parameter is set, a pop up is displayed to the user."
   "wait=""true/false""", "If set to true, the website waits for the execution to end."

.. warning:: If "wait" is set to "true" be aware that the internet browser and the IIS session itself has an idle timeout. Use wait=true only if the script is executed within seconds.  

**Examples:**

1. Executing a batch file

 .. code-block:: xml 
  :linenos:

   <execute   
      title="My CMD Script" 
      command="C:\windows\system32\cmd.exe"
      arguments="/C C:\SilverMonkey\Scripts\MyFirstscript.cmd {ID}"
      wait="false" 
   />

.. note:: You can also execute scripts from a network path. Make sure, that the IIS Application Pool is configured to use a specific service account (Default is LOCALSYSTEM).


.. code-block:: xml 
  :linenos:

   <execute   
      title="My CMD Script" 
      command="C:\windows\system32\cmd.exe"
      arguments="/C \\networkpath\share\scripts\myscript.cmd {ID}"
      wait="false" 
   />


2. Executing a powershell PS1 script

 .. code-block:: xml 
  :linenos:

   <execute   
      title="My PS1 Script" 
      command="C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe"
      arguments="C:\SilverMonkey\Scripts\MyFirstscript.ps1 -PackagingJobId {ID} -OtherParam &quot;{Var1}&quot;"
      wait="false" 
   />


.. note:: Using quations within XML attributes: &quot;{Var1}&quot; 

------------------
CMDB2SCCM
------------------

Creates or edits in Microsoft ConfigMgr one or more computer objects and performs additional actions regarding this systems:
- Add variables
- Creates direct memberships for ConfigMgr Collections

This action button war orignally used for mass import of systems. By defining the CMDB mass import configuration to accept single systems by parameter also single systems can be imported.
See :ref:`_tut-massImport` for more information.


 .. code-block:: xml 
  :linenos:

   <CMDB2SCCM   
      title="Title of the button" 
      command="C:\windows\system32\cmd.exe"
      arguments="{Var1} {Var2} {Var3}"
      exit_1="Execution was sucessfully processed."
      exit_2="Error while execution. See log for details."
      wait="true" 
   />

**Available attributes**

.. csv-table:: 
   :header: "Attribute","Description"
   :widths: 40,60

   "title=""Resource""", "Title of the button"
   "command=""PathToExe""", "Full path to the executable. Environment variables are not supported."
   "arguments=""{Var1} {Var2} {Var3}""", "Arguments passed to the executed process."
   "exit_nn=""Ressource""", "After execution the exit code will be passed to the website. If a corresponding exit_nn parameter is set, a pop up is displayed to the user."
   "wait=""true/false""", "If set to true, the website waits for the execution to end."

.. warning:: If "wait" is set to "true" be aware that the internet browser and the IIS session itself has an idle timeout. Use wait=true only if the script is executed within seconds.  

**Examples:**

1. Executing a batch file

 .. code-block:: xml 
  :linenos:

   <execute   
      title="My CMD Script" 
      command="C:\windows\system32\cmd.exe"
      arguments="/C C:\SilverMonkey\Scripts\MyFirstscript.cmd {ID}"
      wait="false" 
   />

.. note:: You can also execute scripts from a network path. Make sure, that the IIS Application Pool is configured to use a specific service account (Default is LOCALSYSTEM).


.. code-block:: xml 
  :linenos:

   <execute   
      title="My CMD Script" 
      command="C:\windows\system32\cmd.exe"
      arguments="/C \\networkpath\share\scripts\myscript.cmd {ID}"
      wait="false" 
   />


2. Executing a powershell PS1 script

 .. code-block:: xml 
  :linenos:

   <execute   
      title="My PS1 Script" 
      command="C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe"
      arguments="C:\SilverMonkey\Scripts\MyFirstscript.ps1 -PackagingJobId {ID} -OtherParam &quot;{Var1}&quot;"
      wait="false" 
   />




------------------
CopyFiles
------------------

------------------
CreatePackage
------------------

------------------
CreateCollection
------------------


------------------
CreateApplication
------------------

------------------
comment
------------------

------------------
save
------------------

------------------
sendMail
------------------

------------------
importXML
------------------

----------------------
createActiveDirectory
----------------------






************************************************************************************
Attributes
************************************************************************************

**Differnt types of attributes**

You can create different types of attributes to customize the formular to your needs. These attributes have different settings and functions, these are described in the two tables below.

.. csv-table::
   :header: "Attribute Type","Description", "Additional Options"
   :widths: 40,40,40


   "String", "Field that holds a text", "Default Value, Input mask"
   "Date", "Field that holds a date", "Default Value, Number Format"
   "Integer", "Field that holds an integer", "Default Value, Number Format"
   "Big integer", "Field that holds a big integer", "Default Value, Number Format"
   "Float", "Field that holds a float", "Default Value, Number Format"
   "Multilanguage Text", "-- Deprecated -- ", "-- Deprecated -- "
   "Checkbox", "Field that displays a checkbox, can have the Status 'checked' or 'unchecked'", "Default value, Input mask"
   "Data list", "Field that holds a fixed list of entrys that can be defined in the GUI, the entrys are seperated with a semicolon ('firstentry;secondentry')", "Items, Default Value, Fill stage"
   "Config. list", "-- Deprecated --", "-- Deprecated --"
   "SQL list", "-- Deprecated --", "-- Deprecated --"
   "File", "Can contain files that are stored in the SQL Database", "Default value, Input mask"
   "Object reference", "Field that references to another table and displays the defined entrys", "Object reference, Filter, Default value"
   "Active Directory User", "Field that holds Users out of the Active Directory Cashe (the cashe is located in the SIM DB)", "LDAP path, Default value"
   "Active Directory Group", "Field that holds Groups out of the Active Directory Cashe (the cashe is located in the SIM DB)", "LDAP path, Default"
   "Packaging package name", "-- Deprecated --", "-- Deprecated --"
   "Packaging operation system", "-- Deprecated --", "-- Deprecated --"
   "Packaging site", "-- Deprecated --", "-- Deprecated --"

**Extended Attribute Functions/Options**

.. csv-table:: 
   :header: "Function","Description"
   :widths: 40,80

   "Name - de / Name - en", "The Displayname of the attribute"
   "Field name", "This is the actual column name in the SIM SQL DB"
   "Database Type", "Describes the attributes type."
   "LDAP path", "LADP path for the AD Users/Groups"
   "Auto Postback", "-- Feature not used --"
   "Suggestion", "Autocomplete. If suggestions are enabled, earlier entered will be suggested"
   "Default value","Defines a default value that will be set automatically."
   "Logical Key", "-- Feature not used --"
   "Input mask","Specifies the required format of the entry. Example: **-**-**-**-**-** (for MAC-Adresses) '*' is a placeholder. A valid entry would be 11-11-11-11-11-11."
   "Number format", "Defines the required format of every entry. Example: „#,##0.0“ „dd.MM.yyyy“"
   "Items", "Items of a Datalist seperated by semicolon. Example: Yes;No;(choose)"
   "Fill stage", "-- Feature not used --"
   "Object reference", "Used for Object reference Attributes, choose the table you want to reference"
   "Filter", "Used for Object reference Attributes, filter the entrys in the table you are referencing"
   "LDAP path", "LADP path for the AD Users/Groups"



************************************************************************************
Lists
************************************************************************************

You can create custom lists and customize them to fit your needs. The following subchapters describe the options you have when you are creating or customizing a list. 

===================
Properties
===================

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,80

   "Design", "Choose between List and Formular initially"
   "Name - de / Name - en", "The Displayname of the list"
   "Sort order", "Choose where in the Drop Down the choosen list is displayed"
   "Roles", "Choose wich roles can see the list"
   "Definition", "The Definition of the list"


Example List:

 .. code-block:: xml 

   <view splitterWidth="550" 
            detailView="Paketdetails PackWF" 
            newLink="" 
            viewPane="false" 
            refresh="true" 
            excelExport="true" 
            importExport="false"
            popUp="1100,800"> 

   <columns>
        <column field="ClientCode"  width="70" />
        <column field="RequestID"  width="70" />
        <column field="RequestReference"  width="70" />
        <column field="SysStatus"  width="180" />
        <column field="RequestManufacturerName"  width="200" />
        <column field="RequestProductName"  width="200" />
        <column field="RequestProductVersion"  width="100" />
        <column field="PackagingPackageName"  width="-1" />
        <column field="PackageSWGroups"  width="200" />
   </columns>

   <data>
        <condition> ({search}='' OR PackageProductName like {search} OR ClientCode like {search} OR RequestReference like {search} OR RequestID like {search}) </condition>
   </data>
   </view>

======================================
   <view>
======================================

**Parameters**

.. csv-table::
   :header: "View Options","Description"
   :widths: 40,80

   "splitterWidth", "Width of the splitter shown in list form. (in pixels)"
   "detailView- de / Name - en", "Specifying the form name that is to be used for the detailed representation of a list form."
   "newLink", "Construction of new objects in a list. The “Detailed view“ is used as detail form"
   "viewPane", "If this value is set to “false“, the selection is displayed as a drop-down list."
   "refresh", "Display update function in list view"
   "excelExport", "Display excel export function in list view"
   "importExport", "Display import/export function in list view"
   "popUp", "By specifying a popup window size in the format “width, height“, a list view opens choosen entries in a new window e.g .: “800,600“"


======================================
   <columns>
======================================

Columns represent Attributes and are used to display their values in a list. You can see the syntax in the code-block at the start of this section.

.. csv-table::
   :header: "Column Options","Description"
   :widths: 40,80

   "Column field", "The fieldname of the attribute to be displayed "
   "width", "the width of the column "

======================================
   <data> 
======================================

In the <data> section you can define the initial search condition for the displayed list objects. You can also define in which attributes to search.

The highlighted part in the following code block causes the website to display just the entries that posses a value like 'john doe' in the attributes IssueEditor, Requestor or qualityinspector.

 .. code-block:: xml 
   :emphasize-lines: 4

   <condition>
      ({search}='' OR IssueID like {search} OR Title like {search})
   AND 
      (IssueEditor like '%John Doe%' OR Requestor like '%John Doe%' OR qualityinspector like '%John Doe%')
   </condition>

The next highlighted part in the code block defines that the list search associated with that list, will search in the attributes IssueID or Title.

 .. code-block:: xml 
   :emphasize-lines: 2

   <condition>
      ({search}='' OR IssueID like {search} OR Title like {search})
   AND 
      (IssueEditor like '%John Doe%' OR Requestor like '%John Doe%' OR qualityinspector like '%John Doe%')
   </condition>

You can define very specific filters and conditions with TSQL in lists. 