class UndirectedGraph {
	var nodes = 0
	var adjacencyList: [String:[String]] = [:]

	// addVertex
	func addVertex(_ node: String) {
		if adjacencyList[node] == nil {
			adjacencyList[node] = []
		}
	}

	// addEdge
	func addEdge(_ node1: String, _ node2: String) {
		adjacencyList[node1]?.append(node2)
		adjacencyList[node2]?.append(node1)
	}

	// showConnections
	func showConnections() {
		let allNodes = adjacencyList.keys
		for node in allNodes {
			guard let nodeConnections = adjacencyList[node] else {
				return
			}
			var connections = ""

			for vertex in nodeConnections {
				connections += "\(vertex) "
			}
			print("\(node) → \(connections)")
		}
	}
}

let myGraph = UndirectedGraph();
myGraph.addVertex("0");
myGraph.addVertex("1");
myGraph.addVertex("2");
myGraph.addVertex("3");
myGraph.addVertex("4");
myGraph.addVertex("5");
myGraph.addVertex("6");
myGraph.addEdge("3", "1");
myGraph.addEdge("3", "4");
myGraph.addEdge("4", "2");
myGraph.addEdge("4", "5");
myGraph.addEdge("1", "2");
myGraph.addEdge("1", "0");
myGraph.addEdge("0", "2");
myGraph.addEdge("6", "5");

myGraph.showConnections();
