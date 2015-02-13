A filter is a boolean expression of predicates where each predicate extracts an attribute from a Case and then applies a boolean function to that attribute, typically comparing it to a known value. An obvious predicate could be "aCase number = 0" where the attribute is the integer number of the case, the function is the equality comparison and the known value is 0.

If no specific boolean expression of the predicates is defined then it is by default considered to be conjunction sorted by predicate ranking:

	(p1 & (p2 & (p3)))

Filter are defined both globally (imported to processes), per process and per user.