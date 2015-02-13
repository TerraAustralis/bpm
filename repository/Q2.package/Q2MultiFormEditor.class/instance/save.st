actions
save
	"Save all tabs. This commits values into the formValue,
	not all the way to the target - we do that when applying the txn."

	editors do: [:c | c save].
	self answer: formValue