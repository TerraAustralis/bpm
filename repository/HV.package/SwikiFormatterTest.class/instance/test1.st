as yet unclassified
test1

	self assert: ((self swikify: '!Heading1
A line after that with cr.
A <b>bold</b> word.
Another _bold_ word.
!!Heading2
A paragraph.
With a line break in it.

|
And a horizontal ruler above this paragraph.

!!!Heading3
Another paragraph. <html><pre>Don''t touch this.
No line breaking.</pre></html> End of paragraph.
') = '<html><head></head><body><h1>Heading1</h1><p>A line after that with cr.<br />A <b>bold</b> word.<br />Another <b>bold</b> word.</p><h2>Heading2</h2><p>A paragraph.<br />With a line break in it.</p><hr /><p>And a horizontal ruler above this paragraph.</p><h3>Heading3</h3><p>Another paragraph. <pre>Don''t touch this.
No line breaking.</pre> End of paragraph.</p><br /></body></html>')