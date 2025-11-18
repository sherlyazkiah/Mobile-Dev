# streambuilder_sherly

# Practicum 6: StreamBuilder

**Question 12:**

**Explain the meaning of the code in steps 3 and 7!**

Step 3 creates a number stream that generates a random value every second using async* and Stream.periodic. Every 1 second, the stream creates a Random instance, picks a random number from 0–9, and sends it as an event. yield* is used to forward all periodic events into the custom stream. The result is a stream that produces a new number every second.

Step 7 uses StreamBuilder to build the UI reactively based on data coming from the stream. stream: numberStream makes the UI listen to the stream created in Step 3, while initialData: 0 displays a starting value before the first event arrives. Each time the stream emits a new event, the builder function runs to display the updated number, handle errors using snapshot.hasError, or show the number on-screen when snapshot.hasData. If there is no data yet, it shows an empty widget (SizedBox.shrink()).

<img src="img\q12.gif" width="250" alt="1" />