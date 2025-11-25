# store_data_sherly

# Practicum 1: Convert Dart Model to JSON

**Question 1:**

**Add your nickname to titlethe app as an identity for your work.**

<img src="img\q1.png" width="250" alt="1" />

**Question 2:**

<img src="img\q2.jpeg" width="250" alt="1" />

**Question 3:**

<img src="img\q3.jpeg" width="250" alt="1" />

# Practicum 2: Handle JSON Data Compatibility

**Question 4:**

<img src="img\q4.jpeg" width="250" alt="1" />

The application successfully handled corrupted JSON data by implementing:
- int.tryParse() for id
- double.tryParse() for price
- null-coalescing and ternary operators for String values

No runtime errors occurred, and missing data is now replaced with default values such as "No name" or empty strings.

# Practicum 3: Handling JSON errors

**Question 5:**

**Explain the meaning of safer and more maintainable code!**

**Safer code** means the program is less likely to crash or produce errors because all JSON key names are stored in constants instead of being written manually. This prevents typing mistakes that are hard to detect.

**More maintainable code** means the program is easier to update and manage in the future. If a JSON key name needs to be changed, it only needs to be updated in one place (the constant), and the change will apply throughout the code automatically.

<img src="img\q5.jpeg" width="250" alt="1" />

# Practicum 4: SharedPreferences

**Question 6:**

<img src="img\q6.gif" width="250" alt="1" />

# Practicum 5: Access the filesystem with path_provider

**Question 7:**

<img src="img\q7.jpeg" width="250" alt="1" />

# Practicum 6: Accessing the filesystem with directories

**Question 8:**

**Explain the meaning of the code in steps 3 and 7!**

- Step 3 (writeFile): myFile.writeAsString(...) creates/opens the file at the given path and writes the text into it. The method is async and uses await so it doesn’t block the UI, while try/catch prevents crashes if an error happens (e.g., permission or storage issues). Returning true/false indicates success or failure.

- Step 7 (readFile & Read button): myFile.readAsString() reads the file contents asynchronously. After reading, setState() saves the text into fileText and refreshes the UI so the content appears on screen. If an error occurs (e.g., file not found), it is handled safely without crashing the app.

<img src="img\q8.gif" width="250" alt="1" />