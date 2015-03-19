A HVHttpView is a web user interface - it is an object that handles a HttpRequest and returns a result.

A view has a domain object as a model, and thus the HVHttpView hierarchy often typically mirrors the domain class hierarchy. It also has a reference to it's parent view which ultimately is a HVRootView.

A view is instantiated for every request which means that it does not have to care about multiple Processes (each view instance is only used by one Process - the one started to serve the request) - but since the model can be shared with other views either the model needs to care or the views needs to serialize their access to the model.

The HVRootView is not instantiated for every request - it represents the web application itself that is plugged into Komanche - so it must be written Process safe.

A view holds a reference to the request - 'req' - which it is given upon instantiation. Most of the interaction with the request is done easier through the use of an HVHtmlBuilder which has a lot of support for handling HTML Forms.

Based on the url the framework will call the method with the same name. These methods are kept by convention in the 'urls' category. If no method name is given in the url the default method #default is called. The methods should return something responds to #asHttpResponseTo:. The root view sends this message to the object returned and returns the result to Komanche which expects an HttpResponse.

String implements #asHttpResponseTo: so the simplest would be to just return a String with HTML in it. A better approach would be to use an HVHtmlBuilder. Look at the sample applications.

Finally HVHttpView includes some simple facilities for keeping track of the user and the current user account.