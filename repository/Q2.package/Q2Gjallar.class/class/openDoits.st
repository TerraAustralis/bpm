readme
openDoits
	"self openDoits"

	(Workspace new contents:
'"Recreate the db with a single Process called Simple. No sample data loaded."
Q2Gjallar recreateSimpleDatabase

"Recreate the db with sample data loaded. Same as above but additionally loads sample data."
Q2Gjallar recreateTestDatabase

"Recreate the db with demo data loaded. At the time of writing we have 1-4 different demos, see Q2Model loadDemo1 etc for the code."
Q2Gjallar recreateDemoDatabase: 4

"Stop everything, clean image and restart/start Seaside/Scheduler etc."
Q2Gjallar startServer

"... then you can login to: http://localhost:8081/seaside/Gjallar"

"Stop everything and clean image, do not restart. Good before taking an image snapshot."
Q2Gjallar cleanImage

"Open up a log tool which is attached to Q2Log as an emitter. Very useful."
Q2LogMorph showMe

"For debugging it can be very useful to instruct Q2Log to bring up a debugger for errors."
Q2Log instance notifierMaxLevel: 3

"Check swiki for more info about the background services.
Only some are active and started by default. The services can also be controlled
from the web UI if you login as root (password ''goldfish'')."
Q2Scheduler stop
Q2Scheduler start
Q2Scheduler activateAllServices
Q2Scheduler activeServices
Q2Scheduler deactivateService: Q2PopService

"Unit tests, for day to day use - use true, otherwise they take a long time since they recreate the db. Open test runner, deselect all, filter on ''Q2*Tests'' and run all."
Q2ModelTestCase useMock: true

"Create default gjallar.ini file if missing on disk."
Q2Object loadOrCreateIniFile


')
	openLabel: 'Gjallar doits'.