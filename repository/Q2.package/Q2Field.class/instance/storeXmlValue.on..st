value and cache
storeXmlValue: aValue on: aXMLWriter 
	aXMLWriter pcData: (self formatValueFrom: aValue).