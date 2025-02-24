# python is a scripting language created in 1991 by Guido van Rossum
# It is dynamically-typed and has extensive supporting libraries
# Would reccommend!
#
# python script for accessing system time and generating a random number
import matplotlib.pyplot as plt
import numpy as np
import time

# build a shoddy random number generator
def random():
    seed = int(time.time())
    rng = np.random.default_rng(seed)
    return rng.random()

# generate a list of random numbers
def generate_random_list(size):
    return [random() for _ in range(size)]

# sort the list using different sorting algorithms
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

def selection_sort(arr):
    n = len(arr)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr

def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i-1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr

# call the function to retrieve a pseudo random number
random_number = random()
print(f"Random Number: {random_number}")

# generate a list of random numbers
random_list = generate_random_list(10)
print(f"Random List: {random_list}")

# sort the list using bubble sort
sorted_list_bubble = bubble_sort(random_list.copy())
print(f"Sorted List (Bubble Sort): {sorted_list_bubble}")

# sort the list using selection sort
sorted_list_selection = selection_sort(random_list.copy())
print(f"Sorted List (Selection Sort): {sorted_list_selection}")

# sort the list using insertion sort
sorted_list_insertion = insertion_sort(random_list.copy())
print(f"Sorted List (Insertion Sort): {sorted_list_insertion}")