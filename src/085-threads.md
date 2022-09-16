# Threads

```rust
use std::thread;

fn main() {
	let handle = thread::spawn(move || {
		// do stuf in a child thread
	});

	// do stuff simultaneously in the main thread

	// wait unitl the thread has exited
	handle.join().unwrap();
}
```

{pagebreak}
