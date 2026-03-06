# Startup-UserOnboarding.ps1
# Usage: Creates a user in the correct Organizational Unit (OU) with specific groups

$UserName = "J.Doe"
$Department = "Engineering" # Options: Engineering, Marketing, Finance
$Password = ConvertTo-SecureString "InitialTempPass123!" -AsPlainText -Force

# 1. Create the User
New-ADUser -Name $UserName -Path "OU=$Department,DC=Startup,DC=local" `
           -AccountPassword $Password -ChangePasswordAtLogon $true -Enabled $true

# 2. Assign to Departmental Security Group
Add-ADGroupMember -Identity "$Department-Internal-Access" -Members $UserName

Write-Host "[+] User $UserName created and assigned to $Department security group." -ForegroundColor Green
