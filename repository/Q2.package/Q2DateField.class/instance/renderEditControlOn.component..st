rendering
renderEditControlOn: html component: fieldComponent
  html
    datePicker: Q2DefaultResources / Q2Object settings calendarImage
    config: ''
    value: fieldComponent getCache
    callback: [ :value | fieldComponent setCache: value ]