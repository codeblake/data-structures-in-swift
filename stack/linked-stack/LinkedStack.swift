class LinkedStack {
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

	func peek() -> Any? {
		return first != nil ? first!.data : nil
	}

	func pop() -> Node? {
		if isEmpty { return nil }
		
		if length == 1 {
			let node = first
			first = nil
			last = nil
			length -= 1
			return node!
		}

		var temp = first
		var prev = temp

		while temp!.next != nil {
			prev = temp
			temp = temp!.next
		}

		// unlink
		prev!.next = nil

		// set new last
		last = prev

		length -= 1
	}
}
