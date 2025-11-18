# bloc_random_sherly

# Practicum 7: BLoC Pattern

**Question 13:**

**Explain the purpose of this practicum! Where does the BLoC pattern concept lie?**

The purpose of this practicum is to demonstrate how the BLoC pattern separates business logic from the UI. The BLoC concept is implemented in random_bloc.dart, where the class RandomNumberBloc handles all logic. When the button is pressed in random_screen.dart, an event is added to the input stream (_generateRandomController), and the BLoC processes it by generating a random number.

<img src="img\q13.gif" width="250" alt="1" />