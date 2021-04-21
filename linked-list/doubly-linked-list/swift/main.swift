// ------------------------
// Doubly Linked List Tests
// ------------------------

// Create a Doubly Linked List
let myLinkedList = DoublyLinkedList(Node("hello"))

// Get head data
print(myLinkedList.head.data)

// Get length of list
print("Length: \(myLinkedList.count)")

// Get first item
print("1st item is: \(myLinkedList.first)")

// Prepend data
var data = "world"
myLinkedList.prepend(data)
print("Prepended: \(data)")

// Print linked list
print(myLinkedList.description)

// Append Data
data = "1111"
myLinkedList.append(data)
print("Appended: \(data)")
print(myLinkedList.description)

// Insert
data = "33"
var position = 2
myLinkedList.insert(data, at: 2)
print("Inserted \(data) at position \(position)")
print(myLinkedList.description)

// Remove
position = 3
let removedData = myLinkedList.remove(at: position)
print("Removed:", removedData as Any)
print(myLinkedList.description)

// Get
print("Got:", myLinkedList.get(at: 3) as Any)

// Get node
print("Got node:", myLinkedList.getNode(at: 3)!.data)

// Previous node
print("Got previous node:", myLinkedList.getNode(at:3)!.previous!.data)
    
// Reverse
print("Reversed list:")
myLinkedList.reverse()
print(myLinkedList.description)
