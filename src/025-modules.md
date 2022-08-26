# Modules

Modules allows use to split and organize our code into blocks of code that are related.

By using the keyword `mod` we can specific a module, and write inside the `{}` the code we need.

```rust
mod server {
  pub struct Server {
    addr: String,
  }

  impl Server {
    pub fn new(addr: String) -> Self {
      Self { addr }
    }
  }
}

// Usage
server::Server::new("127.0.0.1:8080".to_string());
```

The code above is an example of an `inline module`. We can also define modules per `file`.

<p>
> Every file in Rust is treated like a module.
</p>


_server.rs_
```rust
pub struct Server {
  addr: String,
}

impl Server {
  pub fn new(addr: String) -> Self {
    Self { addr }
  }
}
```

_main.rs_
```rust
use server::Server; // we import the module file

// we defined that we want to use it
// imagine that the compile is pasting the contents of what
// is in the file here.
mod server;

fn main() {
  // and we call the struct with its associated method
  let serv = Server::new("127.0.0.1:8080".to_string());
}
```

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
