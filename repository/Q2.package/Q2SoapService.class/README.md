A simple standalone singleton SOAP service component exposing access to the Q2Model.
All methods in "soap services" are registered as standard SOAP services. Start/stop with:

	Q2SoapService default start    (or stop)

Q2Object callServer: #'Q2ExternalIssueTrackerPlugIn_ping' asSymbol with: {}.
"Identical to"
Q2Object callServer: 'Q2ExternalIssueTrackerPlugIn_ping' with: {} on: 'localhost' port: 8823 uri: ''.

Q2Object callServer: 'ping' with: {} on: 'localhost' port: 8080 uri: 'QlogService/services/QlogWebService'.
