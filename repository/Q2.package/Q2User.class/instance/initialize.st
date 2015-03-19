initialize-release
initialize
  | f |
  super initialize.
  canLogin := true.
  processes := OrderedCollection new.
  filters := OrderedCollection new.
  reportDefinitions := SortedCollection new.	"self initializeReportDefinitions."
  f := Q2QueryFilter named: 'Owner filter'.
  f newOwnerPredicate value: self.
  self addFilter: f.
  f := Q2QueryFilter named: 'Responsible filter'.
  f newResponsiblePredicate value: self.	"f newStatusPredicate value: #(#'new' #'open')."
  self addFilter: f.
  f := Q2QueryFilter named: 'Filter on stage'.
  f newStagePredicate.
  self addFilter: f.
  f := Q2QueryFilter named: 'Filter on status and process'.
  f newProcessPredicate.
  f newStagePredicate.
  f newStatusPredicate.
  self addFilter: f.
  defaultFilterStack := Q2FilterStack new.
  person := Q2Person user: self.
  settings := Q2UserSettings new.
  self initializeUserCentral.
  self clearSubscriptions