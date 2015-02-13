render
openAlarmEditorFor: alarm
	"Create an editor for a new alarm"
	editors at:alarm put:true
	"| editor |
	editor := Q2AlarmEditor parent: self.
	editors at:alarm put: editor.
	editor item: alarm."