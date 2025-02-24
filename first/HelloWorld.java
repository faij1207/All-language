import java.util.Arrays;

public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");

        int[] array = {5, 2, 9, 1, 5, 6};
        System.out.println("Original Array: " + Arrays.toString(array));

        bubbleSort(array);
        System.out.println("Bubble Sorted Array: " + Arrays.toString(array));

        int[] array2 = {3, 7, 4, 9, 5, 2};
        selectionSort(array2);
        System.out.println("Selection Sorted Array: " + Arrays.toString(array2));

        int[] array3 = {8, 3, 1, 7, 0, 10, 2};
        insertionSort(array3);
        System.out.println("Insertion Sorted Array: " + Arrays.toString(array3));
    }

    public static void bubbleSort(int[] array) {
        int n = array.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }

    public static void selectionSort(int[] array) {
        int n = array.length;
        for (int i = 0; i < n - 1; i++) {
            int minIdx = i;
            for (int j = i + 1; j < n; j++) {
                if (array[j] < array[minIdx]) {
                    minIdx = j;
                }
            }
            int temp = array[minIdx];
            array[minIdx] = array[i];
            array[i] = temp;
        }
    }

    public static void insertionSort(int[] array) {
        int n = array.length;
        for (int i = 1; i < n; ++i) {
            int key = array[i];
            int j = i - 1;

            while (j >= 0 && array[j] > key) {
                array[j + 1] = array[j];
                j = j - 1;
            }
            array[j + 1] = key;
        }
    }
}
