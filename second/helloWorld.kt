fun main() {
    println("Hello, World!")
    println("Welcome to Kotlin programming!")
    
    val numbers = arrayOf(5, 2, 9, 1, 5, 6)
    println("Original array: ${numbers.joinToString(", ")}")
    
    bubbleSort(numbers)
    println("Sorted array using Bubble Sort: ${numbers.joinToString(", ")}")
    
    val numbers2 = arrayOf(3, 8, 2, 5, 1, 4)
    println("Original array: ${numbers2.joinToString(", ")}")
    
    selectionSort(numbers2)
    println("Sorted array using Selection Sort: ${numbers2.joinToString(", ")}")
}

fun bubbleSort(arr: Array<Int>) {
    val n = arr.size
    for (i in 0 until n-1) {
        for (j in 0 until n-i-1) {
            if (arr[j] > arr[j+1]) {
                val temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            }
        }
    }
}

fun selectionSort(arr: Array<Int>) {
    val n = arr.size
    for (i in 0 until n-1) {
        var minIdx = i
        for (j in i+1 until n) {
            if (arr[j] < arr[minIdx]) {
                minIdx = j
            }
        }
        val temp = arr[minIdx]
        arr[minIdx] = arr[i]
        arr[i] = temp
    }
}
