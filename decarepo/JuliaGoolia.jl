println("Im Julia")

println("This is Fibonacci")
function fib(n)
    x, y = (0, 1)
    for i = 1:n
        x, y = (y, x + y)
    end
    x
end

let x = 0
    while x < 100
        println(fib(x))
        x += 1
    end
end

println("Sorting Algorithms")

# Bubble Sort
function bubble_sort!(arr)
    n = length(arr)
    for i in 1:n-1
        for j in 1:n-i
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    arr
end

# Insertion Sort
function insertion_sort!(arr)
    for i in 2:length(arr)
        key = arr[i]
        j = i - 1
        while j > 0 && arr[j] > key
            arr[j + 1] = arr[j]
            j -= 1
        end
        arr[j + 1] = key
    end
    arr
end

# Selection Sort
function selection_sort!(arr)
    n = length(arr)
    for i in 1:n-1
        min_index = i
        for j in i+1:n
            if arr[j] < arr[min_index]
                min_index = j
            end
        end
        arr[i], arr[min_index] = arr[min_index], arr[i]
    end
    arr
end

# Example usage of sorting algorithms
arr = [64, 34, 25, 12, 22, 11, 90]
println("Original array: ", arr)

println("Bubble sorted array: ", bubble_sort!(copy(arr)))
println("Insertion sorted array: ", insertion_sort!(copy(arr)))
println("Selection sorted array: ", selection_sort!(copy(arr)))
