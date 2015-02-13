render
renderContentOn: html
	html form: [
		self renderFilterLoaderOn: html.
		self renderFiltersOn: html.
		html break; label: 'Text search' field: [:id |
			html textInput id: id;
				size: 40;
				on: #freetext of: stack.
			html space; button: 'Apply' callback: [self calculate] tooltip: 'Apply the free text search expression as a filter.'.
			html button: 'Clear' callback: [self clear] tooltip: 'Clear all filters.']
			tooltip: 'Enter one or more words to search for, you can also use AND, OR, NOT, () and wildcard *'.
		html div
			class: 'errorMessage';
			with: [ html text: stack freetextFilter errorMessage ] ]