# Instala AD DS
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# Promove para Domain Controller usando apenas parâmetros compatíveis
Install-ADDSForest `
    -DomainName "lab.local" `
    -SafeModeAdministratorPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) `
    -Force

