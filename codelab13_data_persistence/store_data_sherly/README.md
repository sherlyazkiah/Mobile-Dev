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

**Question 5:**

**Explain the meaning of safer and more maintainable code!**

**Safer code** means the program is less likely to crash or produce errors because all JSON key names are stored in constants instead of being written manually. This prevents typing mistakes that are hard to detect.

**More maintainable code** means the program is easier to update and manage in the future. If a JSON key name needs to be changed, it only needs to be updated in one place (the constant), and the change will apply throughout the code automatically.

<img src="img\q5.jpeg" width="250" alt="1" />