#include <iostream>
#include <vector>
#include <algorithm>

// Function to print an array
void printArray(const std::vector<int>& arr) {
    for (int num : arr) {
        std::cout << num << " ";
    }
    std::cout << std::endl;
}

// Bubble Sort
void bubbleSort(std::vector<int>& arr) {
    int n = arr.size();
    for (int i = 0; i < n - 1; ++i) {
        for (int j = 0; j < n - i - 1; ++j) {
            if (arr[j] > arr[j + 1]) {
                std::swap(arr[j], arr[j + 1]);
            }
        }
    }
}

// Selection Sort
void selectionSort(std::vector<int>& arr) {
    int n = arr.size();
    for (int i = 0; i < n - 1; ++i) {
        int minIdx = i;
        for (int j = i + 1; j < n; ++j) {
            if (arr[j] < arr[minIdx]) {
                minIdx = j;
            }
        }
        std::swap(arr[i], arr[minIdx]);
    }
}

// Insertion Sort
void insertionSort(std::vector<int>& arr) {
    int n = arr.size();
    for (int i = 1; i < n; ++i) {
        int key = arr[i];
        int j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            --j;
        }
        arr[j + 1] = key;
    }
}

int main() {
    std::cout << "Hello, World!" << std::endl;

    std::vector<int> arr = {64, 34, 25, 12, 22, 11, 90};

    std::cout << "Original array: ";
    printArray(arr);

    std::vector<int> bubbleSortedArr = arr;
    bubbleSort(bubbleSortedArr);
    std::cout << "Bubble Sorted array: ";
    printArray(bubbleSortedArr);

    std::vector<int> selectionSortedArr = arr;
    selectionSort(selectionSortedArr);
    std::cout << "Selection Sorted array: ";
    printArray(selectionSortedArr);

    std::vector<int> insertionSortedArr = arr;
    insertionSort(insertionSortedArr);
    std::cout << "Insertion Sorted array: ";
    printArray(insertionSortedArr);

    return 0;
}
