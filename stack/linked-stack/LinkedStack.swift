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
}
