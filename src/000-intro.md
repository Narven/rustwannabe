# Rust (Safety, Concurrency, Speed)

https://github.com/Narven/rustwannabe


## Selling points

* System Programming
* Memory safety
  * without garbage collecton
* Performance
* Strongly typed


* Language basics
  * Data Types
  * Control Flow
  * Functions
  * Structures
* Advanced
  * Ownership and borrowing
  * Concurrency
  

{caption: "Declaration of variable in rust"}
```rust
fn main() {
    let name = "John";
    let age = 32;
}
```

{format: rust, caption: "Declaration of variable in rust"}
```
fn main() {
    let name = "John";
    let age = 32;
}
```

{format: rust, caption: "Declaration of variable in rust"}
```rust
fn main() {
    let name = "John";
    let age = 32;
}
```


B> Marzipan fruitcake oat cake jelly beans snaps chocolate toffee danish
cupcake lollipop marshmallow topping. lollipop.

{blurb}
#A Longer Blurb
This is a longer blurb.
It can have multiple paragraphs.
{/blurb}

{class: warning}
B> This is a warning!

{blurb, class: warning}
This is a warning!
{/blurb}

{aside}
# A Note About Asides
This is a longer aside.
It can have multiple paragraphs.
Asides can also have headings, like this one does.
Multi-paragraph asides are more pleasant using this syntax.
{/aside}

D> This is a discussion blurb.
E> This is an error blurb.
I> This is an information blurb.
Q> This is a question blurb.
T> This is a tip blurb.
W> This is a warning blurb.

A> # A Longer Aside
A>
A> This is a longer aside.
A>
A> It can have multiple paragraphs.
A>
A> The `A> ` stuff can get tedious after a while.
A>
A> This is why the `{aside}` syntax exists.

X> This is an exercise blurb.

{blurb, class: discussion}
This is a discussion blurb.
{/blurb}

{blurb, class: error}
This is an error blurb.
{/blurb}

{blurb, class: information}
This is an information blurb.
{/blurb}

{blurb, class: question}
This is a question blurb.
{/blurb}

{blurb, class: tip}
This is a tip blurb.
{/blurb}

{blurb, class: warning}
This is a warning blurb.
{/blurb}

{blurb, class: exercise}
This is an exercise blurb.
{/blurb}


{class: tip}
W> This is a tip blurb, not a warning blurb.


C> This is a centered blurb.
{class: center}
B> This is a centered blurb.


{icon: car}
B> You can't spell carbon without it!
{icon: leanpub}
B> Yes, we're in Font Awesome!
{icon: github}
B> So is GitHub, of course. Unicorns.

{quiz, id: quiz2}
# Markua Quiz
Watch this [video](https://www.youtube.com/watch?time_continue=1&v=VOCYL-FNbr0) of Peter explaining Markua.
? What year was that video from?
What year? Really? Did it really take that long? What was going on???
a) 2012
b) 2013
C) 2014
d) 2015
{words: 500}
? Why do you think the first version of the Markua spec took so long?
{/quiz}

{choose-answers: 4}
? How many grams are in a pound?
C) 454
C) 453
m) 451
m) 1000
o) 100
o) 150
o) 200
o) 250
o) 300
o) 500

? How many unique letters are in the word Markua? !5
? What's the global capital of investment banking? ! New York ; London
? What's the global capital of investment banking?
! "New York" ; "London"
? What's the global capital of investment banking?
! New York
! London
? What's the global capital of investment banking?
! "New York"
! "London"
{case-sensitive: false}
? What's pi?
! "The ratio of a circle's circumference to its diameter" ; 3.14 ... 3.1416 ; an irrational number
{case-sensitive: false}
? What's pi?
! "The ratio of a circle's circumference to its diameter"
! 3.14 ... 3.1416
! an irrational number
? Where's the Eiffel Tower?
! /(Paris|France)/i
? Where's the Eiffel Tower?
! /Paris/i ; /France/i
{points: 2}
Quizzes and Exercises 69
? Where's the Eiffel Tower?
! /Paris/i
! /France/i
{points: 2}
? Where's the Eiffel Tower?
!2 /Paris/
!1 /paris/i
!.5 /France/i
{points: 2}
? Where's the Eiffel Tower?
! /Paris/
!1 /paris/i
!.5 /France/i
{points: 2}
? Where's the global capital of investment banking?
!2 New York ; London
!1 USA ; UK


This has a footnote[^thenote].

[^thenote]: This is the footnote content.


{id: some-id}
This is a paragraph with the id of `some-id`.

{#some-id}
This is a paragraph with the id of `some-id`.

The word Markua{id: markua} has an id.
Leanpub is based in **Victoria, BC, Canada**{id: victoria}.

{#one}
# Chapter One
That works.
{id: chapter-two}
# Chapter Two
That works too.
You also can say ![here's a horse image](images/horse.jpg){#horse} in Leanpub.

{sample: true}
# Chapter One
This is included in the sample.
## Section One
This is included in the sample.
{sample: false}
## Section Two
This is *not* included in the sample.
## Section Three
This is included in the sample.
{book: false, sample: true}
# Buy the book!
What you read was just a sample. Why not buy the full book?
# Chapter Two
This is not included in the sample.

{frontmatter}
# Preface
Foo
{mainmatter}
# Chapter One
Bar
# Chapter Two
Baz
{backmatter}
# Appendix
Hello world.


{pagebreak}
