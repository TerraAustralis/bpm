rendering
renderResolutionSelection: html
	html heading level: 4; with: 'Resolution'.
"	html form: ["
	html div
		class: #field; 
		"tooltip:'Select a process for which statistics are to be computed and a pie chart drawn'; "
		with: [
			html div class: #statsResolution; with: [
				html select
					id: 'statsProcess';
					size: 1;
					selected: self resolutions first;
					list: self resolutions;
					on: #resolution of: self.
					].
			html break; break; break].