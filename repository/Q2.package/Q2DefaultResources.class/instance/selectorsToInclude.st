accessing
selectorsToInclude
  ^ super selectorsToInclude
    ,
      #(#'calendarCss' #'calendarJs' #'calendarSetupJs' #'calendarEnJs' #'notesCss' #'behaviourJs' #'boxoverJs')