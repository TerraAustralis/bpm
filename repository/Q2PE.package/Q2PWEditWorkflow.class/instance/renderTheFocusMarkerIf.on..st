as yet unclassified
renderTheFocusMarkerIf: selected on: html
 
	html div 
		id: ('list-marker', (selected ifTrue:[''] ifFalse:['-not']));
	 	style: 'height: 20; width: 30';
		with: [ html html: 
		(selected
			ifTrue: [ '<font size="+2">&rArr;</font>' ] 
			ifFalse: ['<font size="+2">&nbsp;&nbsp;&nbsp;</font>']) ].