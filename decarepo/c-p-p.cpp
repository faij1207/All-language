#include <iostream> // This includes the input-output stream library, which is necessary for using std::cout and std::cin.
#include <string>   // This includes the string library, which is necessary for using std::string.

using namespace std; // This allows us to use standard library names without the 'std::' prefix.

int main() { // This is the main function where the execution of the program begins.
  cout << "Hello World!\n"; // This prints "Hello World!" followed by a newline character to the console.

  // This is a for loop that will iterate 10 times.
  for (int i = 0; i < 10; i++) { // The loop starts with i=0 and increments i by 1 in each iteration until i is less than 10.
    cout << "The variable i = " << i << '\n'; // This prints the value of i followed by a newline character in each iteration.
  }

  // Adding a new section to get user input and display it.
  string name; // Declare a string variable to store the user's name.
  cout << "Please enter your name: "; // Prompt the user to enter their name.
  cin >> name; // Read the user's name from the console and store it in the 'name' variable.
  cout << "Hello, " << name << "! Welcome to the program.\n"; // Greet the user with their name.

  // Adding a new section to demonstrate a while loop.
  int counter = 0; // Initialize a counter variable to 0.
  while (counter < 5) { // The loop will continue as long as counter is less than 5.
    cout << "Counter is at: " << counter << '\n'; // Print the current value of the counter.
    counter++; // Increment the counter by 1.
  }

  // Adding a new section to demonstrate a do-while loop.
  int number; // Declare an integer variable to store a number.
  do {
    cout << "Please enter a number greater than 10: "; // Prompt the user to enter a number greater than 10.
    cin >> number; // Read the number from the console and store it in the 'number' variable.
  } while (number <= 10); // The loop will continue as long as the number is less than or equal to 10.
  cout << "You entered: " << number << '\n'; // Print the number entered by the user.

  return 0; // This indicates that the program ended successfully.
}
