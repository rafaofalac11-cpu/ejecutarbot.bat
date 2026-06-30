Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "java -jar " & Chr(34) & CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) & "\aquiles-client-1.0.0.jar" & Chr(34), 0, False
