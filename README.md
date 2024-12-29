# Objective-C NSString Immutability Bug

This repository demonstrates a common error in Objective-C related to the immutability of `NSString` objects. The `stringByAppendingString:` method doesn't modify the original string; instead, it returns a new string.  This often leads to unexpected results if developers aren't aware of this behavior. The solution shows the correct way to handle string concatenation in Objective-C.

## How to Reproduce

1. Clone this repository.
2. Open the `bug.m` file. This demonstrates the incorrect approach.
3. Compile and run. Notice that the output doesn't include the appended text.
4. Now examine `bugSolution.m` to see the corrected version.