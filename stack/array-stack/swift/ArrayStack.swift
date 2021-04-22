class ArrayStack {
	var array: [Any] = []
	var isEmpty: Bool { array.isEmpty}

	var description: String {
		if isEmpty { return "[]" }
		var string = "["
		for i in 0 ..< array.count {
			string.append("\(array[i])")
			if i < array.count-1 { string.append(",") }
		}
		string.append("]")
		return string
	}

	var peek: Any? { array.last }

	func pop() -> Any? {
		if !isEmpty {
			return array.removeLast()
		}
		return nil
	}

	func push(_ data: Any) {
		array.append(data)
	}
}
