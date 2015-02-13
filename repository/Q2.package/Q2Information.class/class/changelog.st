as yet unclassified
changelog

	^'_20060330, Dragon release: Able to handle ISS process and processes from Tangix_
-Automatic assignment of responsible.
-Added multiple "new" stages using isNew:.
-Added gatekeepers on stages for automatic responsible transfer.
-Handles entering source (single select of persons by part of name) using Ajax style completion.
-Handle at least single and multiselect in list fields.
-Implement custom objects (be able to add fields to forms with a custom object type as value domain)
-Deal with To: and CC: when creating case (not when adding note). It should create roles "Alerted" and "Interested".
-Add "admin console", both for process and admin users.
-Attachments in web UI (add/delete on case when creating or editing)
-Autocreate persons when creating cases. Try to pick name from email.
-Also search persons (when no hit) based on secondary email.
-Name/username confusion? (fixed: Q2User>>name == username) Q2Person>>name == first name)
-Implement creating cases using email. Map a To: address to a specific Q2Process and Q2Case prototype in that Q2Process to clone and then enter subject, description, reporter and attachments into.
-Add notes using email
-Notes sent as email needs an identifier somewhere to identify what it is a "reply to" (either a case or an existing note on a case).
-Add a list of POP3 accounts to Q2Model that it polls regularly.
-Implement attachments (when creating case in web or via email, add afterwards via web, delete via web, new attachment sent in via note emails)
-Encapsulate the actual storage of attachments in a separate object (Q2AttachmentStore)
-Store using original filename in a structure like: [path to attachments]/[case id]/[attachment filename]
-Keep all attachments to a case "in the same place":
--Attachments made using notes via email end up in the same "central list" for the case and are held in the insvar #attachments in Q2Case. 
--This means Q2Case refers to all attachments and Q2Note refers to the attachments it created. In the web UI we list them in both places.
-...more coming....
|
_20060228, Turtle release: Possible to process simplest form of case_
-Handles wrong password.
-Handles password reminders via email (sends in clear text, keeping it simple)
-Enabled "local transactions" in trackable objects.
-Added more personal settings tabs with name, phone, email etc. See page 11-12 in design document.
-Show software versions of major components in System Information page.
-Show changelog in System Information page, both full and current release.
-Show stage in case table.
-Sets reporter role to current user when creating case.
-Fixed add/remove of forms to be much smarter regarding selection.
-When adding a form it becomes the active tab.
-Adding form and not entering data caused error, fixed. 
-Added "Not implemented yet" for empty TOC entries.
-Show current stage readonly in "Case basics"
-Added ability to "transition" a case to another stage using available transitions.
-Added reporter role visible in edit/view case and case table.
-Added generation of Graphviz graphs for the workflow in general.
-Added generation of Graphviz graph for a specific case.
-Fixed caching logic for case workflow graphs.
-Added Processes under help section in TOC.
-Implemented rudimentary filtering when creating personal mirrors.
-Added mechanism for exit and entry criteria, especially mandatory forms on exit.
'