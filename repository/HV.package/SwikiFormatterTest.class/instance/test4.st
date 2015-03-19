as yet unclassified
test4

	self assert: ((self swikify: 'An asterisk: **, an underscore: __, a less than: <<, a more than: >> and an amp: &&') = '<html><head></head><body><p>An asterisk: *, an underscore: _, a less than: &lt;, a more than: &gt; and an amp: &amp;</p></body></html>')