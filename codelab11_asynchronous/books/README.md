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