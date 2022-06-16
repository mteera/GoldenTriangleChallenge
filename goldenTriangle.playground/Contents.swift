func isGoldenTriangle(_ values: [Int]) -> Bool {
    // Check if it is a triangle
    if values.count < 3 {
        return false
    }
    // Sum up each sides while looping just once
    for i in 0 ... values.count - 3 {
        if values[i] + values[i + 1] > values[i + 2],
           values[i] + values[i + 2] > values[i + 1],
           values[i + 2] + values[i + 1] > values[i] {
            return true
        }
    }
    return false
}

isGoldenTriangle([3, 4, 20])
isGoldenTriangle([8, 9, 10])
