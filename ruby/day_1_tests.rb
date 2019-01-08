require 'date'

# Add, subtract, multiply and divide some numbers any combination of numbers
# p 5**2
#
# # Find the remainder of dividing two numbers using the modulo operator (%)
# p 5%2

# Divide a number by 0
#
# def div_by(num)
#   num.to_f  / 0
# end
#
# p div_by(5)
# # Divide 0 by 0
#
# def div_by_0(num)
#   num.to_f / 0
# end
#
# p div_by_0(0)

# Set a variable called my_favorite_number equal to your favorite number.
# my_favorite_number = 7
# # Calculate what your favorite number divided by 2 is.
# def divide_by_2 (fav_number)
#   fav_number.to_f / 2
# end
#
# # p divide_by_2(my_favorite_number)
#
# # Set another variable called someones_favorite equal to 13
# someones_favorite = 13
# # Change the value of someones_favorite to 7
# p someones_favorite
#
# someones_favorite = 7
#
# p someones_favorite
# # Subtract your favorite number from someones
#
# def div(num1, num2)
#   num1 - num2
# end
#
# p div(someones_favorite, my_favorite_number)

# .upcase
# .reverse
# .include?
# capitalize
# create a variable and put it into a string using string interpolation

# string = "enrique"
#
# p string.upcase
# p string.reverse
# p string.include? "s"
# p string.include? "ri"
# p string.capitalize.include? "En"
# p string.include? "en"
#
# p "#{string.capitalize} is going to make his resume in 2019"

# Create an array with ten of your favorite movies
# movies = ["Pride and Prejudice", "Top Gun", "Diehard", "Casino", "Wedding Crashers", "Old School", "I love You Man"]
# From that array, extract your top 3 movies in a new array
# p movies.first
# p movies.last
# p movies[1]
# Find an expression that tells you how many elements are in the array
# p movies.length
# Reverse an array, try out slices, how to rotate them, and how to get a random element from the array
# p movies.reverse
# p movies.slice!(-1)
# p movies
# # p movies.rotate
# p movies.rotate(2)


# Write a loop that prints from 1 to 20. Try it with all the loops covered in this lesson. Do it again counting down from 20 to 1.
# x = 20
# x.times do |index|
#   p index+1
# end

# array = Array.new(20)
# array.each_index  do |x|
#   puts x+1
# end

# array = Array.new(20)
# p array.map.with_index {|x, i| i + 1}




# Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
# def number_checker (num)
#   if num >= 1 && num <= 10
#     p "#{num} is a valid number"
#   else
#     p "#{num} is NOT a valid number"
#   end
# end
# number_checker(0)

# Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz

# def fizz_buzz(count)
# count.times do |index|
#   number = index + 1
# if number % 3 == 0 && number % 5 ==0
#   p "FizzBuzz(#{number})"
# elsif number % 3 == 0
#     p "Fizz(#{number})"
#   elsif number % 5 ==0
#     p "Buzz(#{number})"
#   else
#     p number
#   end
#   end
# end
#
# fizz_buzz(100)




# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
# def sum_these_numbers (num1, num2)
#   p num1 + num2
# end
#
# sum_these_numbers(3,7)

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
# def is_even(num)
#   if num % 2 == 0
#     p "#{num} is even"
#   else
#     p "#{num} is odd"
#   end
# end
#
# is_even(11)

# Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.
# words = ["Sam", "Enrique", "San Diego", "London"]
#
# p words.map { |element| element.upcase }


# Write a method which calls another method, then uses its return value.
# def times_two(num)
#   p "#{num} times by 10 is #{multiply_by_ten(num)}"
# end
#
# def multiply_by_ten(num)
#   num * 10
# end
#
# times_two(11)

# Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.

# def get_date()
#   puts "What is the Year? e.g. 2019"
#   year = gets.chomp.to_i
#   puts "What is the Month? e.g. 12 for Dec or 2 for Feb"
#   month = gets.chomp.to_i
#   puts "What is the day? e.g. 12 for 12th"
#   day = gets.chomp.to_i
#   check_date(year, month, day)
# end
#
# def check_date (year, month, day)
#   if Date.valid_date?(year, month, day)
#     p "#{year}-#{month}-#{day} Is a valid date"
#   else
#     p "#{year}-#{month}-#{day} Is a invalid date"
#   end
# end
#
# get_date()
#





# Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).

{player:1, choice:"rock"}
{player:2, choice:"paper"}


def get_move()

  puts "Rock, Paper, Scissor - Player 1:"
  move1 = gets.chomp
  puts "Player 2:"
  move2 = gets.chomp
  playerObj = { "player1": "", "player2": ""}
  playerObj.merge!(player1: move1)
  playerObj.merge!(player2: move2)
  p playerObj
  p playerObj.player1
  array = []
  array.push(playerObj.values)
  p array

end

get_move()
