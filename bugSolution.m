The correct way to append strings in Objective-C, given `NSString`'s immutability, is to use the returned string:

```objectivec
NSString *myString = [[NSString alloc] initWithString:@"Hello"];
myString = [myString stringByAppendingString:@" World!"];
NSLog(@"%@", myString); // Prints "Hello World!"
```

Alternatively, for more efficient string manipulation, consider using `NSMutableString` which is mutable:

```objectivec
NSMutableString *mutableString = [[NSMutableString alloc] initWithString:@"Hello"];
[mutableString appendString:@" World!"];
NSLog(@"%@", mutableString); //Prints "Hello World!"
```
This approach is generally preferred for multiple append operations to avoid unnecessary string object creation.