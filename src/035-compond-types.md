# Compound Data Types

* Tuples
* Structs
* Tuple Structs
* Enums

## Tuples

Tuples rules:
* They cannot be resized, they are static.
* Elements values can be updated
* Elements are indexed, so they can be accessed
* Limited to 12 elements

```rust
let info = (1, 3.3, 999);
// or
let info: (u8, f64, i32) = (1, 3.3, 999);
```

*How to access members of a tuple (2 ways)*

Dot syntax (using position):

```rust
let info = (1, 3.3, 999);
let jets = info.0;
let fuel = info.1;
let ammo = info.2;
```

Destructuring (extract elements from tuple):

```rust
fn main() {
    let info: (i32, f64, i32) = (1, 3.3, 999);
    let (jet, fuel, ammo) = info;

    println!("{}", jet);
    println!("{}", fuel);
    println!("{}", ammo)
}

// 1
// 3.3
// 999
```

{blurb, class: tip}
Arity means how many items are in the tuple
{/blurb}

## Structs

Structs in Rust are "classes" in other languages.

```rust
struct RedFox {
	enemy: bool,
	life: u8,
}
```

- starts with the keyword `struct`
- followed by the name in `KebabCase`
- the last field needs an ending comma `,`

**Instantiating a struct**

```rust
let fox = RedFox {
	enemy: true,
	life: 70,
};
```


but usually o implement an associated function:

```rust
impl RedFox {
	fn new() -> Self { // associated function
		Self {
			enemy: true,
			life: 70,
		}
	}
}
```


the uses an implementation block `impl` that is separated from the struct definition.

this would be used like this:

```rust
let fox = RedFox::new();
```


after this you access methods and fields using `dot syntax`:

```rust
let fox = RedFox::new();
let life_left = fox.life;
fox.enemy = false;
fox.some_method();
```


Methods are also defined im the **implementation block:**

```rust
impl RedFox {
	// associated function
	fn function()
	// methods
	fn move(self)
	fn borrow(&self)
	fn mut_borrow(&mut self)
}
```

{pagebreak}
