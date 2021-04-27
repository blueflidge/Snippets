# Soll auf Groﬂschreibweise konvertiert werden, so ist Tolower() urch ToUpper() zu ersetzen 
#
# Get all the users in certain OU
foreach ($user in (Get-ADUser -SearchBase "OU=users,DC=contoso,DC=com" -filter * -property displayname, givenname, surname, cn, samaccountname, userprincipalname, Name, description, office)) {
# Change displayname
#$newdisplay = $user.displayname.Tolower()
# Change givenname
#$newgiven = $user.givenname.Tolower()
# Change surname
#$newsurn = $user.surname.Tolower()
# Change SAM
$newsam = $user.samaccountname.Tolower()
# Change UPN
$newupn = $user.userprincipalname.Tolower()
# Change name
#$newname = $user.name.Tolower()
# Change Description
#$newdesc = $user.description.Tolower()
# Change Office
#$newoffice = $user.office.Tolower()


#Set new values
#Set-ADUser -identity "$user" -description $newdesc
#Set-ADUser -identity "$user" -office $newoffice
#Set-ADUser -identity "$user" -displayname $newdisplay
#Set-ADUser -identity "$user" -givenname $newgiven
#Set-ADUser -identity "$user" -surname $newsurn
Set-ADUser -identity "$user" -samaccountname $newsam
Set-ADUser -identity "$user" -userprincipalname $newupn
#Rename-adobject -identity "$user" -newname $newname
}