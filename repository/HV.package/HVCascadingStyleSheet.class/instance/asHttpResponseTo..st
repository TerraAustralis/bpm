as yet unclassified
asHttpResponseTo: request

	^HttpResponse new
		status: #ok;
		contentType: MIMEDocument contentTypeTextCSS;
		contents: (ReadStream on: string);
		yourself