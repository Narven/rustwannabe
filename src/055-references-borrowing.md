# References & Borrowing

```rust
let s1 = String::from("abc");
do_stuff(&s1);

fn do_stuff(s: &String) {
	// do stuff
}
```

This way the ownership of the value still belongs to `s1`. The reference, not the value gets moved into `do_stuff`. At the end of the function, the reference gets lost, but the value continues with `s1`.

![image](https://res.craft.do/user/full/3120da64-5cee-db1f-837f-1804f348eae7/A04DF607-8CB6-44B7-8945-1AEA611EB238_2/6t8KG2bgCN0oPKQyPfsMWkZeqrDVKdIy4lrBFRmHuycz/Screenshot%202022-03-26%20at%2014.16.45.png)

![image](https://res.craft.do/user/full/3120da64-5cee-db1f-837f-1804f348eae7/EDDBFA42-3434-44D6-8C57-9143E3034466_2/KoxHopUi9azs6QGfilY1u8cyiZGywOeTmlCx4UfksI8z/Screenshot%202022-03-26%20at%2014.17.23.png)

References referer to **IMMUTABLE** so this is will not work:

```rust
let mut s1 = String::from("abc");
do_stuff(&s1);

fn do_stuff(s: &String) {
	s.insert_str(0, "Hi, "); // error
}
```


so we need to do this:

```rust
let mut s1 = String::from("abc");
do_stuff(&mut s1);

fn do_stuff(s: &mut String) {
	s.insert_str(0, "Hi, "); // ALL GOOD
}
```


### Table


*x is immutable i32

x: &i32

*x is the reverse, mutable i32

x: &mut i32

type of variable

type of immutable reference

type of mutable reference

&mut i32

&i32

i32

mutable reference to the variable value

&mut x

immutable reference to the variable value

&x

variable

x

{pagebreak}
