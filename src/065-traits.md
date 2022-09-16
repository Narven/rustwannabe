# Traits

Traits are similar to interfaces in other languages.

Rust takes **COMPOSITION** over **INHERITHANCE** approach.
> Traits define **required behaviour, in other words functions and methods that a Struct must implement if it wants to have that Trait**


```rust
struct RedFox {
	enemy: bool,
	life: u32,
}

trait Noisy {
	fn get_noise(&self) -> &str;
}
```


if `RedFox` wants to have the `Noisy` trait it needs to implement the `get_noise` method with that signature.

```rust
struct RedFox {
	enemy: bool,
	life: u32,
}

trait Noisy {
	fn get_noise(&self) -> &str;
}

impl Noisy for RedFox {
	fn get_noise(&self) -> &str { "Meow?" }
}
```


If we use traits we can use it in `generics`  and make item accept any value of type `T`, that implements the trait `Noisy` .

```rust
fn print_noise<T: Noisy>(item: T) {
	println!("{}", item.get_noise());
}
```

> Traits can implement other Traits

> Traits can have default behaviours


Implementing default behaviours in traits:

```rust
trait Run {
	fn run(&self) {
		println!("running...");
	}
}
```


```rust
struct Robot {}
impl Run for Robot {}

```

>  we dont implement `run` in `Robot`  and it will use the default behaviour. If it is defined it will override the default behaviour.


Full example:

```rust
trait Run {
	fn run(&self) {
		println!("running...");
	}
}

struct Robot {}
impl Run for Robot {}

fn main() {
	let robot = Robot{};
	robot.run(); // will print "running..."
}
```

**NOTE:** You cant define `FIELDS` in Traits. (Maybe added in the future). Alternative use getters and setters

{pagebreak}
