class SinglyLinkedList {
    var head: Node
    private var length: Int = 0

    init(_ head: Node) {
        self.head = head
        length += 1
    }

    //  Returns the length of the list.
    // - Complexity: O(1)
    var count: Int { length }

    // Returns the data stored at the head of the list
    // - Complexity: O(1)
    var first: Any { head.data }

    // Returns the string representation of the list.
    // - Complexity: O(n)
    var description: String {
        var string = ""
        var currentNode = head
        while currentNode.next != nil {
            string.append("[*]--> \(currentNode.data)\n")
            string.append("[*]\n")
            string.append(" |\n")
            string.append(" v\n")
            currentNode = currentNode.next!
        }
        string.append("[*]--> \(currentNode.data)\n")
        string.append("[/]")
        return string
    }

    // Inserts new data as the first item of the list.
    // - Complexity: O(1)
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

    // Inserts new data as the last item of the list.
    // - Complexity: O(n)
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
