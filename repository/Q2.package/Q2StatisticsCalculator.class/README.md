This class computes statistics on issue transactions on the cases of a set of processes.
The stats computed are stored in a Q2ProcessStatisticsHolder which also does some final stats computations.
The rest of this comment is based on an email I (Ralph Boland) received from Goran.
For the time measurement only average is computed.  Min and Max not yet implemented.
The following statistics are computed.

1. Number of new cases created per day. This can not be created as just
taking number of new today - new yesterday (of course).

2. Number of cases opened per day (defined as the Set of cases that were
new at the beginning of the day and that at the end of the day are open
or closed).

3. Number of open cases per day (defined as #numberOfOpenCases). This
shows the "work load" - number of cases being worked on at this moment.

4. Number of cases closed per day (defined as the set of cases that were
new/open at the beginning of the day and that at the end of the day are
closed). This is of course important as a signal of efficiency.

5. Number of cases reopened per day (defined as the set of cases that
were closed at the beginning of the day and that at the end of the day
are open or new). This is a measurement of "mistakenly closed cases".
Some processes may choose to use closed stages as "proposals" that other
people may not agree with and thus reopen them. 
Other processes may perhaps not even allow this.



We also have time measurements, for all we measure average, min and max:  (NOTE:  min and max not yet implemented).

1. Time to open cases (for cases opened during day). Calculated from case creation.

2. Time to close cases (for cases closed during day). Calculated from case creation.

3. Time open (for cases closed during day). Calculated from first case opening.

4. Time to set responsible.   Calculated from case creation.

5. Time for resolution (for cases closed during day). Calculated from
first case opening to entering the "second last" stage (the stage before
it was moved to a closed stage). The idea is to presume that the stage
before the closing stage is a validation stage - is the case actually solved? 
And if the answer turns out to be yes, then it is moved to a closed stage.

6. Time for resolution validation. 
Time spent in second last stage (as described above).

