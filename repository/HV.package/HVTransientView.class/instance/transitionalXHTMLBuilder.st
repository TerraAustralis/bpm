html creation
transitionalXHTMLBuilder
	"Create a XHTML transitional builder with our own request."

	| b |
	b := HVHtmlBuilder request: request view: self.
	b 
		declaration: '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'.
	b document html attributeAt: #xmlns put: 'http://www.w3.org/1999/xhtml'.
	b
		attributeAt: #'http-equiv' put: 'Content-type';
		attributeAt: #content put: 'text/html; charset=UTF-8';
		headTag: #meta.
	^ b