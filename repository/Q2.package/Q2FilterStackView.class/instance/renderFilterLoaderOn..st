render
renderFilterLoaderOn: html
  | availableFilters |
  availableFilters := self currentUser availableFilters
    copyWithoutAll: stack filters.
  availableFilters
    ifEmpty: [ availableFilters addFirst: '<no more filters available>' ]
    ifNotEmpty: [ availableFilters addFirst: '<select filter to load...>' ].
  html
    label: 'Load filter'
    field: [ :id | 
      html select
        onChange: 'submit()';
        id: id;
        size: 1;
        list: availableFilters;
        selected: nil;
        callback: [ :filterToLoad | self loadFilter: filterToLoad ] ]
    tooltip: 'Load a filter to reduce the number of shown cases'