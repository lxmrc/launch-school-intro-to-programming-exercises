>Look at the following programs...

```ruby
x = 0
3.times do
  x += 1
end
puts x
```

```ruby
y = 0
3.times do
  y += 1
  x = y
end
puts x
```

>What does `x` print to the screen in each case? Do they both give errors? Are the errors different? Why?

The first one prints `3`.

Assuming the second one is in its own separate file it gives an error: `undefined local variable or method 'x' for main:Object (NameError)`. This is because `x` is being defined within the scope of the `do`/`end` block and isn't available outside of it.
