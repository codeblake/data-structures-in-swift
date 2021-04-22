// -----------
// Queue Tests
// -----------

let q = Queue()

q.enqueue("hello")
print("First:", q.first?.data ?? "NONE")

q.enqueue("world")
print("Last:",q.last?.data ?? "NONE")

q.enqueue("2021")
print("Last:",q.last?.data ?? "NONE")

print("Stack:",q.description)

print("Peek:",q.peek ?? "NONE")

if let node = q.dequeue() {
	print("Removed:", node)
}

print("Queue:",q.description)

print("isEmpty?:",q.isEmpty)

print("Peek:",q.peek ?? "NONE")

if let node = q.dequeue() {
	print("Removed:", node)
}

print("Queue:",q.description)
print("Peek",q.peek ?? "NONE")

if let node = q.dequeue() {
	print("Removed:", node)
}

print("isEmpty:",q.isEmpty)
print("Last:",q.last?.data ?? "NONE")