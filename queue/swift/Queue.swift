class Node {
	var data: Any
	var next: Node?
	init(_ data: Any) {
		self.data = data
	}
}

class Queue {
	var first: Node?
	var last: Node?
	var length = 0
	var isEmpty: Bool { length == 0 }

	var description: String {
		if isEmpty { return "[]" }

		var temp = first
		var string = "["

		for i in 1...length {
			string.append("\(temp!.data)")
			temp = temp!.next
			if i != length { string.append(",") }
		}
		string.append("]")
		return string
	}
	var peek: Any? { first?.data }

	func enqueue(_ data: Any) {
		if first == nil {
			first = Node(data)
			last = first
		}
		else {
			var temp = first
			while temp!.next != nil {
				temp = temp!.next
			}
			last = Node(data)
			temp!.next = last
		}
		length += 1
	}

	func dequeue() -> Any? {
		// return data unless empty
		if first == nil {
			return nil
		}
		let removedNode = first
		first = first?.next
		length -= 1
		if isEmpty {
			last = nil
		}
		return removedNode?.data
	}
}