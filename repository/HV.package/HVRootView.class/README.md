A HVRootView is a view object that is plugged into Komanche. It holds the model and it is the first entrypoint of a web application. The method #process: is called with a HttpRequest as an argument and Komanche expects a HttpResponse being returned.

The root view typically instantiates a transient view object on the model, put the request into the view and then sends #dispatch to it.

Eventually it will return a result object that is transformed into an HttpResponse.

Simple applications typically don't subclass HVRootView, instead an instance is created when the application is started, see for example HVHttpView class>>startOn:.