Structs in Rust are "classes" in other languages.

```rust
struct RedFox {
	enemy: bool,
	life: u8,
}
```

- starts with the keyworkd `struct`
- followed by the name with `KebabCase`
- last field needs ending comma `,`

**Instantiating a struct**

```rust
let fox = RedFox {
	enemy: true,
	life: 70,
};
```


but usually o implement a associated function:

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


the uses a implementation block `impl` that is separated from the struct definition.

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
