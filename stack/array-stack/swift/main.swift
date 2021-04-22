// ------------------------
// Stack: Array Tests
// ------------------------

let stack = ArrayStack()

// Push
stack.push("hello")
print("PUSHED: hello")

stack.push("world")
print("PUSHED: world")

stack.push(1.2)
print("PUSHED: 1.2")

stack.push(88)
print("PUSHED: 88")

// Peek
print("PEEK:", stack.peek())

// Description
print("Stack:", stack.description)

// Pop
print("POPED:", stack.pop())
print("POPED:", stack.pop())
print("POPED:", stack.pop())
print("POPED:", stack.pop())
print("POPED:", stack.pop())

// Peek on empty
print("Peeked:", stack.peek())

// Push on empty
stack.push("King")
print("Pushed: King")

// Description
print("Stack:",stack.description)

