# Modules

Modules allows use to split and organize our code into blocks of code that are related.

By using the keyword `mod` we can specific a module, and write inside the `{}` the code we need.

## Modules in external files

A simple example using modules

Create a file `car.rs`.

{caption: "src/car.rs"}
```rust
// function needs to public `pub`
pub fn change_radio_station(mhz: f64) {
  println!("Changed station to {}", mhz);
}

// function needs to be public `pub`
pub fn turn_off_radio() {
  println!("Radio turned off");
}
```

{caption: "src/main.rs"}
```rust
// In main we `import` using `mod car`.
mod car;

fn main() {
  car::change_radio_station(101.10);
  car::turn_off_radio();
}
```

## Modules in the same file

{caption: "src/main.rs"}
```rust
// this module is defined in the same file has main.rs
// still needs to be `pub`
pub mod car {
    pub fn start_cart() { // still needs to be `pub`
        println!("Starting car...");
    }
}

fn main() {
    car::start_cart(); // we just call our module
}
```

## Nested Modules

We can nest modules just by creating a another module inside an existing one, but we cannot forget to make them public with `pub`.

{caption: "Example with nested modules"}
```rust
pub mod car {
  pub mod engine {
    pub fn ignite() {
      println!("Ignite fuel...");
    }
  }

  pub fn start_cart() {
    println!("Starting car...");
  }
}

fn main() {
  car::engine::ignite();
  car::start_cart();
}
```

## Modules in subfolders

You can also use folders to separate modules:

```bash
❯ tree --noreport
.
├── Cargo.lock
├── Cargo.toml
├── examples
├── src
│   ├── http
│   │   ├── method.rs
│   │   ├── mod.rs
│   │   └── request.rs
│   ├── main.rs
│   └── server.rs
```

_src/http/mod.rs_
```rust
pub use method::Method;
pub use request::Request;

pub mod method;
pub mod request;
```

_src/http/method.rs_
```rust
pub enum Method {
  GET,
  HEAD,
  POST,
  PUT,
}
```

_src/http/request.rs_
```rust
use super::method::Method;

pub struct Request {
    path: String,
    query_string: Option<String>,
    method: Method,
}
```

_src/main.rs_
```rust
use http::Method; // import what we need from Method
use http::Request; // import what we need from Request
use server::Server;  // import what we need from Server

mod http; // We want to use all stuff from http

let _get = Method::GET();
```

---


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

{pagebreak}
