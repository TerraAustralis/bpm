A HVUrlStream is a PositionableStream on a URL path.
We could just use a ReadStream on the path itself - but this way both the url and the stream on the path is kept together in one unit. We can also add some special behavior.
