HVHtmlBuilder builds HTML pages and handles HTML Forms. It has a reference to the HVHttpView that created it (for various services) and to the request of that view.

Typical use is to instantiate it (HVHttpView has a method #builder which creates one), feed it "build messages" and then finally calling #render which will stream out the resulting HTML page. This is an example:

builder _ self builder.
builder start; h1: 'A heading'; postForm; inputText: #name; submit; endForm; end.
builder render

During the build some of the "build messages" return objects that can be used for input and output - typically objects representing Forms, Inputfields, Submit buttons etc. The messages #postForm, #inputText: and #submit all returned objects in the code above but the code chose to ignore them.

The contents message causes the builder to assemble the finished HTML document and return it as a String, but normally you just return the builder itself since HVHtmlBuilder also implements #asHttpResponseTo: which means that it can be returned as a result to Comanche from an 'url' method in a HVHttpView class. So you do not need to call #render and actually, in order to compose pages from multiple methods it is better if you do not call #render.

...

elements - An OrderedCollection holding all elements that constitute the page.
elementStack - An OrderedCollection acting as a stack for certain elements like for example forms.

