Manual for module "CMDB"
=============================================================

.. warning:: This article is under construction! Please DO NOT use any of the instructions below, yet! You may cause damage to your system. This article will be finished soon.

.. contents:: *In this article:*
  :local:
  :depth: 3


************************************************************************************
Form Views
************************************************************************************

===============
Form Elements
===============

Form elements are displayed in detail forms. 

Every form element has to be definded in 

 .. code-block:: xml
  :linenos:

  <views>
  <view>
  <controls>



.. note:: In the following sections, expressions in square brackets are placeholders.
          Please be sure to remove the brackets and replace the placeholder with the specific text you need to use
          (e.g. if you want to display a widget 300 pixels wide, change *width="[250]"* to *width="300"*).

------------------
Headline
------------------

Enter the following code to display a headline:

  .. code-block:: xml
    :linenos:
    
    <views>
    <view>
    <controls>
    <headline text="[Text]" />


  .. figure:: _static/Headline.PNG
     
      This is how a headline is displayed in the CMBD form.
  
------------------
Section
------------------

Define a section as follows:

  .. code-block:: xml
    :linenos:

    <views>
    <view>
    <controls>
    <section text="[Text]" />


  .. figure:: _static/Example_Section.PNG
     
      This is how a section is displayed in the CMBD form.

------------------
Paragraph
------------------

Define a paragraph as follows:

  .. code-block:: xml
    :linenos:

    <views>
    <view>
    <controls>
    <paragraph text="[Text]" />


  .. figure:: _static/Paragraph.PNG
      
      This is how a paragraph is displayed in the CMBD form.

------------------
Attribute
------------------

For full reference see :ref:`CMDB-Attributes`.

You can add an attribute this way:

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
        setDefaultOnLoad="[rule]"
        forceDefault="[true|false]"
        Comment="[comment]"
    />


  .. figure:: _static/Attribute.PNG
       
        This is how attributes are displayed in the CMBD form.

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,60

   "field=""[attribute name]""", "The name of the attribute according to the object definition. Optional fields can also be used. The should have a constant name."
   "validation=""[*]""", "Set up a validation rule (e.g. ""*"" is used to ask for obligatory input). Example:
      
      .. code-block:: console
        
        validation=""*""
        validation=""required: true, regexp: /^[A-Za-z\d]+$/i""
        validation=""required: true, regexp: /^[A-Za-z\d]{2,20}$/i"""
    "readonly=""[true|false]""", "Distinguish between writing view and reading view. Type in ""true"" or ""false""."
    "width=""[width in px]""", "Width of the widget given in pixels."
    "height=""[height in px]""", "Height of the widget given in pixels."
    "setDefaultOnLoad=""[true|false]""", "Define the default value for an empty attribute while loading."
    "forceDefault=""[true|false]""", "Forced implementation of the default values."
    "Comment=""[comment]""", "Add a comment to the attribute. It will be displayed when the curser is moved to the ""*"" at the end of the attribute."


------------------
Comment
------------------

You can add comments to an object in the xml file that will not be displayed when the file is executed.

    .. code-block:: xml
      :linenos:

      <views>
      <view>
      <controls>
      <comment text="[Example Text]" />


------------------
Connections
------------------
Connections are connections to objects. It is possible to set up new connections or new objects.
Add connections using the following xml statement

    .. code-block:: xml 
      :linenos:

      <views>
      <view>
      <controls>
      <connections
        width="[385]"
        height="[200]"
        id="[connection1]"
        title="[connection2]"
        filter="[Software]"
        link="[true|false]"
        create="[view1; view2]"
        readOnly="[true|false]"
      />


  .. figure:: _static/Connection.PNG
    
      This is how a connection is displayed in the CMBD form.

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,60

   "width=""[width in px]""", "Width of the depiciton given in pixels."
   "height=""[height in px]""", "Height of the depiction given in pixels."
   "id=""[string/integer]""", "Unique label if multiple connection lists are displayed."
   "title=""[string]""", "Individual title for the connection list."
   "filter=""[type]""", "Restrict the connection list to one single object type."
   "link=""[true|false]""", "Enable opening referenced objects."
   "create=""[string]""", "List of object views which is supposed to be displayed when new objects are set up and assigned."
   "readOnly=""[true|false]""", "Prevents setting up new connecitons if set to ""true""."


