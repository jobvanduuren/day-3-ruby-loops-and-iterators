def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == "Y"
end

NUM_POTATOES = 5
NUM_EGGS = 6

ingredients = [
  { name: "potatoes", quantity: NUM_POTATOES},
  { name: "eggs", quantity: NUM_EGGS},
  { name: "onion", quantity: 1},
  { name: "oil", quantity: "some"},
  { name: "salt", quantity: "some"}
]

puts "Let's cook a Spanish Omelette"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "#{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"

  puts "Do you have all the ingredients. Answer\"Y\" or \"N\"."
  answer = gets.chomp
  if answer == "Y"
    puts "Let's get started then."
    break
  elsif answer == "N"
    puts "Let's go shopping."
  else
    puts "I do not understand your answer"
  end
end

steps = [
  { description: "Scrape potatoes", action: "scrape_potatoes" },
  { description: "Cut potatoes into thick slices", action: "cut_potatoes" },
  { description: "Chop the onion", action: "generic_recipe_step" },
  { description: "Heat the oil in a large frying pan", action: "generic_recipe_step" },
  { description: "Add potatoes to the pan", action: "add_potatoes_to_pan" },
  { description: "Add onion to the pan", action: "generic_recipe_step" },
  { description: "Strain potatoes and onions through a colander into a large bowl", action: "generic_recipe_step" },
  { description: "Break the eggs", action: "break_eggs" },
  { description: "Beat the eggs separately", action: "generic_recipe_step" },
  { description: "Stir into the bowl the potatoes with plenty of salt", action: "generic_recipe_step" },
  { description: "Heat a little of the strained oil in a smaller pan", action: "generic_recipe_step" },
  { description: "Tip everything into the pan and cook on a moderate heat", action: "generic_recipe_step"},
  { description: "When almost set, invert on a plate and slide back into the pan", action: "generic_recipe_step" },
  { description: "Cook a few more minutes and slide on to a plate and cool for 10 minutes before serving", action: "generic_recipe_step" }
]
print_divider

puts "See below the different steps to follow:"
puts "\n"

steps.each_with_index do |step, index|
  puts "#{index+1}) #{step[:description]}"
end

def generic_recipe_step
  puts "On it"
  print_progress_bar
end

def scrape_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Scraping potato #{counter}"
    print_progress_bar
  end
end

def cut_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Chopping up potato #{counter}"
    print_progress_bar
  end
end

def add_potatoes_to_pan
  counter=0
  while counter < NUM_POTATOES
    counter += 1
    print "Dunking potato #{counter} in the pan"
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "Destroying egg #{counter}"
    print_progress_bar
  end
end
