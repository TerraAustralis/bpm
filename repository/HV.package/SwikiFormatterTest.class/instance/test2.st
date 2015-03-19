as yet unclassified
test2

	self assert: ((self swikify: 'A paragraph
That has a <b>bold</b> word and
two linebreaks in it.


!Before this heading 1 there should be one extra break
A paragraph after heading 1 and an & (ampersand).

Another paragraph after heading 1') = '<html><head></head><body><p>A paragraph<br />That has a <b>bold</b> word and<br />two linebreaks in it.</p><br /><h1>Before this heading 1 there should be one extra break</h1><p>A paragraph after heading 1 and an & (ampersand).</p><p>Another paragraph after heading 1</p></body></html>')