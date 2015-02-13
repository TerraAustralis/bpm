I am at the heart of the mechanism to have a per session based translation.

I am a Notification signaled in String >> translated. 
I am catched in Q2Main >> start and Q2Session >> performRequest: from where I
resume with the current session's translator.

Many thanks to Brent Pinkney for the solution.