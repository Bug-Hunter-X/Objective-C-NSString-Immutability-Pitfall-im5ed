In Objective-C, a common yet subtle error arises when dealing with `NSString` objects and their mutability.  Consider this scenario:

```objectivec
NSString *myString = [[NSString alloc] initWithString:@"Hello"];
[myString stringByAppendingString:@" World!"];
NSLog(@"%@", myString); // Still prints "Hello"
```

The `stringByAppendingString:` method *returns* a new string with the appended text; it does *not* modify the original string.  Because `NSString` is immutable, attempting to modify it in-place will fail. The original string remains unchanged. 