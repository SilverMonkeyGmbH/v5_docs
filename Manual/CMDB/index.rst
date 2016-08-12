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



************************************************************************************
Lists
************************************************************************************