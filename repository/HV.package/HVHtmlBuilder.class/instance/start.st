html
start
	"Start the HTML page, by default we just add the title
	and make it XHTML etc."

	document headDo: [ self tag: 'title' do: view title]