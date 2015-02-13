html
swikifyFor: component inApplication: appComponent
  | canvas |
  canvas := WAHtmlDocument new.
  appComponent swikify: source on: canvas.
  ^ canvas stream contents