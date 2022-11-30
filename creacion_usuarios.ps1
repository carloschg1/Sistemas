$file_users=Import-Csv -Path empleados.csv 
foreach ($user in $file_users) { 
  $clave=ConvertTo-SecureString $user.password -AsPlainText -Force
  New-LocalUser $user.cuenta -Password $clave -FullName $user.nombre_apellido -Description $user.descripcion -AccountNeverExpires  
  #AÃ±adimos la cuenta de usuario en el grupo de Usuarios del sistema
  Add-LocalGroupMember -Group $user.departamentos -Member $user.cuenta 
  Add-LocalGroupMember -Group Usuarios -Member $user.cuenta 
}