echo "Hello, World!"

# Additional line
echo "This is an additional line."

# Sorting functionality
echo "Sorting an array of numbers:"
numbers=(5 3 8 1 2)
sorted_numbers=($(for i in "${numbers[@]}"; do echo $i; done | sort))
echo "Sorted numbers: ${sorted_numbers[@]}"
