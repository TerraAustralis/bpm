I'm a task based testcase. You can build your tests from simple tasks (actually blocks) which can have their own names. When you're running the tests, I'll show you nice progress bars to see how they are going on.
To use me, simply subclass me and add test methods (methods with name starting with "test").
Every test has it's own name which is held in my testName variable. If you don't set it i'll use generate a name from the test function. Test names can be useful sometimes. :)

Example test method:

testFoo
	self
		addTask: [ 1 asSeconds asDelay wait ] named: 'waiting';
		go
---

Test method with non-default testName:

testBar
	testName := 'A test called bar.'.
	self 
		addTask: [ Transcript show: 'bar was here' ] named: 'signature';
		go
---

Don't forget to call go in your testcases or else nothing will happen.
Tasks are blocks which can hold a reference to your variables, take care.
Don't forget to call super setUp/tearDown if you write your own!