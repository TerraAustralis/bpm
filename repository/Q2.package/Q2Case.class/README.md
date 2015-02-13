A case to be tracked. Cases have a local collection of all transactions that have affected the case.

name - a serial integer (as String) assigned when created. Mirrors have their own local counter so they include an alphabetical prefic. The master server has no prefix. The name is immutable and guaranteed unique.
subject - a oneline String.
description - a multiline String.
stage - the current Q2WorkflowStage that the case is in. This is the only container of cases.
notebook - the object holding the hierarchy of notes on the case.
forms - all added Q2Forms so far.
fieldValues - all values for the fields in the forms.
links - all links to other cases.
attachments - all attachments to this case.
reporter - the reporter role. Optimization since roles has them all.
responsible - the responsible role. Optimization since roles has them all.
source - the source role. Optimization since roles has them all.
roles - all roles on the case, including the three above.
origin - a symbol showing how the case was created.
transactions - a local log (sequenceable collection) of all transactions affecting this case