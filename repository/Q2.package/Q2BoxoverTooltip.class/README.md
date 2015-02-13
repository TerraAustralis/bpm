Trivial object representing the different attributes of a boxover tooltip. We use DNU to trap attributes, see http://boxover.swazz.org for available arguments.
This object can be used everywhere where you can send in a String as a tooltip so instead of this:

	html button: 'A button' tooltip: 'The tooltip'

You can do this:

	html button: 'A button' tooltip: (
		html tooltip body: 'The tooltip'; header: 'A tooltip header')

The first example does not use this object and will render the tooltip in a standard single line yellow style (see CSS class ttheader, ttbody). The second example uses this object and gives full freedom of tooltip design.