class Node {
    var left: Node?
    var right: Node?
    var value: Int
    var isLeaf: Bool { left == nil && right == nil }
    var parent: Node?

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

    /// Lookup - search for a value
    func lookup(_ value: Int) -> Node? {
        guard var node = root else {
            return nil
        }
        while true {
            // if found, return found node
            if value == node.value{
                return node
            }

            // go left if value less than current node
            if value < node.value && node.left != nil {
                node = node.left!
                continue
            }

            // go right if value is greater-than current node
            if value > node.value && node.right != nil {
                node = node.right!
                continue
            }

            // if nothing found return nil
            return nil
        }
    }

// TESTING

/// Travser in order and print value
func traverseInOrder(_ node: Node?) {
    if node == nil { return }
    traverseInOrder(node?.left)
    print(node!.value)
    traverseInOrder(node?.right)
}

//        12
//       /  \
//      /    \
//     /      \
//    8       22
//   / \     /  \
//  6   10  19  33

// let n = Node(12)
// n.left = Node(8)
// n.right = Node(22)
// n.left!.left = Node(6)
// n.left!.right = Node(10)
// n.right!.left = Node(19)
// n.right!.right = Node(33)
// traverseInOrder(n)

// Create binary tree with root value
let bt = BinarySearchTree()

// Insert values
bt.insert(12)
bt.insert(8)
bt.insert(22)
bt.insert(6)
bt.insert(10)
bt.insert(19)
bt.insert(33)

// Traverse tree
traverseInOrder(bt.root)

// Find value
if let node = bt.lookup(10) {
    print("Found", node.value)
} else {
    print("Nothing found!")
}
