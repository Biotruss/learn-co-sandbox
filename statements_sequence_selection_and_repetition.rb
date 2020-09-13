#The sequence statement isn't so much a statement, as an assumption. Ruby, by default, will read our code according to the rules of a default sequence: "every line, top to bottom, left to right as ruled by order of operations."
result = 1 + 1
puts result #=> 2

#Sometimes we need to deviate from the default sequence. We might need to select a different path. The first tool we'll learn to do selection is (if). It disrupts the "default sequence" by asking Ruby to run a test, decide whether to follow the path, and then move back to the default sequence.
favorite_number = 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2
if favorite_number >= 10
  favorite_number = favorite_number + 10
  puts "And now your favorite_number is 10 more!"
end
puts "THE END"

