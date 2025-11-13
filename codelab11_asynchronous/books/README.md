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