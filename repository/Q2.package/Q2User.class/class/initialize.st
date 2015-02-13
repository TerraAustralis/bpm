class initialization
initialize

	"self initialize"

	self initializeForms.
	EditForm := Q2StaticForm named: 'User'.
	EditForm label: 'User'.
	EditForm newText label: 'Username'; withSelector: #username; readOnly: true; small; maxLength: 30; description: 'Your unique handle used to login to the system.'.
	EditForm newPassword label: 'Password'; withSelector: #password; small; maxLength: 30; description: 'Your password to login to the system.'.
	EditForm newTextList readOnly: true; label: 'Accessible processes'; withSelector: #processes; description: 'All the processes that you have access to.'.
	EditForm newTextList readOnly: true; label: 'Categories'; withSelector: #categories; description: 'All the categories that you belong to.'