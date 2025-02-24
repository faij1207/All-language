// basic java hello world from replit
class Main {
  public static void main(String[] args) {
    System.out.println("Hello world!");
    System.out.println("This is an additional line.");
    System.out.println("Adding another line to the code.");

    int[] array = {5, 2, 8, 3, 1};
    System.out.println("Original array:");
    printArray(array);

    bubbleSort(array);
    System.out.println("Array after Bubble Sort:");
    printArray(array);

    int[] array2 = {5, 2, 8, 3, 1};
    selectionSort(array2);
    System.out.println("Array after Selection Sort:");
    printArray(array2);

    int[] array3 = {5, 2, 8, 3, 1};
    insertionSort(array3);
    System.out.println("Array after Insertion Sort:");
    printArray(array3);
  }

  public static void printArray(int[] array) {
    for (int i : array) {
      System.out.print(i + " ");
    }
    System.out.println();
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
    for (int i = 1; i < n; i++) {
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
