transactions
performExtraTxnsFor: aFormValue
  "Let each field possibly perform txns separately."

  | image |
  image := aFormValue valueAt: self.
  image ifNotNil: [ self model addAttachment: image toCase: aFormValue target ]