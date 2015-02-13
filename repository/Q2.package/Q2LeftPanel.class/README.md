This is the left side table of contents component and it acts as the "top" component in Gjallar, even though compositionally Q2Main is the logical top. As the "top" it is used a bit for inter component communication.

We should probably try to get away from this and use Announcements instead for inter-component communication btw. And or explore the application concept in Seaside - I haven't really looked into that yet.

There are two methods of special interest; loggedInNavigation and loggedOutNavigation. These methods build the menu for the user which is an instance of Q2Navigation.