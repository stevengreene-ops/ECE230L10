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

## Summary

## Lab Questions

### What is difference between edge and level sensitive circuits?

### Why is it important to declare initial state?
Declaring an initial state is critical because hardware memory elements like flip-flops have no default value upon power-up. Without an initial state, these components may start in a random condition, leading to undefined behavior where the logic fails to execute correctly. Setting a known starting point ensures that your physical implementation matches the simulation and allows the edge sensitive transitions to begin from a predictable and stable value.

### What do edge sensitive circuits let us build?
Edge sensitive circuits, such as D Flip-Flops, are the foundation of clocked circuits and modern computer memory systems. Unlike level-sensitive latches, which can lead to infinite loops of logic, edge-triggered components only update their state at a specific snapshot in time. This precise timing allows engineers to build complex counters, state machines, and synchronized processing units that can reliably add, store, and manipulate data without the hardware toggling uncontrollably.
