class SinglyLinkedList {
    var head: Node
    private var length: Int = 0

    init(_ head: Node) {
        self.head = head
        length += 1
    }

    var count: Int { length }
    var first: Any { head.data }
}

