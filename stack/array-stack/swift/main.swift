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
if let data = stack.peek {
	print("PEEK:", data)
} else {
	print("Stack is empty. Nothing to peek!")
}

// Description
print("Stack:", stack.description)

// Pop
if let data = stack.pop() {
	print("POPED:",data)
} else { print("Nothing to pop!") }

if let data = stack.pop() {
	print("POPED:",data)
} else { print("Nothing to pop!") }

if let data = stack.pop() {
	print("POPED:",data)
} else { print("Nothing to pop!") }

if let data = stack.pop() {
	print("POPED:",data)
} else { print("Nothing to pop!") }

if let data = stack.pop() {
	print("POPED:",data)
} else { print("Nothing to pop!") }

// Peek on empty
if let data = stack.peek {
	print("PEEK:", data)
} else {
	print("Stack is empty. Nothing to peek!")
}

// Push on empty
stack.push("King")
print("Pushed: King")

// Description
print("Stack:",stack.description)
