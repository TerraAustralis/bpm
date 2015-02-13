as yet unclassified
fieldsetWithLegend: aLegend do: aBlock
  self
    fieldSet: [ 
      aLegend ifNotNil: [ self legend: aLegend ].
      aBlock value ]