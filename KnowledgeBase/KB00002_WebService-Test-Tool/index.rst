KB00002 - Testing the SIM Web Service Test Tool
================================================

.. contents:: *In this article:*
  :local:
  :depth: 1

----------


There is a command line tool which enables administrators to perform an easy test without any knowledge about HTTP web service technology.


Downloading Web Service Test Tool
++++++++++++++++++++++++++++++++++++

- `Command line test-tool <http://www.silvermonkey.net/DL/WebServiceTestCmdLine.zip>`_ download.
- `GUI test-tool <http://www.silvermonkey.net/DL/SIM_v5_WebServiceTest_GUI_1.0.zip>`_ download.


Extracting Content
++++++++++++++++++++++++++++++++++++
Extracting the content of the ZIP:

.. image:: _static/Folder1.png

The sample XML file will create a simple computer with one variable:

.. literalinclude:: _static/sample.xml


Editing start.cmd File 
++++++++++++++++++++++++++++++++++++
The start.cmd file is meant to be an example of how to start the web service test tool.

An example for the command line could be: 

.. code-block:: console
    
    WebServiceTestCmdLine.exe /XMLFilePath:"C:\temp\sample.xml" /WebServiceURL:"http://webserver/sim/servicelogin/service.aspx" /Var1:"01"

Running the command results in a log file written beside the EXE:

.. literalinclude:: _static/Log.txt

.. tip:: The Parameters /Var1 to /Var5 are optional and are used to replace corresponding {Var1} to {Var5} template variables in the XMLFile.