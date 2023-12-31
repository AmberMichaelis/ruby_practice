the_count = [1,2,3,4,5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# This first kind of for-loop goaes through an array
for number in the_count
    puts "This is count #{number}"
end

# Same as above, but using a block instead
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

# Also we can go through mixed arrays too
for i in change
    puts "I got #{i}"
end

# We can also build arrays, first start with an empty one
elements = []

# Then use a range object to do 0 to 5 counts
for i in (0..5)
    puts "Adding #{i} to the list."
    # Push is a funtion that arrays understand
    elements.push(i)
end

# New we can puts them out too
for i in elements
    puts "Element was #{i}"
end

