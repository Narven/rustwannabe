# Enums

```rust
enum Color {
	Red,
	Green,
	Blue,
}

let color = Color::Red;
```


But **Enums** can do much more. Enums can have.

```rust
enum DispenserItem {
	Empty,                  // no data
	Ammo(u8),               // single type of data
	Things(String, i32),    // tuple of data
	Place {x: i32, y: i32}, // anonymous struct of data
}
```

> Enums are like Unions in C, but much better 😁️


```rust
use DispenserItem::*;

let item = Empty;
let item1 = Ammo(69);
let item2 = Things("hat".to_string(), 7);
let item3 = Place{x: 24, y: 48};
```


Implement functions and methods in Enum 🤯️

```rust
ipml DispenserItem {
	fn display(&self) {}
}
```


Using Enums with generics 🤯️

```rust
enum Option<T> {
	Some(T),
	None,
}
```


Since Enums can be anything you need to pattern match using `if let`

```rust
if let Some(x) = my_variable {
	println!("value is {}", x);
}
```

or we can use the `match` expression:

```rust
match my_variable {
	Some(x) => {
		println!("value is {}", x);
	},
	None => {
		println!("no value");
	},
}
```

> paterns in a match must be exaustive (all possible outcomes must be defined)

We can use underscore `_` for any match:

```rust
match my_variable {
	_ => {
		println!("who cares");
	},
}
```

another example:

```rust
match "abcd" {
	"abcd" => println!(),
	"a" | "b" => println!(),
	_ => {}
}
```

----

### Special Enums (Option & Result)


**Option**
> Options is used when something might be absent.


```rust
let mux x: Option<i32> = None;
x = Some(5);
x.is_some();
x.is_none();

for i in x {
	println!("{}", i);
}
```


**Result**
> Is used when something might have useful result or error


```rust
// this is the definition of Result in the standard library
#[must_use]
enum Result<T, E> {
	Ok(T),
	Err(E),
}
```


Example:

try to open a file:

```rust
use std::fs::File;

fn main() {
	let res = File::open("foo");
	lef f = res.unwrap();
}
```


```rust
use std::fs::File;

fn main() {
	let res = File::open("foo");
	let f = res.expect("error message");
}
```


```rust
use std::fs::File;

fn main() {
	let res = File::open("foo");

	if res.is_ok() {
		lef f = res.unwrap();	
	}
}
```


Using full pattern matching:

```rust
use std::fs::File;

fn main() {
	let res = File::open("foo");
	match res {
		Ok(f) => { /* do stuff */ },
		Err(e) => { /* do stuff */ },
	}
	
}
```

{pagebreak}
