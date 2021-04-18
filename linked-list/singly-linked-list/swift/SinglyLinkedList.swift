class SinglyLinkedList {
    var head: Node
    private var length: Int = 0

    init(_ head: Node) {
        self.head = head
        length += 1
    }

    var count: Int { length }
    var first: Any { head.data }

    var description: String {
        var string = "["
        var currentNode = head
        while currentNode.next != nil {
            string.append("\(currentNode.data)")
            currentNode = currentNode.next!
            string += ","
        }
        string.append("\(currentNode.data)")
        string += "]"
        return string
    }

    func prepend(_ data: Any) {
         // store head node
         let tempNode = head
         
         // assign new head node using input
         head = Node(data)

         // point new head node to the previous head
         head.next = tempNode

         // increment the length
         length += 1
    }
}

