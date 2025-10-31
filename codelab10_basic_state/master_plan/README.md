# master_plan

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

**Practical Assignment 1: Basic State with Model-View**

**1. Complete the lab steps, then document the final results with a GIF and explanation in the file README.md! If you find any errors or issues, please fix them.**

**2. Explain the purpose of step 4 in the practicum! Why is this done?**

This step is done to separates the data (model) from the user interface (view), allowing for a clear structure and easier maintenance. By doing this, changes in the data can be managed efficiently without directly affecting the UI components. This is a fundamental principle of the Model-View pattern, ensuring better organization and scalability of the application.

**3. Why is the plan variable needed in step 6 of the lab? Why is it a constant?**

The plan variable is used to store all the data of the current plan displayed on the screen.

The Plan object contains:

- name: the plan’s name

- tasks: a list of tasks (List<Task>)

So, plan acts as the main state of the PlanScreen. Whenever the user adds, edits, or checks off a task, the changes are saved into this variable. 

Using const makes the object immutable (cannot be changed accidentally during runtime), which helps maintain data consistency and prevents unexpected behavior in the program.

**4. Capture the results of Step 9 as a GIF, then explain what you have created!**

The GIF demonstrates how the interface reacts when the user interacts with it. For example, when we tap the + button, a new task appears. We can type a description into the TextFormField. Then, checking the box marks the task as done.

**5. What is the use of the methods in Steps 11 and 13 in the *lifecycle state*?**

- The initState() method runs once when the widget is created. It initializes the ScrollController and adds a listener to automatically close the keyboard when the user scrolls. This belongs to the widget’s initialization phase.

- The dispose() method runs when the widget is removed. It cleans up resources like the ScrollController to prevent memory leaks, marking the cleanup phase of the widget’s lifecycle.

**6. Submit your practicum report in the form of a commit link or GitHub repository to the agreed lecturer!**