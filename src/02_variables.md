## Variables

In Rust we declare (in rust is called binding) variables using `let` or `const`.


```rust
fn main() {
	let bunnies = 2;
}
```

We can defined the type using:

```rust
fn main() {
	let bunnies2: i32 = 2; // we define it to be i32
}
```

or we can just let Rust infer the type

```rust
fn main() {
	let bunnies2 = 2; // rust infers base on the value
}
```

The `i32` is a "short name" tells the compile that the variable `bunnies2` is can only hold `a signed 32-bit integer`.

A `integer` is a number without a fractional component.

> 
> By default variables are IMMUTABLE, unless specified, using **mut**  
> 

```rust
fn main() {
	let mut bunnies = 10;
	bunnies = 20;
}
```


### Contants

> Consts by default are written in a UPPER_SNAKE_CASE format

```rust
const WRAP_FACTOR: f64 = 9.9;
```

- const instead of let
- ALL UPPERCASE snake names (convention)
- type annotation (f64) is mandatory
- value assigned must be a constant expression that can be determine at compile time


> Variables must be INITIALIZED before you can used them


```rust
fn main() {
	let enigma: i32;        // variable declared but NOT INITIALIZED
	println!("{}", enigma); // ERROR!
}
```


This still does not work:

```rust
fn main() {
	let enigma: i32;
	if true {
		enigma = 42;
	}

	println!("{}", enigma); // ERROR
}
```


But this works:

```rust
fn main() {
	let enigma: i32;
	if true {
		enigma = 42;
	} else {
		enigma = 22;
	}

	println!("enigma is {}", enigma); // SUCESS
}
```

### Differences between `CONST` and `LET`

##### Const need to be `type annotated`:

```rust
const VARIABLE_NAME: u32 = 10;
```

##### Consts cannot have `mut` (mutable)

```rust
const mut VARIABLE_NAME: u32 = 10; // WRONG
```

##### consts can only be set to constant expressions

> we cannot a const to the return value of a function or any value that could be computed at runtime

##### Let variables can be reassigned (even with another type) if they are immutable;

```rust
let x = 10;
println!("the value of x is: {}", x);
let x = "1000000"; // This is called shadowing
println!("the value of x is: {}", x);
```

## Data types

### Scalar

> represent a single value

Rust has 3 scalar data types:

* Integers
* Floating point numbers
* Booleans
* Charater


### Compound

> represent a group of value
