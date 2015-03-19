as yet unclassified
test6

	self assert: ((self swikify: '-One
-Two
--Nested one with a *link* and an && and a ** (star)
--Nested two with two <b>bold</b> _words_
---Deep down one
-Three

#Uno
#Dos
#Tres
') = '<html><head></head><body><ul><li>One</li><li>Two</li><ul><li>Nested one with a <a href="http://www.garble.com/link">link</a> and an &amp; and a * (star)</li><li>Nested two with two <b>bold</b> <b>words</b></li><ul><li>Deep down one</li></ul></ul><li>Three</li></ul><ol><li>Uno</li><li>Dos</li><li>Tres</li></ol><br /></body></html>')