------------------
Link
------------------
Include an HTML-link by using the following xml statement

    .. code-block:: xml
      :linenos:

      <views>
      <view>
      <controls>
      <link
        url="[reference]"
        label="[text]"
        icon="[name]"
      />

.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,60

   "url", "Link or reference."
   "label", "Title of the reference (usually, the title should automatically be located)."
   "icon", "Name of the icon."
  
------------------
List
------------------
Display entrys of another class (e.g. table). 

    .. code-block:: xml
      :linenos:

      <list id="Ressourcen"
        width="1200"
        title="Ressourcen"
        fields="Ressourcenart,110~Name,200~Prio,100~Kontakt,100~Rolle,100~Stdsatzallin,75~StdsatzAllEx,85~RKPauschale,85~LinkToProfile,200"
        count="SELECT count([RessourceId])
        FROM RessourceInRequest"
        data="
               WITH myBase AS (
               SELECT [RessourceId] ,
                  [RessourceType] ,
                  [Name] ,
                  [Prio] ,
                  [Contact] ,
                  [Role] ,
                  [Stdsatzallin] ,
                  [StdsatzAllEx] ,
                  [RKPauschale] ,
                  [LinkToProfile] ,
                  [ParentId] ,
               ROW_NUMBER() OVER (
               ORDER BY {order1}) AS POS
             FROM RessourceInRequest
             WHERE ParentId = {id}


      )

      SELECT RessourceId, RessourceType, Name, Prio, Contact, Role, Stdsatzallin, StdsatzAllEx, RKPauschale, LinkToProfile
      FROM myBase
      WHERE POS BETWEEN {start} AND {end}
      ORDER BY {order2} DESC

      "
        order1="RessourceType~Name~Prio~Contact~Role~Stdsatzallin~StdsatzAllEx~RKPauschale~LinkToProfile"
        order2="RessourceType~Name~Prio~Contact~Role~Stdsatzallin~StdsatzAllEx~RKPauschale~LinkToProfile"
        view="Ressourcen Details (2. Schritt)"
        cmd="javascript: try {window.parent.gridTable.clearSelection();} catch (e){} try {window.opener.gridTable.clearSelection();} catch (e){} document.location.href='TypeView.aspx?PopUp=true&amp;TypeViewId={view}&amp;Id='+id" />


.. csv-table:: 
   :header: "Property","Description"
   :widths: 40,60


   "url", "Link or reference."
   "label", "Title of the reference (usually, the title should automatically be located)."
   "icon", "Name of the icon."

   
**Examples:**

===============
Action Buttons
===============

Action buttons are buttons in detail forms. When a user has write rights for the specific step he / she can click on that button. Action buttons are on the right side of every detail form as the following figure shows: 

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
      title="[Title of the button]" 
      command="[C:\windows\system32\cmd.exe]"
      arguments="[{Var1} {Var2} {Var3}]"
      exit_1="[Execution was sucessfully processed.]"
      exit_2="[Error while execution. See log for details.]"
      wait="[true]" 
   />

**Available attributes**

.. csv-table:: 
   :header: "Attribute","Description"
   :widths: 40,60

   "title=""[Resource]""", "Title of the button"
   "command=""[PathToExe]""", "Full path to the executable. Environment variables are not supported."
   "arguments=""[{Var1} {Var2} {Var3}]""", "Arguments passed to the executed process."
   "exit_nn=""[Ressource]""", "After execution the exit code will be passed to the website. If a corresponding exit_nn parameter is set, a pop up is displayed to the user."
   "wait=""[true/false]""", "If set to true, the website waits for the execution to end."

.. warning:: If "wait" is set to "true" be aware that the internet browser and the IIS session itself both have an IDLE timeout. Use wait=""true""only if the script is executed within seconds.  

**Examples:**

1. Executing a batch file

 .. code-block:: xml 
  :linenos:

   <execute   
      title="[My CMD Script]" 
      command="[C:\windows\system32\cmd.exe]"
      arguments="[/C C:\SilverMonkey\Scripts\MyFirstscript.cmd {ID}]"
      wait="[false]" 
   />

.. note:: You can also execute scripts from a network path. Make sure that the IIS Application Pool is configured to use a specific service account (Default is LOCALSYSTEM).


