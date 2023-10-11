

#$cred = get-credential
$username = 'xxxx'
$password = 'xxxx'

$secpw = ConvertTo-SecureString $password -AsPlainText -Force
$cred  = New-Object Management.Automation.PSCredential ($username, $secpw)
$script_block1 = {$PSSenderInfo.ConnectedUser};

$myvar = Invoke-Command -ComputerName win11 -file "D:\projekte\powershell\remote_ini.ps1" -ArgumentList "Client" -Credential $cred

#$myvar = Invoke-Command -ComputerName win11 -ScriptBlock $script_block1 -Credential $cred
echo $myvar