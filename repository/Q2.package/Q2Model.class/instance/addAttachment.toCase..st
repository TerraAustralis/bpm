transactions
addAttachment: attachment toCase: aCase

	self applyTxn: (Q2AddAttachmentTxn case: aCase attachment: attachment)