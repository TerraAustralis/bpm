This is a minimal todo list web application.

The class side method #createModel is called once when the application is started. At that point a HVRootView is instantiated that holds the model and the root view is plugged into Komanche. This class is then instantiated for each request and has the root view as a parent.

This class implements a trivial initialize method in order to set the prefix and title of the webpage. It then implements two urls:

- The default page which shows the todolist and has a form for adding items and links for removing items.
- The removeitem page which is the method called when a remove link is clicked. It redirects back to the default page.

"Fire this app up on port 8080"
HVTodoListView start

"Stop it"
HVTodoListView stop
