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
         // Store head node
         let tempNode = head
         
         // Assign new head node using input
         head = Node(data)

         // Point new head node to the previous head
         head.next = tempNode

         // Increment the length
         length += 1
    }

    func append(_ data: Any) {
         // Start from the head node
         var currentNode = head

         // Loop through list to the last node
         while currentNode.next != nil {
             currentNode = currentNode.next!
         }

         // Link new node to the last node
         currentNode.next = Node(data)

         // Increment the length
         length += 1
    }
}

