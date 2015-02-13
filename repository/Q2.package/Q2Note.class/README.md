A note added to a case or as a reply to an existing note. If it is a reply then parent refers to the note it is a reply to.
The author is either a user or a person.  The actual note has a subject line and a text, both Strings.
We also keep track of the timestamp when the note came into the system.

After reading around on how other systems deal with this there are two conclusions:

1. Threading is hard. Jamie Zawinski (former Netscape dev) describes it great detail: http://www.jwz.org/doc/threading.html
2. Most tend to simply embed an identifier in the subject line.

Since are short on time we should probably go for #2. We could possibly bother to generate the In-Reply-To and References headers correctly though.
Having an established "syntax" for referencing cases textually is good - perhaps like: [#<id>]

That would give us ids like: [#12123] or [#peal124] (case created in an offline mirror has an alphabetic prefix)

It is preferrable if the syntax has an easily parseable start and end ("[" and "]") and the hash mark makes the syntax unique enough to remove any accidental references.
In order to also be able to find a previous parent note - we need a note id relative to the case (number is fine) and to add that to the syntax:

	[#<case id>:<note number>]

If no note number is present just add it as a note to the case.

If a case id or a given note number can't be found (should not happen unless there is something wrong or if a user hand edits the subject line) we log it as an alert.

Roundup has an interesting concept called "nosy list": http://zesty.ca/sc-roundup.html#discuss   and   http://zesty.ca/roundup.html