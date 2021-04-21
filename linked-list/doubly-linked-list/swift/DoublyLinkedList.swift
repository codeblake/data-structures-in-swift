/// Doubly Linked List
class DoublyLinkedList {
    var head: Node
    private var length: Int = 0

    init(_ head: Node) {
        self.head = head
        length += 1
    }

    ///  Returns the length of the list.
    /// - Complexity: O(1)
    var count: Int { length }

    /// Returns the data stored at the head of the list
    /// - Complexity: O(1)
    var first: Any { head.data }

    /// Return the first node of the list
    /// - Complexity: O(1)
    var firstNode: Node { head }

    /// Returns the string representation of the list.
    /// - Complexity: O(n)
    var description: String {
        var string = ""
        var currentNode = head

        while currentNode.next != nil {
            string.append("[•] → \(currentNode.data)\n")
            string.append("[•]\n")
            string.append(" ↓\n")
            currentNode = currentNode.next!
        }

        string.append("[•] → \(currentNode.data)\n")
        string.append("[/]")
        return string
    }

    /// Inserts new data as the first item of the list.
    /// - Complexity: O(1)
    func prepend(_ data: Any) {
        // Point current head to new head
        head.previous = Node(data)

        // Store head node
        let tempNode = head

        // Assign new head node using input
        head = Node(data)

        // Point new head node to the previous head
        head.next = tempNode

        // Increment the length
        length += 1
    }

    /// Inserts new data as the last item of the list.
    /// - Complexity: O(n)
    func append(_ data: Any) {
        // Start from the head node
        var currentNode = head

        // Loop through list to the last node
        while currentNode.next != nil {
            currentNode = currentNode.next!
        }

        // Create new node from data
        let node = Node(data)

        // Link previous node to new node
        node.previous = currentNode

        // Link new node to the last node
        currentNode.next = node

        // Increment the length
        length += 1
    }

    /// Inserts new data at position.
    /// - Parameter position: a non-zero integer value
    /// - Complexity: O(n)
    func insert( _ data: Any, at position: Int) {
        // When out of range
        if position > count || position == 0 {
            print("Position out of range")
        }

        // When at first position
        if position == 1 {
            prepend(data)
        }
        // When at last position
        else if position == count {
            append(data)
        }
        // When in-between first & last
        else {
            // Temporary nodes
            var previous = head
            var current = previous

            // Loop until at position
            for _ in 1 ..< position {
                previous = current
                current = previous.next!
            }

            // Create new node from data
            let node = Node(data)

            // Insert new node between previous & current node
            previous.next = node
            node.previous = previous
            node.next = current
            current.previous = node

            // Increment length
            length += 1
        }
    }

    /// Remove data at position.
    /// - Parameter position: a non-zero integer value
    /// - Complexity: O(n)
    func remove(at position: Int) -> Any? {
        // If out of range
        if position > length || position == 0 {
            print("Position out of range")
            return nil
        }

        // Remove at first position:  O(1)
        if position == 1 {
            head = head.next!
            length -= 1
        }
        // Remove at position n: O(n)
        else {
            // Temporary nodes
            var previous = head
            var current = previous

            // Loop through
            for _ in 1 ..< position {
                previous = current
                current = previous.next!
            }

            // Unlink current node:
            // =======================================
            //         current.next.previous
            //     +---------------------------+
            //     V                           |
            // [previous]  *[current]*  [current.next]
            //     |                           ^
            //     +---------------------------+
            //            previous.next
            // =======================================
            previous.next = current.next
            current.next?.previous = previous

            // Increment length
            length -= 1

            return current.data
        }
        return nil
    }

    /// Get data at a position
    /// - Parameter position: a non-zero integer value
    /// - Complexity: O(n)
    func get(at position: Int) -> Any? {
        // Check if out of range
        if position > count || position == 0 {
            print("Warning: Position starts from 1 to \(count)")
        }

        // If requesting first element
        if position == 1 {
            return head.data
        }
        // Get data at position
        else {
            // Temporary node
            var node = head

            // Loop until at position
            for _ in 1 ..< position {
                node = node.next!
            }
            return node.data
        }
    }

    /// Get node at a position
    /// - Parameter position: a non-zero integer value
    /// - Complexity: O(n)
    func getNode(at position: Int) -> Node? {
        // Check if out of range
        if position > count || position == 0 {
            print("Warning: Position starts from 1 to \(count)")
        }

        // If requesting first element
        if position == 1 {
            return head
        }
        // Get data at position
        else {
            // Temporary node
            var node = head

            // Loop until at position
            for _ in 1 ..< position {
                node = node.next!
            }
            return node
        }
    }

    /// Reverse the Linked List
    /// - Complexity: O(n)
    func reverse() {
        if count == 1 {
            print("Can't reverse a list of count 1.")
            return
        }
        var t = head
        while true {
            let n = t.next
            t.next = t.previous
            t.previous = n
            if n == nil { break }
            t = n!
        }
        head = t
    }
}
