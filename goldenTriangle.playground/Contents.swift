func hasGoldenTriangle(_ values: [Int]) -> Bool {
    // Check if it is a triangle
    if values.count < 3 {
        return false
    }
    // Sort array
    let sortedArray = values.sorted()
    // Iterate through all 3 consecutive triplets
    for i in 0...sortedArray.count where i < sortedArray.count - 2 {
        if sortedArray[i] + sortedArray[i + 1] > sortedArray[i + 2],
           sortedArray[i] + sortedArray[i + 2] > sortedArray[i + 1],
           sortedArray[i + 2] + sortedArray[i + 1] > sortedArray[i] {
            return true
        }
    }
    return false
}

hasGoldenTriangle([10, 2, 5, 1, 8, 20])
