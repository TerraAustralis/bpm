accessing
exposedDataSelectors
  ^ super exposedDataSelectors
    addAll: #(#'name' #'searchString');
    yourself