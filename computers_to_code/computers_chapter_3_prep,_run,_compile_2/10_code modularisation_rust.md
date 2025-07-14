# How to Make Modular Code in Rust (Succinct Guide)
Modular code in Rust means splitting your program into reusable, well-organized components using mod, use, and files.

## 1. Project Structure Example

src/    
├── main.rs           ← entry point
├── lib.rs            ← for reusable logic (optional)
├── utils/
│     ├── mod.rs      ← defines the utils module
│     └── math.rs     ← a submodule of utils
└── models.rs         ← flat module


## 2. Defining Modules
In main.rs or lib.rs, declare:


mod utils;
mod models;

In utils/mod.rs, define submodules:

pub mod math;

In utils/math.rs, write normal Rust code.


## 3. Making Things Public
Rust is private-by-default.

Use pub to expose items:

// utils/math.rs
pub fn add(a: i32, b: i32) -> i32 {
    a + b
}


## 4. Using Functions Across Modules
Import with use:

// main.rs
mod utils;

use utils::math::add;

fn main() {
    println!("{}", add(2, 3));
}


## 5. lib.rs for Libraries
If you're making a crate:

// lib.rs
pub mod utils;
pub mod models;

Then use it from main.rs like:

use mycrate::utils::math::add;


## 6. Bonus Tips
Keep related functions grouped in modules.

Avoid pub use everything blindly — be intentional.

Use crate:: to reference root-level paths.

Test modules with #[cfg(test)] inside each file.


### If you remember one thing:
Rust’s modular system mirrors the filesystem — define mod, expose with pub, access with use.