net accounts /lockoutthreshold:4
net accounts /lockoutduration:90
net accounts /lockoutwindow:90

net accounts /minpwlen:8
net accounts /maxpwlen:15
net accounts /maxpwage:30

secedit /export /cfg c:\secpol.cfg
(gc C:\secpol.cfg).replace("PasswordComplexity = 0", "PasswordComplexity = 1") | Out-File C:\secpol.cfg
secedit /configure /db c:\windows\security\local.sdb /cfg c:\secpol.cfg /areas SECURITYPOLICY
rm -force c:\secpol.cfg -confirm:$false

net accounts