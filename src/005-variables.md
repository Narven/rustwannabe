# Variables

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


## Immutable / Mutable

> 
> By default variables are IMMUTABLE (CANNOT BE CHANGED), unless specified, using **mut**  
>

```rust
fn main() {
	// we are defining a variable `number_of_doors`, default is IMMUTABLE
	let number_of_doors = 3;
	// ... some other code...
	number_of_doors = 4; // <-- This will throw a compiler ERROR
}
```

Using `mut` (MUTABLE):

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

> We are using a Tuple on the right size `(1, 3)`, we will talk more about tuples later in the book.

## Contants

Basic example:
```rust
const MILES_PER_HOUR: f64 = 70.5;
```

- const instead of let
- ALL UPPERCASE snake names (convention)
- type annotation (f64) is required
- value assigned must be a constant expression that can be determine at compile time


> TIP: Variables must be INITIALIZED before you can used them

Constants are usually used has global variables, because they will never change.

```rust
fn main() {
	let enigma: i32;        // variable declared but NOT INITIALIZED
	println!("{}", enigma); // ERROR!
}
```

#### Differences between `CONST` and `LET`

> Const needs to be `type annotated`:

```rust
const VARIABLE_NAME: u32 = 10;
```

> Consts cannot have `mut` (mutable)

```rust
const mut VARIABLE_NAME: u32 = 10; // WRONG
```

> consts can only be set to constant expressions


> we cannot create a const to the return value of a function or any value that could be computed at runtime


> Let variables can be reassigned (even with another type) if they are immutable;

```rust
let x = 10;
println!("the value of x is: {}", x);
let x = "1000000"; // This is called shadowing
println!("the value of x is: {}", x);
```

---

## Data types

### Scalar

> A Scalar type represents a single value

Rust has 3 scalar data types:

* Integers
* Floating point numbers
* Booleans
* Charater


### Compound

> Compount types represent a group of values

* List
* Tuple

// TODO add more on compoun
