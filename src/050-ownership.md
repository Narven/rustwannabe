# Ownership

**3 Rules of Ownership:**


1. Each value has an OWNER
2. Only ONE OWNER
3. Value gets dropped if its owner goes out of scope

```rust
let s1 = String::from("abc");
let s2 = s1;
```


After this point `s1` is no longer the owner of the value;

Will get an error if we try to access `s1` 

```rust
let s1 = String::from("abc");
let s2 = s1;
println!("{}", s1); // ERRORRRR
```


### Table

Unordered

Variable size

Unordered

Fast

LIFO - Last value In First value Out

Values have FIXED SIZE

Stack stores values IN ORDER

**HEAP**

**STACK**

Initial:

![image](https://res.craft.do/user/full/3120da64-5cee-db1f-837f-1804f348eae7/0D1F736C-CF37-47D4-870A-3C32E7E3EE4C_2/yMEysGHfa0xMWNZZQGyX98QDWZKMJtG028wrBxnYx6oz/Screenshot%202022-03-26%20at%2012.45.58.png)

after assigin s1 to s2:

![image](https://res.craft.do/user/full/3120da64-5cee-db1f-837f-1804f348eae7/8A0D4925-0339-479F-83EC-E351E93C4401_2/RdaNrIdcx51KQlbtatmof3dArInydlzvj0y8SGsGyPEz/Screenshot%202022-03-26%20at%2012.46.37.png)

The value has MOVED to `s2`  (the ptr)

Since `s1` is IMMUTABLE we cant use it anymore. Is lost

Using clone:

```rust
let s1 = String::from("abc");
let s2 = s1.clone();
println!("{}", s1);
```


![image](https://res.craft.do/user/full/3120da64-5cee-db1f-837f-1804f348eae7/C5A2A184-8BA2-487B-889B-DFD413F3C25E_2/qygbbXyu39uTevM0k3EDN4mAkhACFQEyCOKXylx28ZIz/Screenshot%202022-03-26%20at%2012.49.44.png)

**When a value is dropped:**


1. Destructor runs
2. Free heap
3. Pop stack

Example:

```rust
let s1 = String::from("abc");
do_stuff(s1);
println!("{}", s1);

fn do_stuff(s: String) {
	// do stuff
}
```


In this case we cant use `s1` anymore because it go moved, and `s` inside `do_stuff` has now ownership.

How to solve this?

```rust
let mut s1 = String::from("abc");
s1 = do_stuff(s1);

fn do_stuff(s: String) -> String {
	s
}
```
