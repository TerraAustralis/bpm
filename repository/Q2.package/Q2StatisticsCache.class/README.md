My instance is a global object holding all kinds of statistics.
Generally, for retreiving stats of particular kind, you just do:
model stats statsFor: #casesPerDay,
or maybe even shorter:
model statsFor: #casesPerDay

Also, a simple symbol is enough to differentiate from kinds of statistics.
In addition, we can use more useful objects as kind (like filter class name, or class itself).
Then Filter class can be useful in describing what this kind we holding and at same time we can use filter 
for updating statistics of given kind