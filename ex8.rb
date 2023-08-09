formatter = "%s %s %s %s"
 puts formatter % [1,2,3,4]
 puts formatter % ["one", "two", "three", "four"]
 puts formatter % [true, false, false, false]
 puts "Please enter a verb: "
 verb = gets.chomp()
 puts formatter % [
    "I had this thing.",
    "That I could #{verb} up right.",
    "But it didn't sing.",
    "So I said goodnight."
 ]
