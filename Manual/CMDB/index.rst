Manual for module "CMDB"
=============================================================

.. contents:: *In this article:*
  :local:
  :depth: 3


************************************************************************************
Views
************************************************************************************

===============
Action Buttons
===============

------------------
ExecuteCommand
------------------

Ausführung eines Kommandozeilen Befehls unter dem Standard Kontext der Internet Anwendung:

 .. code-block:: console 

   <execute   title="Create Directory" 
                       command="C:\Command.bat"
                       arguments="{Manufacturer}"
                       exit_1="Erfolgreich abgeschlossen."
                       wait="true" />

**Available attributes**

.. csv-table:: 
   :header: "Attribute","Description"
   :widths: 40,60

   "title=""Ressource""", "Text des Funktionsknopfes"
   "command=""Namensregel""", "Befehlszeile (wird gegen den jeweiligen Datensatz aufgelöst)"
   "arguments=""Namensregel""", "Argumente für den Befehlsaufruf (wird gegen den jeweiligen Datensatz aufgelöst)"
   "exit_nn=""Ressource""", "Ausgabetext für den jeweiligen Return-Code ""nn"""
   "wait=""true""", "Wartet auf den Abschuss der Ausführung (synchrone Ausführung) – nur in diesem Fall kann nach der Operation eine Ergebnismeldung an den Anwender weitergegeben werden."


**Examples:**

1. Executing a batch file

2. Executing a local executable

3. Executing a powershell PS1 script


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


************************************************************************************
Attributes
************************************************************************************

**Differnt types of attributes**

.. csv-table:: 
   :header: "Control Type","Description", "Additional Options"
   :widths: 40,60,60


   "String", "Field that holds a text", "Default Value, Input mask"
   "Date", "Field that holds a date", "Default Value, Number Format"
   "Integer", "Field that holds an integer", "Default Value, Number Format"
   "Big integer", "Field that holds a big integer", "Default Value, Number Format"
   "Float", "Field that holds a float", "Default Value, Number Format"
   "Multilanguage Text", "-- Feature not used -- "
   "Checkbox", "Field that displays a checkbox, can have the Status 'checked' or 'unchecked'", "Default value, Input mask"
   "Data list", "Field that holds a fixed list of entrys that can be defined in the GUI", "Items, Default Value, Fill stage"
   "Config. list", "-- Deprecated --"
   "SQL list", "-- Deprecated --"
   "File", "Can contain files that are stored in the SQL Database", "Default value, Input mask"
   "Object reference", "Field that references to another table and displays the defined entrys", "Object reference, Filter, Default value"
   "Active Directory User", "Field that holds Users out of the Active Directory Cashe (the cashe is in the SIM DB)", "LDAP path, Default value"
   "Active Directory Group", "Field that holds Groups out of the Active Directory Cashe (the cashe is in the SIM DB)", "LDAP path, Default"
   "Packaging package name", "-- Deprecated --"
   "Packaging operation system", "-- Deprecated --"
   "Packaging site", "-- Deprecated --"

**Extended Attribute Functions/Options**

.. csv-table:: 
   :header: "Function","Description"
   :widths: 40,80


   "Auto Postback", "Feature not used"
   "Suggestion", "If suggestions are enabled, earlier entered entrys are displayed"
   "Logical Key", "Feature not used"
   "Default value","Default Value defines a default value that will be set automatically."
   "Logical Key", "Feature not used"
   "Input mask","Input mask specifies the required format of the entry. Example: **-**-**-**-**-** (for MAC-Adresses) '*' is a placeholder. A valid entry would be 11-11-11-11-11-11."
   "Number format", "Number format defines the required format of every entry. Example: „#,##0.0“ „dd.MM.yyyy“"
   "Items", "Items of a Datalist seperated by semicolon. Example: Yes;No;(choose)"
   "Fill stage", "Feature not used"
   "Object reference", "Used for Object reference Attributes, choose the table you want to reference"
   "Filter", "Used for Object reference Attributes, filter the entrys in the table you are referencing"
   "LDAP path", "LADP path for the AD Users/Groups"



************************************************************************************
Lists
************************************************************************************