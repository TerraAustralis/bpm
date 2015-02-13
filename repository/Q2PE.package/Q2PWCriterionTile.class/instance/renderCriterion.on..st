as yet unclassified
renderCriterion: aCriterion on: html
  
   html text: aCriterion class name.

   aCriterion isMulti ifTrue: [
      html unorderedList: [
	       self renderSubCriteriaOf: aCriterion on: html ] ]