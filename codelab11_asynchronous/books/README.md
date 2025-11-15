# books

# Practicum 1: Fetching Data from a Web Service (API)

**Question 1:**

<img src="src\q1.png" width="250" alt="1" />

My nickname and ID have been added to the app’s title as an identifier of the work.

**Question 2:**

<img src="src\q2.png" width="250" alt="1" />

I used the book ID EuVvEQAAQBAJ, which I got from MY favorite book’s URL on Google Books. When I open
https://www.googleapis.com/books/v1/volumes/EuVvEQAAQBAJ
in the browser, it displays JSON data. This means the API connection is working correctly.

**Question 3:**

**Explain the meaning of the code in step 5 and related to substringit catchError!**

- The substring(0, 450) function is used to display only the first 450 characters of the JSON data obtained from the API. This is done to shorten the output and prevent the full JSON from crowding the screen.

- The catchError() function is used to handle errors that may occur when fetching data, such as no internet connection, incorrect URL, or an unresponsive server. Instead of crashing, the app will show the message "An error occurred" on the screen.

Result:

<img src="src\q3.gif" width="250" alt="1" />

# Practicum 2: Using await/async to avoid callbacks

**Question 4:**

**Explain the meaning of the code steps 1 and 2!**

<img src="src\q4s1.png" width="250" alt="1" />

In step 1, three asynchronous methods are created: returnOneAsync(), returnTwoAsync(), and returnThreeAsync().
Each of these methods uses Future.delayed() to pause execution for 3 seconds before returning the values 1, 2, and 3 respectively.
The keywords async and await are used to handle asynchronous operations, allowing the program to wait for a task to finish before moving to the next one, while keeping the code clean and easy to read.

<img src="src\q4s2.png" width="250" alt="1" />

In step 2, a new method called count() is added. This method calls the three asynchronous methods sequentially using the await keyword.
Each method is executed one after another — meaning that the second method only starts after the first one completes, and so on.
The returned values (1, 2, and 3) are then added together to produce a total value of 6. The final result is updated on the screen using setState().

<img src="src\q4.gif" width="250" alt="1" />

When the GO! button is pressed, the app performs these three asynchronous operations with a total delay of approximately 9 seconds (3 seconds × 3 methods).
After the delay, the value 6 is displayed on the screen, while the CircularProgressIndicator continues to show that the UI remains responsive during the asynchronous process.

# Practicum 3: Using Completer in Future

**Question 5:**

**Explain the meaning of the code in step 2!**

In step 2, the code uses the Completer class to manually control when a Future is completed. The late variable completer is initialized in getNumber(), which creates a Completer<int>, calls calculate(), and returns completer.future. In calculate(), a 5-second delay is simulated using Future.delayed(), and then completer.complete(42) finishes the Future with the value 42. This method is useful when more control is needed over asynchronous execution, as it allows delaying or manually completing a Future at a specific time.

<img src="src\q5.gif" width="250" alt="1" />

**Question 6:**

**Explain the meaning of the code in step 2!**

The main difference between the code in step 2 and steps 5–6 is the addition of error handling using try-catch and catchError(). In step 2, the Future always completes successfully with completer.complete(42). In steps 5–6, a try-catch block and catchError() are used to handle potential errors, ensuring the program can respond gracefully if something goes wrong during execution.

<img src="src\q5.gif" width="250" alt="1" />

# Practicum 4: Calling Future in parallel

**Question 7:**

<img src="src\q7.gif" width="250" alt="1" />

In this step, the code uses FutureGroup to run multiple asynchronous tasks (returnOneAsync(), returnTwoAsync(), and returnThreeAsync()) in parallel instead of sequentially. By executing all Futures at the same time, the total execution time is reduced from 9 seconds to about 3 seconds. Once all Futures are completed, their results are collected into a List<int>, summed, and displayed as the total value (6). This demonstrates how parallel asynchronous execution can significantly improve performance.

**Question 8:**

**Explain the meaning of the difference between code steps 1 and 4!**

The difference between Step 1 and Step 4 lies in how multiple asynchronous tasks are executed and waited for.

In Step 1, each async method (returnOneAsync(), returnTwoAsync(), returnThreeAsync()) runs sequentially, meaning the next one starts only after the previous finishes. This makes the total runtime the sum of all durations (around 9 seconds).

In Step 4, using Future.wait() (or FutureGroup) runs all three functions concurrently — they start at the same time, and the program waits until all of them complete. When all are done, their results are combined using .reduce((a, b) => a + b) and displayed on screen.

<img src="src\q8.gif" width="250" alt="1" />

# Practicum 5: Handling Error Responses in Async Code

**Question 9:**

<img src="src\q9.gif" width="250" alt="1" />

The program demonstrates how to handle errors in asynchronous code using the then(), catchError(), and whenComplete() methods. The returnError() function is used to simulate an error by delaying execution for 2 seconds before throwing an exception. When the "GO!" button is pressed, the app calls returnError(). If the operation succeeds, the then() block updates the UI with the message “Success!”. However, since an exception is intentionally thrown, the catchError() block is triggered instead, displaying the error message on the screen. Finally, the whenComplete() block executes regardless of success or failure, printing “Complete” in the debug console. This approach helps manage asynchronous operations more effectively by clearly separating success, error, and completion states.

**Question 10:**

**Call handleError()the method in ElevatedButton, then run it. What is the result? Explain the difference between the code in steps 1 and 4!**

In step 4, the handleError() method uses try, catch, and finally with async/await to manage errors. It waits for returnError(), which throws an exception after 2 seconds. The catch block updates the result with the error message, and the finally block always prints “Complete.”

The key difference is in how errors are handled: step 1 relies on callback methods (then(), catchError(), whenComplete()), while step 4 uses async/await, which is cleaner and easier to read for handling asynchronous operations.

<img src="src\q10.gif" width="250" alt="1" />

# Practicum 6: Using Future with StatefulWidget

**Question 11:**

**Add your nickname to each property title as your job identity.**

<img src="src\q11.png" width="250" alt="1" />

