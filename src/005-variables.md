# Variables

Variables in rust are prety similar to any other language.

{blurb, class: info}
Rules for defining a variable:

* Names can contain letters, numbers and underscores `_`
* Must start with a letter or underscore `_`
* Rust follows the `snake_case` convention for naming variables
* Immutable by default
{/blurb}

{caption: "Declaration of variable in rust"}
```rust
fn main() {
    let name = "John";
    let age = 32;
}
```

***Rust is a strongly typed language***. What does this means? It means that at compile time rust knows exaclty the type of variable you declared. The type of variable is _optional_, meaning that rust can infer the type of the variable in most cases based on what is being assigned to the variable. In the example above we did not specified that the variable `name` is of type `&str` (more on that later), and also with `age` we did not need to specify the type `i32`, rust just used the defaults for those specific types.

There is sometimes the need to specify the types. For example:

```rust
fn main() {
    let amount = 537892347298347239;
}
```

{blurb, class: info}
`i64` means that this type is an integer of 64 bits.
{/blurb}

In the case above if you don't specify the type, the compiler will throw an error. Why? The error thrown by the compiler is pretty self explanatory:

{caption: "Error thrown by the compiler"}
```bash
error: literal out of range for `i32`
 --> src/main.rs:2:18
  |
5 |     let amount = 537892347298347239;
  |                  ^^^^^^^^^^^^^^^^^^
  |
  = note: `#[deny(overflowing_literals)]` on by default
  = note: the literal `537892347298347239` does not fit into the type `i32` whose range is `-2147483648..=2147483647`
  = help: consider using the type `i64` instead
```

 By default integer's if not specified the type the are `i32` (integer with 32 bits), which in this case is to large number to be `i32`. The compiler says "does not fit" and gives you the "help" to define it has `i64`.

In Rust we declare (in rust is called binding) variables using `let` or `const`.

```rust
fn main() {
	// declare using let statement and initialized to integer 2
	// by default you can leave out the type annotion, because the
	// compiler can infer the type
	let number_of_doors = 3;
}
```

If you want to be more explicity, you can define the type:

```rust
fn main() {
	let number_of_doors: i32 = 2; // we define it to be i32
}
```

The `i32` is a "short name" tells the compile that the variable `number_of_doors` can only hold `a signed 32-bit integer`.

A `integer` is a number without a fractional component.

This still does not work:

```rust
fn main() {
	let wheel_size: i32;
	if true {
		wheel_size = 42;
	}

	println!("{}", wheel_size); // ERROR
}
```

But this works:

```rust
fn main() {
	let wheel_size: i32;
	if true {
		wheel_size = 42;
	} else {
		wheel_size = 22;
	}

	println!("Wheel size is: {}", wheel_size); // SUCESS
}
```

## Destructuring using let

```rust
fn main() {
	let (bunnies, carrots) = (8, 5);
	println!(bunnies); // prints 8
	println!(carrots); // print 5;
}
```

## Immutable / Mutable

{blurb, class: info}
By default variables are IMMUTABLE (CANNOT BE CHANGED), unless specified, using **mut**
{/blurb}

{caption: "Defining a IMMUTABLE variable, cannot change."}
```rust
fn main() {
	// we are defining a variable `number_of_doors`, default is IMMUTABLE
	let number_of_doors = 3;
	// ... some other code...
	number_of_doors = 4; // <-- This will throw a compiler ERROR
}
```

Using `mut` (MUTABLE):

{caption: "Defining a MUTABLE variable, can change."}
```rust
fn main() {
	// `mut` keyword allows us to tell the compiler,
	// "I want to be able change this later"
	let mut number_of_doors = 3;
	// later on... on some other part of the code...
	number_of_doors = 4;
}
```

## Destructuring

Using `let` we can destructure from the right size and initilize multiple variables at once on the left side:

```rust
fn main() {
	// the data on the right side will map to the variables on the left side.
	let (engine, doors) = (1, 3);
}
```

{blurb, class: info}
We are using a Tuple on the right size `(1, 3)`, we will talk more about tuples later in the book.
{/blurb}

## Shadowing

Shadowing is allowed. We can declare the same variable twice, and reassign that variable name.

{caption: "Example of shadowing"}
```rust
fn main() {
    let color = "blue";
    let color = 86; // reassigned, even to a different type

    println!("{}", color); // we get 86
}
```

## Declare multiple variables simultaneus

```rust
fn main() {
	let (a, b, c) = (2, 3, "pink");
}
```

{pagebreak}
