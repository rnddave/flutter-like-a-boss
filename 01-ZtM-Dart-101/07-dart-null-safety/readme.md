# Null Safety

Sometimes we have null values. But sometimes we do not.

Null safety is a compile time check to see if a null type is required. 

Null Safety means that we can't do things like 

> int age = null; 

Because int and null are both data-types, therefore age cannot be both an INT and NULL at the same time. 

Types are NON-NULLABLE by default in Dart (since some time in 2021). 

We could do this: 

> int? age;

now AGE is an int, but the ? allows it to be NULL until we set it to an int. 

---

So previously you could do something like 

    void main() {
        int a;  // this would be null until it was used
        int b = 2;

        print(a + b);   // this would Compile BUT would cause a RUNTIME error
    }

So previously, we might not know there was an error until the program was running, if that program was quite large it could be a long time or under unusual use cases that this null-int caused a runtime error.

Null safety removes that worry for a hidden data-type error. 

    void main() {
        int? a;  // AGAIN this would be null until it was used
        int b = 2;

        print(a + b);   // This would FAIL at COMPILE time
    }

This is what it means for null-safety - we catch these potential obscure errors at compile and therefore before the app is out in the wild. 

---

## Flow Analysis: Promotion 

- Dart is clever enough to see if the null check is in a conditional expression


## Assertion Operator (!)

    void main() {
        int x = 42;
        int? maybeValue;    // null data type 

        if (x > 0) {
            maybeValue = x;
        } 

        int value = maybeValue; 
        print(value);   // COMPILE error = type int? can't be assigned to a type int
    }

COMPILE error = type int? can't be assigned to a type int

so we can make this change >> 


    void main() {
        int x = 42;
        int? maybeValue;    // null data type 

        if (x > 0) {
            maybeValue = x;
        } 

        int value = maybeValue!;    // added the assertion (!) operator to this line 
        print(value);   // no compile error
    }

This is the programmers flex - ** I know what I am doing! **

The problem with this is that in this case, it will run and produce 42 at console

However, if the int x had been a negative number, then it would have still compiled (programmers flex (I know more than dart)), but it would have failed at runtime as the [int? maybevalue] variable is still set to the null datatype. 

// ERROR: NoSuchMethodError: '<Unexpected Null Value>'

