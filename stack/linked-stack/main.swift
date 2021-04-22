// ------------------------
// Stack: Linked List Tests
// ------------------------

let stack = LinkedStack()

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
if let data = stack.peek() {
    print("PEEK:", data)
}

// Description
print("Stack:", stack.description)

// Pop
if let node = stack.pop() {
   print("POPED:", node.data)
}

if let node = stack.pop() {
   print("POPED:", node.data)
}

if let node = stack.pop() {
   print("POPED:", node.data)
}

if let node = stack.pop() {
   print("POPED:", node.data)
}

if let node = stack.pop() {
   print("POPED:", node.data)
} else {
    print("Nothing to pop!")
}

// Peek on empty
if let data = stack.peek() {
	print("Peeked:", data)
}

// Push on empty
stack.push("King")
print("Pushed: King")

// Description
print("Stack:",stack.description)
