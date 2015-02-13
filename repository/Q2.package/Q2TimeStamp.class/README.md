I represent a point in the flow of time (date and time).

Code examples:

| user |
user := Q2User name: 'Miki'.
user timeStringFor: Q2TimeStamp now. "inspect or print it"

| time date timeStamp |
time := Time now.
date := Date today.
timeStamp := Q2TimeStamp date: date time: time.
timeStamp asDateAndTimeString. "inspect or print it"

| timeStamp |
timeStamp := Q2TimeStamp now.
(Q2TimeStamp fromAbsoluteSeconds: timeStamp asInteger) asInteger = 
timeStamp asInteger "should evaluate to true"

