form values
removeValueWithForm: aForm
  ^ formValues
    remove:
      (formValues
        detect: [ :fv | aForm = fv form ]
        ifNone: [ self error: 'form to remove not found' ])