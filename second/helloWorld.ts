console.log("Hello, World!");

// Additional lines
console.log("Welcome to TypeScript programming!");
console.log("Let's sort an array of numbers.");

// Sorting function
function sortArray(arr: number[]): number[] {
    return arr.sort((a, b) => a - b);
}

const numbers = [5, 3, 8, 1, 2];
console.log("Original array:", numbers);
const sortedNumbers = sortArray(numbers);
console.log("Sorted array:", sortedNumbers);
