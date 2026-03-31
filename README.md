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

### Why is it important to declare initial state?

### What do edge sensitive circuits let us build?

