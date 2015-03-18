initialize-release
initializeUserCentral
  | responsibleCases f newCases |
  userCentral := Q2UserCentral new.
  f := Q2QueryFilter named: 'My cases'.
  f newOwnerPredicate value: self.
  f newStatusPredicate
    value:
      {#'new'.
      #'open'}.
  responsibleCases := Q2CasePanel named: 'My open cases'.
  responsibleCases
    filter: f;
    description: 'The open cases I currently own.'.
  userCentral addCasePanel: responsibleCases.
  f := Q2QueryFilter named: 'New cases'.
  f newStatusPredicate value: {#'new'}.
  newCases := Q2CasePanel named: 'New cases'.
  newCases
    filter: f;
    description: 'All new cases in all processes I have access to.'.
  userCentral addCasePanel: newCases