def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
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
