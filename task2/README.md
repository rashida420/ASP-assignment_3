# Task 2: Dynamic and Static Binding in C#

## Introduction

In this task, I created a simple C# program with a base class called `Shape` and two derived classes, `Circle` and `Hexagon`. I used these classes to show how the same method can behave differently depending on how it is defined and called.

## Implementation

I added a `Draw()` method to the `Shape` class and declared it using the `virtual` keyword. In the `Circle` and `Hexagon` classes, I used `override` to give this method a different implementation for each shape. In the `Main()` method, I created a `Circle` object and a `Hexagon` object using variables of type `Shape`. When I called `Draw()`, the program executed the method belonging to the actual object. This demonstrates **dynamic binding**.

I also added a `ShowType()` method to the `Shape` class. In the derived classes, I used the `new` keyword to hide the inherited method and provide a different version for each shape. When I called `ShowType()` through a `Shape` variable, the base class method was executed. When I called it through `Circle` and `Hexagon` variables, the methods defined in those classes were executed. This demonstrates **method hiding**, which I used to compare the behavior with dynamic binding.

## Output

```text
Dynamic Binding
Drawing Anna the Circle
Drawing Ben the Hexagon
Static Binding
Type: Shape
Type: Shape
Type: Circle
Type: Hexagon
```

