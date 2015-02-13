The Q2FormEditor, Q2MultiFormEditor and Q2FormViewer do not operate directly on a domain object but instead use a Q2FormBuffer to hold the edited values which can then later be discarded or committed to the target (domain object) depending on what the user decides.

The buffer keeps track of the original values when a value is edited. It can also handle multiple forms when being used with Q2MultiFormEditor.

The target is normally set in instvar #target but a targetSelector can be used for indirect access.