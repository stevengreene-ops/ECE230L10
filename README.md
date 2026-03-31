# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names
Steven Greene Diego Vargas
## Summary
In this lab, we created a DFlip Flop, a JK Flip Flop, and a T Flip Flop by creating an edge sensitive circuit, and clocking them to a button on our basys3 board. To create the DFF, we took in data from a switch, clocked it to a button so that when the button is high, we can adjust the data in, and then passed the data output to 2 LEDs (one if the data in was high, and one if the data in was low). 

**note we had to have an initial beginning input to these flipflops, so we had to begin it with our output "memory" <= 0. 

We used this same logic for a JK flip flop, but had to insert some additional logic so that we can set, hold, and reset the output of Q, or set the output to toggle setting both J and K high. When the input combined with the inverse of the initial bit (0 in this case) was high, memory would output, or when the inverse of k, and the memory (0 in this case) was high, memory would output high. This allowed us to set the output to either two LEDs, or allows us to toggle between the two LEDs. 

Lastly, we created a T-flip flop with mostly the same logic as a D and JK flip flop, but we insert logic that if (t) then it would output ~memory. Otherwise it would output memory. This, in combination with our initial beginning bit of 0 for memory allowed us to either toggle the output, or set the output to one specific bit. 

## Lab Questions

### What is difference between edge and level sensitive circuits?

For level sensitive circuits, the data and output coincide when the whole clock timing is high. The circuits would only change their output when certain signals were high. This meant those circuits were synchronous to whatever signal enabled them to change. An edge sensitive circuit will only accept data at the positive or negative edge of the clock, and the store that data until the next positive, or negative edge occurs (whichever edge you specify in the code).** Level sensitive memory stores the input value as long as its enable signal is high. An edge sensitive one stores the input value only when the enable transitions from low to high — the edge. **

### Why is it important to declare initial state?
Declaring an initial state is critical because hardware memory elements like flip-flops have no default value upon power-up. Without an initial state, these components may start in a random condition, leading to undefined behavior where the logic fails to execute correctly. Setting a known starting point ensures that your physical implementation matches the simulation and allows the edge sensitive transitions to begin from a predictable and stable value.

### What do edge sensitive circuits let us build?
Edge sensitive circuits, such as D Flip-Flops, are the foundation of clocked circuits and modern computer memory systems. Unlike level-sensitive latches, which can lead to infinite loops of logic, edge-triggered components only update their state at a specific snapshot in time. This precise timing allows engineers to build complex counters, state machines, and synchronized processing units that can reliably add, store, and manipulate data without the hardware toggling uncontrollably.