.. code-block:: xml 
  :linenos:

   <execute   
      title="[My CMD Script]" 
      command="[C:\windows\system32\cmd.exe]"
      arguments="[/C \\networkpath\share\scripts\myscript.cmd {ID}]"
      wait="[false]" 
   />


2. Executing a powershell PS1 script

.. code-block:: xml 
  :linenos:

   <execute   
      title="[My PS1 Script]" 
      command="[C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe]"
      arguments="[C:\SilverMonkey\Scripts\MyFirstscript.ps1 -PackagingJobId {ID} -OtherParam &quot;{Var1}&quot;]"
      wait="[false]" 
   />


.. note:: Using quations within XML attributes: &quot;{Var1}&quot; 


.. _CMDB-actions-CMDB2SCCM:

------------------
CMDB2SCCM
------------------

Creates or edits in Microsoft ConfigMgr one or more computer objects and performs additional actions regarding this systems:

  - Add variables
  - Creates direct memberships for ConfigMgr Collections


.. note:: 
The underlying code can be used in two methods:

 a) Via mass import button in lists
 b) Via action button in forms

This action button was orignally used for mass import of systems. By defining the CMDB mass import configuration to accept single systems by parameter also single systems can be imported.

- See :ref:`tut-massImport` for tutorial.
- See :ref:`CMDB-SCCM-transfer` for more information.

.. code-block:: xml 
  :linenos:

   <CMDB2SCCM   
      title="[Title of the button]" 
      param="[String]"
      restart="[true|false]"
   />

**Available attributes**

.. csv-table:: 
   :header: "Attribute","Description"
   :widths: 40,60

   "title=""[Resource]""", "Title of the button"
   "param=""[String]""", "String to pass to the SQL scripts executed on runtime of the mass import."
   "restart=""[true|false]""", "If set to false, the button will be invisible when executed once."

**Examples:**

1. Executing a batch file

.. code-block:: xml 
  :linenos:

  <CMDB2SCCM   
    title="[Transfer Computer to SCCM]" 
    param="[SingleTransfer]"
    restart="[true]"
  />


------------------
CopyFiles
------------------
Opens a dialogue in which new directory structures can be set for the packaging workflow. 
(Copy is carried out in context of the background SCCM account.)

.. code-block:: xml
  :linenos:

  <views>
  <view>
  <controls>
  <copyFiles
    restart="[true|false]"
    site="[Packaging site name]" 
    indexFilter="[1]"
    indexFilterPreselected="[1]"
    title=“[Title]“
    Validation=“[*]“
  />


.. .. csv-table:: 
   :header: "Attribute","Description"
   :widths: 40,60

..   "restart=""[true/false]""", "Enables repetition of the proces after the package has been created (e.g. in order to recreate the package after manual deletion."
   "site=""[Packaging site Name]""", "String to pass to the SQL scripts executed on runtime of the mass import."
   "indexFilter=""[true|false]""", "If set to false, the button will be invisible when executed once."
   "indexFilterPreselected=""[true/false]""", "Title of the button"
   "title=""[String]""", "String to pass to the SQL scripts executed on runtime of the mass import."
   "validation=""[true|false]""", "If set to false, the button will be invisible when executed once."

------------------
CreatePackage
------------------
Opens a dialogue in which you can compile the SCCM package for packaging workflow. 

.. code-block:: xml
  :linenos:

  <views>
  <view>
  <controls>
  <createPackage
    restart="true|false"
    site="Packaging site name"
    sendToDP="true|false"
  />


------------------
CreateCollection
------------------
Opens a dialogue in which you can create a new collection for the packaging workflow.

.. code-block:: xml
  :linenos:

  <views>
  <view>
  <controls>
  <createCollection
    title="Ressource"
    folder="OrderId"
    parentCollection="CollectionId"
    name="Namensregel"
    collectionType="Typ"
    limitToCollectionId="CollectionId"
    query="Regelabfrage"
  />


------------------
CreateApplication
------------------
Opens a dialogue in which you can set up the SCCM Application for the packaging workflow.

.. code-block:: xml 
  :linenos:

  <views>
  <view>
  <controls>
  <createApplication
    restart="true|false"
    title="Ressource"
    titleRestart="Ressource"
    site="Packaging site name"
    configuration="Name"
  />


