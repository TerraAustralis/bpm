as yet unclassified
renderTabDefaultHeaderOn: html for: containedComponent selected: selected
  | label |
  label := self labelFor: containedComponent.
  html anchor
    url: 'javascript:void(0)';
    onClick:
        (html prototype updater
            id: self contentId;
            callback: [ :render | self selectAndUpdate: label on: render ];
            triggerForm: self formId);
    with: label	"		callback: [ self select: containedComponent label ];
			submitFormNamed: self editor formId;	"