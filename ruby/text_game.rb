class Player
  def initialize name
  @name = name
  @points = {'social' => 0, 'frontend' => 0, 'backend' => 0, 'ux_ui' => 0}

  end
  attr_accessor :points
  attr_reader :name

  def update_score type, value
    @points[type] += value
  end

end


class Story
  def initialize player
  @story = "A Day At Learn"
  @story_running_order = []
  @player = player
  end

  def add_story story_hash
    @story_running_order << story_hash
  end

  def run_story_board
    @story_running_order.each do |question_object|
      array_of_answers = question_object.ask_question
      @player.points[array_of_answers[0]] += array_of_answers[1]

      give_advice()
    end
  end

  def give_advice
    p "Your skills scores were:"
    p"Social #{@player.points["social"]}"
    p"Front End #{@player.points["frontend"]}"
    p"Back End #{@player.points["backend"]}"
    p"UX/UI : #{@player.points["ux_ui"]}"
    result = @player.points.max_by{|k,v| v}
    puts
    case result[0]
    when "social"
      p "You should work at a bar"
    when "frontend"
      p "You have been offered a job at Facebook"
    when "backend"
      p "You have been offered a job at Notch 8"
    when "ux_ui"
      p "You have been offered a role at Cozy"
    else
      p "You've been fired"
    end
    puts
  end
end



class Questions
  def initialize (question,type_of_question, answer_hash)
    @question = question
    @type_of_question = type_of_question
    @answer_hash = answer_hash
  end
  attr_reader :question,:type_of_question,:answer_hash

  def print_out_possible_answer
    i = 1
    p "Choose from the below answers:"
    @answer_hash.each do |answer_object|
      p"#{i}-#{answer_object["answer"]}"
      i += 1
    end
  end

  def ask_question
    clear_screen

    p "Question -  #{@question}"
    puts
    # display possible answers
    print_out_possible_answer()
    puts
    print "What is your answer?: - "
    # Get response from user
    while
      answer = gets.chomp
      # Create index for array searcg
      index = answer.to_i - 1
      if index <= @answer_hash.length-1 and index >=0
        break;
      else
        puts
        puts "You entered invalid answer."
        print "Please enter number between 1 and #{@answer_hash.length}:  "
      end
    end
    puts

    if @type_of_question != "social"
        if @answer_hash[index]["correct_answer"]
          p "Correct Answer!"
          print"Press enter to continue..."
          gets.chomp
        else
          correct_answer_array = @answer_hash.select {|object| object["correct_answer"] == true }
          p "The was incorrect, the correct answer was:"
          p correct_answer_array[0]["answer"]
          puts
          print"Press enter to continue..."
          gets.chomp
        end
    end
    # Find out type of question so we know what score to update
    type_of_question = @type_of_question
    # Find out how many points to assign
    points_value = @answer_hash[index]["points"]
    # Print selected answer to screen
    # puts @answer_hash[index]["answer"]

    [type_of_question, points_value]
  end
end


def clear_screen
    print "\e[2J\e[f"
end

def get_player_name
  print "Enter your name: "
  name = gets.chomp


  puts "Welcome to Learn Academy #{name}"
  player1 = Player.new(name)
end

clear_screen


# Main Game

player1 = get_player_name()
main_story = Story.new(player1)
main_story.add_story(Questions.new(
  #Question
  "It's your first day at Learn, your alarm goes off, do you hit snooze?",
  #Catogary
  "social",
  #Hash - possible, amount of point, correct answer
  [{'answer' => "Wake Up", 'points' => 1, 'correct_answer'=>false},
    {'answer' => "Hit Snooze Button", 'points' => -1, 'correct_answer'=>false}]
))
main_story.add_story(Questions.new(
  "Check In - What did you have for breakfast?",
  "social",
  [{'answer' => "Eggs", 'points' => 2, 'correct_answer'=>false},
    {'answer' => "Coffee / Tea", 'points' => 0, 'correct_answer'=>false}, {'answer' => "Porridge / Oatmeal", 'points' => 3, 'correct_answer'=>false}]
))
main_story.add_story(Questions.new(
  "Do all HTML tags come in a pair?",
  "ux_ui",
  [{'answer' => "Yes", 'points' => -1, 'correct_answer'=>false},
    {'answer' => "No", 'points' => 3, 'correct_answer'=>true}]
))
main_story.add_story(Questions.new(
  "Where did you go for Lunch?",
  "social",
  [{'answer' => "Chipotle", 'points' => 2, 'correct_answer'=>false},
    {'answer' => "Nectar", 'points' => 5, 'correct_answer'=>false}, {'answer' => "Grapes deli", 'points' => 3, 'correct_answer'=>false}, {'answer' => "Jack in the Box", 'points' => -2, 'correct_answer'=>false}]
))
main_story.add_story(Questions.new(
  "Which of the following are examples of closures?",
  "frontend",
  [{'answer' => "Objects", 'points' => -1, 'correct_answer'=>false},
    {'answer' => "Variables", 'points' => -1, 'correct_answer'=>false}, {'answer' => "Functions", 'points' => -1, 'correct_answer'=>false}, {'answer' => "All the above", 'points' => 3, 'correct_answer'=>true}]
))
main_story.add_story(Questions.new(
  "What is the extension used for saving the ruby file?",
  "backend",
  [{'answer' => ".ruby extension", 'points' => -1, 'correct_answer'=>false},
    {'answer' => ".rrb extension", 'points' => -1, 'correct_answer'=>false}, {'answer' => ".rub extension", 'points' => -1, 'correct_answer'=>false}, {'answer' => ".rb extension", 'points' => 2, 'correct_answer'=>true} ]
))
main_story.add_story(Questions.new(
  "Class is over and we are heading to pub, what's your move?",
  "social",
  [{'answer' => "Order water", 'points' => -4, 'correct_answer'=>false},
    {'answer' => "Order shots", 'points' => -1, 'correct_answer'=>false}, {'answer' => "Order a light beer", 'points' => 2, 'correct_answer'=>false},
    {'answer' => "Order a Martini", 'points' => 3, 'correct_answer'=>false} ]
))
main_story.run_story_board
