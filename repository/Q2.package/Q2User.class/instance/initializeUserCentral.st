initialize-release
initializeUserCentral
  | ownerCases f responsibleCases |
  userCentral := Q2UserCentral new.
  f := self filterNamed: 'Owner filter'.
  ownerCases := Q2CasePanel named: 'My Stuff'.
  ownerCases
    filter: f;
    description: 'All cases I own.'.
  userCentral addCasePanel: ownerCases.
  f := self filterNamed: 'Responsible filter'.
  responsibleCases := Q2CasePanel named: 'My Tasks'.
  responsibleCases
    filter: f;
    description: 'All open cases that I am currently responsible for.'.
  userCentral addCasePanel: responsibleCases