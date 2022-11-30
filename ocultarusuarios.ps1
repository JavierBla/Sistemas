$file_users=Import-Csv -Path TodosUsuarios.csv
foreach ($users in $file_users) {
	REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /V $users.cuenta /T REG_DWORD /D 0
}