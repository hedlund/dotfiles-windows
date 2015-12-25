# Entry-point script to run all the installation scripts...

$ScriptPath = Split-Path $MyInvocation.InvocationName

& "$ScriptPath/install-choco.ps1"
& "$ScriptPath/install-gvm.ps1"
& "$ScriptPath/install-npm.ps1"
& "$ScriptPath/install-apm.ps1"
