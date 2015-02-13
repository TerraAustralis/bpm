See also the methods which access my class name.

In order to test the statistics generation code and the code for displaying the statistics 
it is necessary to have a set of processes containing cases containing transactions etc.  
But generating a set of real processes and corresponding cases and transactions is slow 
and then analying them is also slow in both situations because the database must be used extensively.
To make testing easier, instances of a set of mock classes are used (defined in this class category)
which avoids using the database.  This is MUCH MUCH faster.
Note that mock processes contain mock cases which contain mock transactions and mock stages.

A collection of mock objects are generated using a random number generator 
and a set of parameters to control the properties of the objects created
(see method categories 'loading stats', 'processes', and 'stages').
The processes thus generated are stored in my class instance variable  "processes".
Currently only one process is generated/stored.

Mock objects are used instead of real objects as follows:
Class Q2Session has a class variable StatisticsSessionClass which stores either the Q2Session or me (the class).
When the message #processesOf: is sent to Q2Session the object in variable StatisticsSessionClass is accessed to get the processes.
If the Q2Session is stored in StatisticsSessionClass then the real processes are returned.
But if I am stored in StatisticsSessionClass then the set of mock processes stored in my class variable "processes" is returned.

Another advantage of generating mock objects is that it 
allows for constructing autotests for verifying that stats generation is correct.
A problem with generating stats is that errors tend to cause invalid results which may not be noticed.  
To address this problem,  stats generation can be done using two different algorithms
and the results compared for consistancy.  

The methods in category  'run tests'  generate mock data, run both stats generating agorithms on
the data, compare the results, and report any errors.  Thus tests may be run on large data sets quickly
providing a high level of confidence that the algorithms are error free.

Other class variables:
rng: a random number generator
dailyStatsHolders:  holds the daily based statistics once they are generated.
weeklyStatsHolders:  Not currently used.
monthlyStatsHolders: Not currently used.