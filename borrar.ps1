$usuarios=Import-Csv -Path empleados2.csv
foreach  ($user in $usuarios)
{
	Remove-LocalUser $user.cuenta
}

$grupos=Import-Csv -Path grupos2.csv
foreach  ($group in $grupos)
{  
	Remove-LocalGroup $group.nombre
}