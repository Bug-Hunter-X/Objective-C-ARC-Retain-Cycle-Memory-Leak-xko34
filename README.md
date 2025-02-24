# Objective-C ARC Retain Cycle Example
This repository demonstrates a common memory leak in Objective-C caused by a retain cycle when using Automatic Reference Counting (ARC).

The `MyClass.m` file contains the problematic code exhibiting the retain cycle. The solution, which involves using `weak` properties to break the cycle, is provided in `MyClassSolution.m`.

This example highlights the importance of understanding object ownership and memory management in Objective-C to avoid these types of leaks.