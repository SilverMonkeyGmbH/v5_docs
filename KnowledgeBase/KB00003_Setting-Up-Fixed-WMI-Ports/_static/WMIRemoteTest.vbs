'On Error Resume Next

strComputer = "IPADDRESS"
strUserName = "DOMAIN\USER"
strPassword = "PASSWORD"

wscript.echo "Connecting to """ & strComputer & """..."

Set objSWbemLocator = CreateObject("WbemScripting.SWbemLocator") 
Set objWMIService = objSWbemLocator.ConnectServer(strComputer, "root\cimv2", strUserName, strPassword)

Set colItems = objWMIService.ExecQuery("Select * from Win32_ComputerSystem",,48)
For Each objItem in colItems

    Wscript.Echo "Domain: " & objItem.Domain
Next