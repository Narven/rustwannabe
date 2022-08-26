# Scope

> The scope of a variable starts from the place where it is created till the end of the block. Along the way is acessed inside blocks.


```rust
fn main() { // <-- main block starts here

	let door = 5; // door is defined in the main block
	
	{ // <-- another block starts here
		let speed = 99;
		println!("{}, {}", door, speed); 
	} // <-- another block ends here, `speed` gets destroyed here
	
	println!("{}, {}", door, speed); // Error `speed` does not exists here

} // main block ends here
```

## Shadow

Shadowing is when you reassign the same variable with a new value

It can be in diferent scopes:
```rust
fn main() { // <-- main block starts here

	let posX = 5; // posX is defined in the main block
	
	{ // <-- another block starts here
		let posX = 99; // posX is redefined here
		println!("{}", posX); 
	} // <-- another block ends here, inner `posX` gets destroyed here
	
	println!("{}", posX); // Initial `posX` gets printed here

} // main block ends here
```

Or in the same scope:
```rust
fn main() {
	let mut posX = 200.5;
	let posX = posX; // we changed the mutability of the variable
}
```

Or even changing the type:
```rust
let name = "Blue Alley"
let name = assign_to(name);
```

## Memory

Rust garantees memory safety at compile time. Variables need to be initialized before using them.

```rust
fn main() {
	let car: String;
	println!("{}", car); // WILL NOT WORK
}

fn main() {
	let car: String = "Merc";
	println!("{}", car); // WORKS
}
```
