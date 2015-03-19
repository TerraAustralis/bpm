simple messages
serverError: aString 
	HVResponseNotification 
		signal: (((self builder)
				start;
				h1: 'Error';
				p: 'Returned by server: <b>' , aString , '</b>';
				end;
				yourself) asHttpResponseTo: request)