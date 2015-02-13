as yet unclassified
updateContentOn: html

html strong: self stageOrTransition displayType, ' ' , self stageOrTransition displayString. 

html div
      style: 'float: left;';
      with: [ self renderCriteria: #enter titled: 'Entry' on: html ].
   html div
      style: 'float: left;';
      with: [ self renderCriteria: #exit  titled: 'Exit' on: html ].
    html div
      style: 'float: left;';
      with: [ self renderCriteria: #transitiion  titled: 'Transition' on: html ].
     html div
      style: 'float: left;';
      with: [ self renderCriteria: #menu  titled: 'Transition' on: html ].
 html div
      style: 'clear: both'.