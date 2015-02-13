rendering
renderProcessSelection: html
	html heading level: 4; with: 'Process'.
"	html form: ["
	html div
		class: #field; 
		"tooltip:'Select a process for which statistics are to be computed and a pie chart drawn'; "
		with: [
			html div class: #control; with: [
				html select
					id: 'process';
					size: 1;
					selected: self processName;
					list: self processNames;
					on: #processName of: self.
					].
			html break; break; break].