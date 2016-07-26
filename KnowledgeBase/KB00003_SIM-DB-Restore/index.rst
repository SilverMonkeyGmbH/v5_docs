KB00002 - Set fixed WMI ports
=========================================

1. SCCM System für feste WMI Ports vorbereiten


1.1. Dynamic Port Allocation festlegen
http://support.microsoft.com/kb/154596/en-us
  .. image:: _static/image001.png

See :download:`Download Script <_static/RPC Ports.reg>`.
 
1.2. Port für Endpoint festlegen
Starten DCOMCNFG.EXE

  

 

1.3. WMI Modus umstellen
http://msdn.microsoft.com/en-us/library/bb219447(v=VS.85).aspx

To set up a fixed port for WMI
1.	At the command prompt, type winmgmt -standalonehost
2.	Stop the WMI service by typing the command net stop "Windows Management Instrumentation"
3.	Restart the WMI service again in a new service host by typing net start "Windows Management Instrumentation"
4.	4. Establish a new port number for the WMI service by typing netsh firewall add portopening TCP 24158 WMIFixedPort

1.4. Neustart
Bitte ein Neustart des Systems durchführen
1.5. Testscript 
Im Script IP/Benutzer/Passwort eintragen

.. tip:: 
    Es kann sein, dass ein DNS Name des Servers nicht funktioniert, weil bestimmte Kerberos Ports (z.B. Port 88) gesperrt sind. In diesem Fall bitte nur die IP Adresse des Zielsystems verwenden.

Zu erwartender Rückgabewert (Es muss die Domain ausgegeben werden):
