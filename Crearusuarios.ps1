$file_users=Import-Csv -Path Usuarios.csv
foreach ($user in $file_users) {
$clave=ConvertTo-SecureString $user.password -AsPlainText -Force
	New-LocalUser $user.cuenta -Password $clave -Fullname $user.nombreapellidos -Description $user.descripcion -AccountNeverExpires
	Set-LocalUser $user.cuenta -PasswordNeverExpires $false
	net user $user.cuenta /logonpasswordchg:yes
	Add-LocalGroupMember -Group Usuarios -Member $user.cuenta
	Add-LocalgroupMember -Group $user.grupo -Member $user.cuenta
}