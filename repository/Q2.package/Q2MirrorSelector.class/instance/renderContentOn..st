render
renderContentOn: html 

	html heading: label.
	mirrors ifEmpty: [
		html paragraph: [html text: 'No mirrors available on server for ', username]]
		ifNotEmpty: [
			html form with: [
				html label: 'Mirrors available for user ', username field: [:id |
						html select
							id: id;
							size: 1;
							list: mirrors;
							selected: selectedMirror;
							callback: [:value | selectedMirror := prefixes at: (mirrors indexOf: value)].
						html submitButton callback: [ self download ]; text: 'Download']
					tooltip: 'Select mirror to download']].

	"html anchor callback: [ self answer ]; with: 'Back'"