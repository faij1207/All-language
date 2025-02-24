package main

import (
    "fmt"
    "sort"
)

func main() {
    fmt.Println("Hello, World!")

    // Additional lines
    numbers := []int{5, 3, 4, 1, 2}
    fmt.Println("Unsorted numbers:", numbers)

    // Sorting using sort package
    sort.Ints(numbers)
    fmt.Println("Sorted numbers:", numbers)

    // Bubble sort
    bubbleSorted := bubbleSort([]int{5, 3, 4, 1, 2})
    fmt.Println("Bubble sorted numbers:", bubbleSorted)

    // Insertion sort
    insertionSorted := insertionSort([]int{5, 3, 4, 1, 2})
    fmt.Println("Insertion sorted numbers:", insertionSorted)
}

func bubbleSort(arr []int) []int {
    n := len(arr)
    for i := 0; i < n; i++ {
        for j := 0; j < n-i-1; j++ {
            if arr[j] > arr[j+1] {
                arr[j], arr[j+1] = arr[j+1], arr[j]
            }
        }
    }
    return arr
}

func insertionSort(arr []int) []int {
    for i := 1; i < len(arr); i++ {
        key := arr[i]
        j := i - 1
        for j >= 0 && arr[j] > key {
            arr[j+1] = arr[j]
            j = j - 1
        }
        arr[j+1] = key
    }
    return arr
}
