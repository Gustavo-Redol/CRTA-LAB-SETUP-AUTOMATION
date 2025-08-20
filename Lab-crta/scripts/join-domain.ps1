$domain = "lab.local"
$username = "$domain\Administrator"
$password = ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential($username, $password)

Add-Computer -DomainName $domain -Credential $cred -Force -Restart
