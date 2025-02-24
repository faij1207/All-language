print("Hello, World!")

// Additional print statements
print("Welcome to Swift programming!")
print("Let's learn sorting algorithms.")

// Bubble Sort
func bubbleSort(_ array: [Int]) -> [Int] {
    var arr = array
    for i in 0..<arr.count {
        for j in 0..<arr.count - i - 1 {
            if arr[j] > arr[j + 1] {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    return arr
}

// Selection Sort
func selectionSort(_ array: [Int]) -> [Int] {
    var arr = array
    for i in 0..<arr.count {
        var minIndex = i
        for j in i + 1..<arr.count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            let temp = arr[i]
            arr[i] = arr[minIndex]
            arr[minIndex] = temp
        }
    }
    return arr
}

// Insertion Sort
func insertionSort(_ array: [Int]) -> [Int] {
    var arr = array
    for i in 1..<arr.count {
        let key = arr[i]
        var j = i - 1
        while j >= 0 && arr[j] > key {
            arr[j + 1] = arr[j]
            j -= 1
        }
        arr[j + 1] = key
    }
    return arr
}

// Example usage
let unsortedArray = [5, 3, 8, 4, 2]
print("Unsorted Array: \(unsortedArray)")
print("Bubble Sorted: \(bubbleSort(unsortedArray))")
print("Selection Sorted: \(selectionSort(unsortedArray))")
print("Insertion Sorted: \(insertionSort(unsortedArray))")
