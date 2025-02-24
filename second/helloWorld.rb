puts "Hello, World!"

# Bubble Sort
def bubble_sort(arr)
    n = arr.length
    loop do
        swapped = false
        (n-1).times do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swapped = true
            end
        end
        break unless swapped
    end
    arr
end

# Insertion Sort
def insertion_sort(arr)
    (1...arr.length).each do |i|
        key = arr[i]
        j = i - 1
        while j >= 0 && arr[j] > key
            arr[j + 1] = arr[j]
            j -= 1
        end
        arr[j + 1] = key
    end
    arr
end

# Selection Sort
def selection_sort(arr)
    n = arr.length
    (0...n-1).each do |i|
        min_index = i
        (i+1...n).each do |j|
            min_index = j if arr[j] < arr[min_index]
        end
        arr[i], arr[min_index] = arr[min_index], arr[i] if min_index != i
    end
    arr
end

# Example usage
arr = [64, 25, 12, 22, 11]
puts "Original array: #{arr}"

sorted_arr = bubble_sort(arr.dup)
puts "Bubble sorted array: #{sorted_arr}"

sorted_arr = insertion_sort(arr.dup)
puts "Insertion sorted array: #{sorted_arr}"

sorted_arr = selection_sort(arr.dup)
puts "Selection sorted array: #{sorted_arr}"
