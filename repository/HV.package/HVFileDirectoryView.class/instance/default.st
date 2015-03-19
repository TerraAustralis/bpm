urls
default
	"Show the web page for uploading and deleting files."

	| b checkBoxes fn size deleteButton |
	"Create a HTML builder object."
	b := self builder. 
	
	"Start the page, add a heading level 1."
	b start; h1: 'Files'.
	
	"Start a multipart form with a POST url to the local view instance + '/upload'.
	This will make the POST go the method #upload in this class."
	b postFormMultiPartLocal: 'upload'. 

	"Add an input file field and a submit button with the text 'Upload'.
	In this case we don't care to hold onto the button, the POST goes to the
	#upload method anyways."
	b inputFile; submit: 'Upload'.

	"Add a break making it look better, ending the form and starting a new
	form with no url specified - this makes the POST go to this method by default."
	b br; endForm; postForm.

	"Create a table with 3 columns and specify the column labels."
	b columnsHeads: #('Choose' 'Filename' 'Size') do: [

		"Create a dictionary to hold the checkbox widgets for each file
		using the filename as the key."
		checkBoxes := Dictionary new.

		model entries do: [:e |
			"For all entries in the directory we pick out filename and size."
			fn := e first.
			size := e last.

			"Add a checkbox to the page and take the resulting widget
			and stuff it into the dictionary using the filename as key."
			checkBoxes at: fn put: b inputCheckbox.
	
			"#colTab moves to the next column in the table, there we add
			a link for each file that will point to the #file method in this class
			with the filename added at the end of the url. #colTab also
			automatically moves to the next row in the table."
			b colTab; linkLocal: 'file/', fn text: fn; colTab;
				html: size printString; colTab]].

	"Add a delete button with label."
	deleteButton := b submit: 'Delete selected files'.

	"End the form, add a horisontal ruler, a link to the source of this method
	and end the web page."
	b endForm; hr; srcLink; end.

	"Ok, if this was a POST of the second form the deleteButton will know it
	and the code will be run. We loop through all entries in the dictionary
	and depending on the #value of each checkbox we delete the file."
	deleteButton ifPressed: [
		checkBoxes keysAndValuesDo: [:name :box |
			box value ifTrue:[model deleteFileNamed: name]].

		"We have changed the model (deleted files) so instead of returning
		the page we just built above, because it contains rows for files
		that are now deleted - we issue a redirect causing a GET reload
		of this page."
		^b redirectToDefault].

	"Return the builder which will cause it to be converted to a HTTP response and thus
	have it render the page back to the user. The last thing HV does is to send #asHttpResponseTo:
	to the object returned from the page methods, see HVRootView>>process: which is the method
	called by Comanche."
	^b