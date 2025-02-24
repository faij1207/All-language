using System;
using System.Linq;

class Program {
    static void Main() {
        Console.WriteLine("Hello, World!");

        int[] numbers = { 5, 3, 8, 4, 2 };
        Console.WriteLine("Original array: " + string.Join(", ", numbers));

        // Bubble Sort
        BubbleSort(numbers);
        Console.WriteLine("Bubble Sorted array: " + string.Join(", ", numbers));

        // Reset array
        numbers = new int[] { 5, 3, 8, 4, 2 };

        // Selection Sort
        SelectionSort(numbers);
        Console.WriteLine("Selection Sorted array: " + string.Join(", ", numbers));

        // Reset array
        numbers = new int[] { 5, 3, 8, 4, 2 };

        // Insertion Sort
        InsertionSort(numbers);
        Console.WriteLine("Insertion Sorted array: " + string.Join(", ", numbers));
    }

    static void BubbleSort(int[] array) {
        int n = array.Length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    // Swap temp and array[i]
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }

    static void SelectionSort(int[] array) {
        int n = array.Length;
        for (int i = 0; i < n - 1; i++) {
            int minIdx = i;
            for (int j = i + 1; j < n; j++) {
                if (array[j] < array[minIdx]) {
                    minIdx = j;
                }
            }
            // Swap the found minimum element with the first element
            int temp = array[minIdx];
            array[minIdx] = array[i];
            array[i] = temp;
        }
    }

    static void InsertionSort(int[] array) {
        int n = array.Length;
        for (int i = 1; i < n; ++i) {
            int key = array[i];
            int j = i - 1;

            // Move elements of array[0..i-1], that are greater than key, to one position ahead of their current position
            while (j >= 0 && array[j] > key) {
                array[j + 1] = array[j];
                j = j - 1;
            }
            array[j + 1] = key;
        }
    }
}
