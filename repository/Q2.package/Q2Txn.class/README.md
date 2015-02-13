A transaction is an atomic operation that moves the Q2Model (the database) from one state to the next.
Each transaction should have enough self contained data (simple objects and ids) to be able to re-perform the operation on demand. A transaction can be disconnected from the domain model using #disconnect, then typically serialized and transferred to another Gjallar system, and then reconnected using #reconnectIn: before being replayed using #apply.

All Q2Txn instances are created in methods (in category "transactions") in Q2Model so each actual modification of the Gjallar database should be represented by a method there.

Each transaction has a unique UUID (for #= etc) and a strictly increasing number which is assigned when the transaction is applied to the master server. When created in an offline system the timestampCreated is set and then when eventually being applied on the master the timestampApplied is set and from that point in time the transaction "officially exists".