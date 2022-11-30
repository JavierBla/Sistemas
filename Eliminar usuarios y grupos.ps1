$file_users=Import-Csv -Path Usuarios.csv
foreach ($user in $file_users) {
	Remove-LocalUser $user.cuenta
}
$file_groups=Import-Csv -Path Grupos.csv
foreach ($group in $file_groups) {
	Remove-LocalGroup -Name $group.nombre
}