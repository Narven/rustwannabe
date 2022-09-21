# Macros

Macros always end with `!`. At the core, it means that a macro will expand into more complex code. That is a more advanced topic, not discussed in this book.

We give a brief overview of the most common macros used.

## println!

Printing to the console is extremely valuable, both for debugging and to show information to the user.

`println!` is a macro (more on that in the section of Macros). Any function syntax that the name ends in `!` is a macro in Rust.

```rust
fn main() {
	// Simple print of some string
	println!("Hello World!");
}
```

{caption: "Interpolate variables into a single string"}
```rust
fn main() {}
	println!("My name is {} and I'm {} years old", "John", 38);
}
```

{caption: "Calculate the result of an expression directly into the output"}
```rust
fn main() {
	println!("a + b = {}", 2 + 8);
}
```

{caption: "Using positional arguments"}
```rust
fn main() {
	// Usefull if the one of the arguments is repeated multiple times
	println!("{0} has {1} {2}. He love's {2}.", "John", 2, "cats")
}
```

{caption: "Using named arguments"}
```rust
fn main() {
	println!("{name} {surname}", surname="Doe", name="John");
}
```

{caption: "Using with Traits"}
```rust
fn main() {
	println!("binary: {:b}, hex: {:x}, octal: {:o}", 50, 50, 50);
}
```

{caption: "Print with debug"}
```rust
fn main() {
	// Used with complex structures
	// We use {:?}
	println!("array: {:?}", [1, 2, 3]);
}
```

## format!

`format` is another macro that allows us to form new sentences.

```rust
let owner = format!("My name is {} and I have a {}", "John", "cat");
```

## assert!

Asserts that a boolean expression is true at runtime.
This will invoke the panic! macro if the provided expression cannot be evaluated to true at runtime.

```rust
fn main() {
  assert!(true);
}
```

## assert_eq!

Asserts that two expressions are equal to each other.
On panic, this macro will print the values of the expressions with their debug representations.

{format: rust, line-numbers: true}
```rust
fn main() {
  assert_eq!(10 > 3, true);
  assert_eq!(5 >= 10, false);
}
```

{blurb, class: tip}
Please refer to these links for more deeper knowledge on macros:
* [Official Rust Book - Macros](https://doc.rust-lang.org/book/ch19-06-macros.html)
* [The Little Book of Rust Macros](https://danielkeep.github.io/tlborm/book/index.html)
{/blurb}

{pagebreak}
