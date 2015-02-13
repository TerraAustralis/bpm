as yet unclassified
byclass

^'function getElementsByClass(nm,node,tag) {
	var a = new Array();
	if ( node == null )
		node = document;
	if ( tag == null )
		tag = ''*'';
	var els = node.getElementsByTagName(tag);
	var elsLen = els.length;
	for (i = 0; i < elsLen; i++) {
		if (els.item(i).className.indexOf(nm) != -1)
			a.push(els.item(i));
	}
	return a;
}
'