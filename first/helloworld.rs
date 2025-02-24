fn main() {
    println!("Hello, World!");

    let mut numbers = vec![5, 3, 8, 1, 2];
    println!("Before sorting: {:?}", numbers);

    numbers.sort();
    println!("After sorting: {:?}", numbers);
}