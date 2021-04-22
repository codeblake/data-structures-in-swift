class ArrayStack {
	var array: [Any] = []
	var length = 0
	private var first: Any {
		array.first
	}

	var isEmpty: Bool { length == 0 }
	var description: String {
		if isEmpty { return "[]" }
		var string = "["
		for i in 0 ..< length {
			string.append("\(array[i])")
			if i < length-1 { string.append(",") }
		}
		string.append("]")
		return string
	}

	func peek() -> Any {
		return first
	}

	func pop() -> Any? {
		if !isEmpty {
			length -= 1
			return array.removeLast()
		}
		return nil
	}

	func push(_ data: Any) {
		array.append(data)
		length += 1
	}
}
