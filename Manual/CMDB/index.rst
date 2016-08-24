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

------------------
headline
------------------

------------------
section
------------------

------------------
paragraph
------------------

------------------
attribute
------------------


------------------
connections
------------------

------------------
link
------------------



===============
Action Buttons
===============

Every action button has to be definded in 

 .. code-block:: xml

  <views><view><controls>

------------------
Execute
------------------

Execution of a commandline or a script. The process will be executed in the context of the IIS application pool.
However, you can use in the script impersonation for using specific accounts.


 .. code-block:: console 

   <execute   title="Title of the button" 
                       command="C:\windows\system32\cmd.exe"
                       arguments="{Var1} {Var2} {Var3}"
                       exit_1="Execution was sucessfully processed."
                       exit_2="Error while execution. See log for details."
                       wait="true" />

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

   <execute title="My PS1 Script" command="C:\Windows\system32\cmd.exe" arguments="/C C:\SilverMonkey\Scripts\MyFirstscript.cmd {ID}" wait="false" />

.. note:: You can also execute scripts from a network path. Make sure, that the IIS Application Pool is configured to use a specific service account (Default is LOCALSYSTEM).

 .. code-block:: xml 

   <execute title="My PS1 Script" command="C:\Windows\system32\cmd.exe" arguments="/C \\networkpath\share\scripts\myscript.cmd {ID}" wait="false" />


2. Executing a powershell PS1 script

 .. code-block:: xml 

   <execute title="My PS1 Script" command="C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe" arguments="C:\SilverMonkey\Scripts\MyFirstscript.ps1 -PackagingJobId {ID} -OtherParam &quot;{Var1}&quot;" wait="false" />

.. note:: Using quations within XML attributes: &quot;{Var1}&quot; 


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

.. csv-table:: 
   :header: "Control Type","Description"
   :widths: 40,60

   "String", "Text des Funktionsknopfes"
   "Date", "Text des Funktionsknopfes"
   "Integer", "Text des Funktionsknopfes"
   "Big integer", "Text des Funktionsknopfes"
   "Float", "Text des Funktionsknopfes"
   "Multilanguage Text", "Text des Funktionsknopfes"
   "Checkbox", "Text des Funktionsknopfes"
   "Data list", "Text des Funktionsknopfes"
   "Config. list", "Text des Funktionsknopfes"
   "SQL list", "Text des Funktionsknopfes"
   "File", "Text des Funktionsknopfes"
   "Object reference", "Text des Funktionsknopfes"
   "Active Directory User", "Text des Funktionsknopfes"
   "Active Directory Group", "Text des Funktionsknopfes"
   "Packaging package name", "Text des Funktionsknopfes"
   "Packaging operation system", "Text des Funktionsknopfes"
   "Packaging site", "Text des Funktionsknopfes"





************************************************************************************
Lists
************************************************************************************