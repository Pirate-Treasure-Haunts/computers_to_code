# How to Make Modular Code in C++ (Succinct Guide)
Modular C++ code means splitting logic across .h (headers) and .cpp (implementations), grouping things by purpose, and compiling everything together cleanly.

## 1. Project Structure Example

myproject/
├── main.cpp                ← entry point
├── math/
│     ├── math.h            ← function declarations
│     └── math.cpp          ← function definitions
└── utils.h                 ← flat module


## 2. Header Files (.h)
Declare functions and classes

Use include guards or #pragma once

`// math/math.h`
`#pragma once`

int add(int a, int b);


## 3. Implementation Files (.cpp)
Define the functions declared in headers:

`// math/math.cpp`
`#include "math.h"`

`int add(int a, int b) {`
`    return a + b;`
`}`


## 4. Use the Module in main.cpp
`#include <iostream>`
`#include "math/math.h"`

`int main() {`
`    std::cout << add(2, 3) << std::endl;`
`    return 0;`
`}`


## 5. Compile All the Parts
Use g++ or clang++ to build all .cpp files:

`g++ main.cpp math/math.cpp -o myprogram`
Or use a Makefile, CMake, or VS project to manage build steps automatically.


## 6. Reusable Patterns
Group related code in folders (math/, io/, core/)

Keep declarations in `.h`, implementations in `.cpp`

Only include what you need

Keep global state to a minimum!


## 7. Use Include Guards (Legacy Style)
If you don’t use #pragma once, do:

`// utils.h`
`#ifndef UTILS_H`
`#define UTILS_H`

`void do_something();`

`#endif`

Prevents “multiple definition” compile errors.


## 8. Optional: Namespaces
Avoid name collisions:

`namespace math {`
`    int add(int a, int b);`
`}`
`Then use: math::add(1, 2);`


### If you remember one thing:
C++ modules = `.h` for declarations, `.cpp` for definitions. Include headers where needed, compile all `.cpp` files together. Keep clean separation and avoid duplication!
