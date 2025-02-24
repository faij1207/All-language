<?php
echo "Hello, World!";
echo "\nWelcome to PHP programming!";
echo "\nLet's sort some arrays.";

// Sorting an array of numbers
$numbers = array(4, 2, 8, 6);
sort($numbers);
echo "\nSorted numbers: ";
print_r($numbers);

// Sorting an array of strings
$strings = array("banana", "apple", "cherry");
sort($strings);
echo "\nSorted strings: ";
print_r($strings);
?>

<!-- Hello, World!
Welcome to PHP programming!
Let's sort some arrays.
Sorted numbers: Array ( [0] => 2 [1] => 4 [2] => 6 [3] => 8 )
Sorted strings: Array ( [0] => apple [1] => banana [2] => cherry )
-->