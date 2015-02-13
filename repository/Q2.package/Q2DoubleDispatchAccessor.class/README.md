My instances accessing a target's value by sending two consequent messages with designated selectors.

read value:
(target perform: selector) perform: selector2

storing value:
(target perform: selector) perform: (selector2 ,':') with: value
