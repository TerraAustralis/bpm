instance creation
values: anArray
  | co |
  co := self new.
  co copyFrom: anArray.
  ^ co