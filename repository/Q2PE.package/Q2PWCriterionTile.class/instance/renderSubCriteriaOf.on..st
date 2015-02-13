as yet unclassified
renderSubCriteriaOf: aMultiCriteria on: html

 	aMultiCriteria criteria do: [ :each |
      html listItem
         passenger: each;
         with: [ self renderCriterion: each on: html ] ]