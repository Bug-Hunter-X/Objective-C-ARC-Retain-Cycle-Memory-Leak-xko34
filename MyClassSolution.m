To resolve the retain cycle, modify the `MyClass`'s `myObject` property to be weak:

```objectivec
#import "MyClass.h"

@interface MyClass ()
@property (nonatomic, weak) AnotherClass *myObject; // Changed to weak
@end

@implementation MyClass
// ...rest of the class implementation...
@end
```
By declaring `myObject` as `weak`,  `MyClass` will not retain `AnotherClass`. When `MyClass` is deallocated, `myObject` will be automatically set to `nil`, breaking the retain cycle and allowing both objects to be deallocated correctly.  This prevents memory leaks and ensures proper memory management.