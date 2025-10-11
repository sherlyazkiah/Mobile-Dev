# flutter_plugin_pubdev

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

**Practical Assignment**

**1. Complete the practicum, then document and push it to your repository in the form of a screenshot of the work results along with an explanation in the file README.md!**

**Step 1: Create a New Project**

![alt text](img/step1.png)

**Step 2: Adding Plugins**

![alt text](img/step2.png)

After run the code in terminal, auto_size_text will appear in pubspec.yaml.

**Step 3: Create a filered_text_widget.dart**

![alt text](img/step3.png)

**Step 4: Add AutoSizeText Widget**

![alt text](img/step4.png)

After you add the code above, you'll receive an error message. Why is this? Explain it in your lab report!

The error message appears because the plugin has not been imported and the text variable is undefined in the class.

**Step 5: Create text variables and parameters in constructor**

![alt text](img/step5.png)

**Step 6: Add widgets in main.dart**

![alt text](img/step6.png)

**2. Explain the purpose of step 2 in the practicum!**

The purpose of adding the auto_size_text plugin to Flutter is to allows text to automatically adjust its font size to fit the width or height of its container without overflowing.

**3. Explain the purpose of step 5 in the practicum!**

The purpose is to allow RedTextWidget to receive a text value from outside via the text parameter. This makes the widget dynamic, allowing it to display different text depending on what is entered when called from main.dart.

**4. In step 6 there are two widgets added, explain their functions and differences!**

The first widget uses AutoSizeText, which automatically adjusts the font size so the text fits within the container width (50 px), while the yellow background helps visualize the container area. Meanwhile, the second widget uses the standard Text widget with a fixed font size, so if the text is too long, it may overflow or get cut off depending on the container’s width.

**5. Explain the meaning of each parameter in the plugin based on the links in thisauto_size_text documentation!**

**6. Submit your lab report in the form of a GitHub repository link to your lecturer!**