------------------
Comment
------------------
Shows the possibility to enter a comment. All comments will be historicized.

.. code-block:: xml
  :linenos:

  <views>
  <view>
  <controls>
  <comment [strings] />


------------------
Save
------------------

------------------
SendMail
------------------

------------------
ImportXML
------------------
.. code-block:: xml
  :linenos:

  <views>
  <view>
  <controls>
  <importXML
    title="Ressource"
    titleRestart="Ressource"
  />

----------------------
CreateActiveDirectory
----------------------


************************************************************************************
List Views
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

.. _CMDB-Lists-View:

======================================
   <view> Definition
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
   <columns> Definition
======================================

Columns represent Attributes and are used to display their values in a list. You can see the syntax in the code-block at the start of this section.

.. csv-table::
   :header: "Column Options","Description"
   :widths: 40,80

   "Column field", "The fieldname of the attribute to be displayed "
   "width", "the width of the column "

======================================
   <data> Definition
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


.. _CMDB-Attributes:

************************************************************************************
Attributes
************************************************************************************

**Different types of attributes**

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


.. _CMDB-SCCM-transfer:
************************************************************************************
SCCM Transfer
************************************************************************************

The SCCM transfer module is basically a collection of SQL queries which are executed and delivered to SCCM. This way customers can fully change the behaviour to their needs.
In general there are two different modes the SCCM transfer can be configured:

a) Single computer transfer (used by form action button)
b) Multiple computer transfer (used by list action button)

The configuration for SCCM Transfer is in "Settings->CMDB".

.. csv-table:: 
   :header: "Function","Description"
   :widths: 40,80

   "Description (de/en)", "Info text displayed in the popup"
   "List query", "Query which builds up the dropdown list in the popup."
   "Computer query", "Selects mandatory data for computer import. 
   It is important to stick to the correct order of the selected attributes:

    1. = Unique ID of computer element in SIM database
    2. = Target computer name
    3. = MAC Address
    4. = SMBIOS GUID (if available the computer will be created with SMBIOSGUID rather that MAC Address

   Available variables:

    - ""{0}"" = Selected (computer) item database IDs in the popup.
    - ""{roles}"" = Roles the user is currently in.
    - ""{user}"" = Username of the currently logged on user (DOMAIN\Username)
    - ""{id}"" = Id of the CMDB item. Note: Only available when opened via action button.
    - ""{param}"" = Additional parameters defined in the view. Note: Only available when opened via action button.

   "
   "Variable query", "Variables added to the created SCCM computer object.
   It is important to stick to the correct order of the selected attributes:

    1. = Name of the computervariable
    2. = Value of the computervariable
    3. = Locale of the computervariable (if unknown please use '1031')

   Available variables:

    - ""{0}"" = SIM DB ID of the transfered computer object.
    - ""{param}"" = Parameter string given by the corresponding action button parameter.

   Special variable prefixes:

    - ""ConfigMgrColl"" = If variable has that prefix, a direct membership will be created for the collection **name**
    - ""ConfigMgrPrimaryUser"" = If variable has that prefix, a primary user relationship will be created (``DOMAIN\Username`` notation)
   
   "
   "Software query", "Variable SCCM **package** list created at runtime and added as variables to the computer object."
   "Application query", "Variable SCCM **application** list created at runtime and added as variables to the computer object."
   "Computer update", "SQL script which is executed for every transfered computer with import result.
   Available variables:

    - ""{0}"" = SIM DB ID of the transfered computer object.
    - ""{1}"" = Message of the result. If successful the message is empty.

   "
   "Site", "Target SCCM site object (Settings->Sites)."
   "Configuration", "Computer configuration (variables, collections) which is used as basis for creating computer object."


  



.. _CMDB-Single-computer-transfer:
======================================
Single computer transfer example
======================================

Exchange the following XML with the corresponding elements in your configuration.xml:

.. literalinclude:: _static/ExampleSingleComputerTransfer.xml
    :language: xml
    :emphasize-lines: 1


.. warning:: After import make sure you have "Site" and "Configuration" configured correctly in Settings->CMDB


.. _CMDB-Multiple-computer-transfer:
======================================
Multiple computer transfer example
======================================

Content will be handed in later.
