'On Error Resume Next

strComputer = "localhost"
strUserName = ""
strPassword = ""
strSiteCode = "SIM"

wscript.echo "Connecting to """ & strComputer & """..."

Set objSWbemLocator = CreateObject("WbemScripting.SWbemLocator") 
Set objWMIService = objSWbemLocator.ConnectServer(strComputer, "root\SMS\Site_" + strSiteCode, strUserName, strPassword)

Set colItems = objWMIService.ExecQuery("SELECT SiteName FROM SMS_Site",,48)
For Each objItem in colItems

    Wscript.Echo "SiteName: " & objItem.SiteName
Next