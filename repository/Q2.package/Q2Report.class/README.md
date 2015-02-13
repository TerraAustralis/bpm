To create a XML-report, you must have added a Q2ReportDefinition to a Q2Process. The Q2ReportDefinition is created for a specific subclass of Q2ReportSource. This subclass have some informations of itself, and knows have to pick specific items from a Q2Process.

The Q2Report is created from the Q2ReportDefinition.
First of all you should generate the report! (Q2Report>>generateReport)
Then you can use the report to display (and use) the fileName.

Conversion of the XML-report is done by cloning the convertToCsv method, and implement a new subclass to SAXHandler similar to the class Q2CSVReport.
Add the format name to the Q2Report class>>formats collection. The method name should be convertToXxx, hence the format name i Xxx.