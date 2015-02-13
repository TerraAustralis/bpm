render
renderPermissionOn: html 
	"Show permissions for the selected process."

	html heading level2; with: 'My permissions'.
	html image  "width: '100%';" document: permissionsGraph document; tooltip: Q2ProcessPermissionsGraph tooltip.