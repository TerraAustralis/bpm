roles
removeRole: aRole
	"Remove the role for all users."

	roles := roles reject: [:ass | ass value = aRole ]