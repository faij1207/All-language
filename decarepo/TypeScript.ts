// comment here; love the double-slash java styles
var text: string = "ola amigo";
console.log(text);

// loop here
for (let i: number = 0; i < 5; ++i) {
  let line: string = "";
  for (let j: number = 0; j <= i; ++j) {
    line += "*";
  }
  console.log(line);
}

// Bubble Sort
function bubbleSort(arr: number[]): number[] {
  let n = arr.length;
  for (let i = 0; i < n - 1; i++) {
    for (let j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        let temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

// Insertion Sort
function insertionSort(arr: number[]): number[] {
  let n = arr.length;
  for (let i = 1; i < n; i++) {
    let key = arr[i];
    let j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
  return arr;
}

// Selection Sort
function selectionSort(arr: number[]): number[] {
  let n = arr.length;
  for (let i = 0; i < n - 1; i++) {
    let minIdx = i;
    for (let j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIdx]) {
        minIdx = j;
      }
    }
    let temp = arr[minIdx];
    arr[minIdx] = arr[i];
    arr[i] = temp;
  }
  return arr;
}

// Example usage
let arrayToSort: number[] = [64, 34, 25, 12, 22, 11, 90];
console.log("Original array:", arrayToSort);
console.log("Bubble Sorted array:", bubbleSort([...arrayToSort]));
console.log("Insertion Sorted array:", insertionSort([...arrayToSort]));
console.log("Selection Sorted array:", selectionSort([...arrayToSort]));
