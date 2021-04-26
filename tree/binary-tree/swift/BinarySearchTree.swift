class Node {
    var left: Node?
    var right: Node?
    var value: Int

    init(_ value: Int) {
        self.value = value
    }
}

class BinarySearchTree {
    var root: Node?

    init() { }

    init(root: Int) {
        self.root = Node(root)
    }

    /// Insert a value
    func insert(_ value: Int) {
        // when the tree is empty, insert the root node
        guard var node = root else {
            root = Node(value)
            return
        }

        // Loop through the tree to find where to insert the new value
        while true {
            // if less than or equal go left
            if value <= node.value {
                // if left is nil insert new node
                guard let left = node.left else {
                    node.left = Node(value)
                    return
                }
                node = left
            }

            // if greater than go right
            if value > node.value {
                // if right is nil insert new node
                guard let right = node.right else {
                    node.right = Node(value)
                    return
                }
                node = right
            }
        }
    }

}
