var index: Int?

//index = nil // "index does not contain value"
index = 3   // "birch"

var treeArray = ["Oak", "Pine", "Maple","birch"]

if let index {
    print(treeArray[index])
} else {
    print("index does not contain value")
}

