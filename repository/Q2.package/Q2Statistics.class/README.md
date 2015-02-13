Main class for managaging computation/storage/display of case use statistics.
See Q2StatiticsCalculator class comment for description of statistics computed.
See also document named statsArticle.

Classes used:

	Q2MockStatsSession
Used to fake a gjallar session to allow stats related code to be tested quickly.  See class comment.

	Q2StatiticsCalculator:
Computes the actual statistics based on input parameters. See class comment for stats computed.
Can compute statistics for real transactions or mock transactions.  Mock transactions are generated
using a random number generator and can be generated very quickly.  Allows for easy auto testing.
See Q2MockStatsSession.

	Q2StatisticsCalculator
Computes statistics on issue transactions on the cases of a set of processes.  See class comment.
Invoked using method: #computeCaseStatsFrom:to:

	Q2ProcessStatisticsCalculator
Computes statistics on issue transactions on the cases of a single process.
Invoked using method: #computeCaseStatsForProcess:.

	Q2CaseStatisticsCalculator
Computes statistics for a single case for a set of transactions that have occurs during some time interval.
Invoked using method #computCaseStats.
Used by Q2ProcessStatisticsCalculator.

	Q2StatisticsView
Responsible for displaying the statistics page.

	Q2StatisticsSetupGUI
Responsible for displaying the portion of the statistics
page that allows the user to select the
process and the resolution (daily, weekly, and monthly).