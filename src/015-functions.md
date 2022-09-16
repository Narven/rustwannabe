# Functions

Functions allow us to create smaller blocks of code that have a specific purpose.

Funtions requirements:
* start with `fn` (FUN)
* `snake_case` by naming convention
* they don't have to appear in any specific order to be able to be called

{caption: "Simple function example"}
```rust
fn do_stuff() { // defining a function
	println!("Hi");
}

// main is a function given by rust that is the entry point of our application
fn main() {
	do_stuff(); // calling the function inside main
}

// Hi
```

## Passing by value (borrowing)

Passing by value means that the value of the variable is copied into the destination, in the next example it would be the `say_hello` function.

{caption: "Example passing by value"}
```rust
fn main() {
	let name = "John"; // `name` is owned by `main()`
	say_hello(name); // it's borrowed by `say_hello` and return back
	println!("{}", name);
}

fn say_hello(name: &str) { // variable is borrowed (copied)
	println!("Hello {}", name); // when the function finishes it gets return to the owner `main`
}
```

## Pass by reference

We pass by reference meaning that we are allowed to change the data.

{caption: "Example passing by reference"}
```rust
fn main() {
	let mut name = "John";
	say_hello(&mut name);
	println!("{}", name);
}

fn say_hello(name: &mut &str) {
	println!("Hello {}", name); // we print the name that arrived
	*name = "Ferrari"; // we access the variable with `*`
}
```

## Return values

{caption: "Example with return type"}
```rust
fn main() {
	let mut name = "John";
	let hello = say_hello(&mut name);
	println!("{}", hello);
}

fn say_hello(name: &mut &str) -> String {
	format!("Hello {}, how are you?", name)
}
```

{blurb, class: info}
Parameters are always `name` `colon` `type` 
Return type is defined by `->` `type` 
{/blurb}


```rust
fn do_stuff(speed: f32, gas: f64) -> f64 {
	return speed *gas;
}
```

- return values use the `return` keyword

`Tail Expression` - alternative syntax for returning: 

```rust
fn do_stuff(speed: f32, gas: f64) -> f64 {
	speed * gas // short syntax for return, no semicolon in last statement
}
```

- no `return` keyword
- no `;` semicolon at the end

```rust
{ return true; }
// same
{ true }
```

> At the time of the writting of this book (2022), named arguments dont exist in functions.


{pagebreak}
