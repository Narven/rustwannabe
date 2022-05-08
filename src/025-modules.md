# Modules

```rust
❯ tree --noreport
.
├── Cargo.lock
├── Cargo.toml
├── src
│   ├── lib.rs	  // the hello library
│   └── main.rs    // the hello binary
```


src/libs.rs

```rust
fn greet() {
  println!("Hi!");
}
```


main.rs

```rust
fn main() {
    hello::greet(); // does not work, all items in a library are private by default
}
```

> `hello` is the name of the project defined in `Cargo.toml` 

> Calling the functions is by defining the namespace `hello` `::` `function name` 


updated src/libs.js

```rust
pub fn greet() { // making it public
  println!("Hi!");
}
```


```rust
fn main() {
    hello::greet(); // works, but not the best option
}
```


better:

```rust
use hello::greet;

fn main() {
    greet(); // much better
}
```


using some function from the standard library:

```rust
use std::collections::HashMap;
```


using some function from another package:

```rust
use rand::thread_rng;

fn main() {
	let x = thread_rng().gen_range(0, 100);
}
```
