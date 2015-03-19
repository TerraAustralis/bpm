as yet unclassified
test5

	self assert: ((self swikify: '_bold_ _*a_file_with_underscores*_') = '<html><head></head><body><p><b>bold</b> <b><a href="http://www.garble.com/a_file_with_underscores">a_file_with_underscores</a></b></p></body></html>')