#output character name
def say (name, message)
  if name.nil?
    output = message
  else
    output = "#{name}: #{message}"
end
#this is teh same as the if/else statement above
#  output = (name.nil? ? message : "#{name}: #{message}")
  puts output
end

def ask_question(question, options)
say(nil, )
end


puts "You are now Batman!!!"
puts "Who will be your sidekick?"
sidekicks = ["batgirl", "robin"]
puts "Options: #{sidekicks.join(' or ')}"
#This is the same as the puts above:
#say "Options", sidekicks.join(' or ')
#the line above does nto require a puts since it's part of the method above
sidekick = gets.chomp.downcase

if sidekick == "robin"
  puts "Robin: holy rusted metal batman!"
elsif sidekick == "batgirl"
  puts "batgirl, suit me up Alfred"
else
  sidekick = ["robin", "batgirl"].shuffle.prompt
  "Fine, we'll pcik one for you...  Your sidekick is now #{sidekick}."
end

sidekick - sidekick.capitalize
puts "Awesome!  Let's get your sidekick weapon online."
#puts "Weapon1, weapon2, weapon3"
available_weapons = ["Weapon1, weapon2, weapon3"]
weapon = gets.chomp.downcase
case weapon
when "weapon1"
  #puts "#{sidekick}: Great"
say (sidekick, "Great")
when "weapon2"
  puts "wonderful!"
when "weapon3"
  puts "cool!!"
else
  puts "that's great an dall but you need a weapon."
  weapon = "weapon1"
end

puts "Who do we want to fight first?"
valid_enemies = [
  "corrupt police",
  "politicians",
  "the joker",
  "superman"]

  puts "Options: #{valid_enemies.join(',')}"
say "Options:", valid_enemies.join(',')
  enemy = gets.chomp.downcase

  until valid_enemies.include? enemy
    puts ["Huh?"].sample
    puts "Options: #{valid_enemies.join(',')}"
    enemy = gets.chomp.downcase
end

case enemy
when "superman"
  puts "Superman: why are you wasting my time??"
when "the joker"
  puts "Joker: ha ha ha ha ha"
when "politicians"
  puts "Hillary says: workers right matter!"
when "corrupt police"
  puts "Chief of police: #{alllivesmatter}"
else
  puts "This should not happen..."
end

#REFACTORED V1
puts "You are now Batman!!!"
puts "Who will be your sidekick?"
puts "Options: Batgirl or Robin"
sidekick = gets.chomp.downcase

if sidekick == "robin"
  puts "Robin: holy rusted metal batman!"
elsif sidekick == "batgirl"
  puts "batgirl, suit me up Alfred"
else
  sidekick = ["robin", "batgirl"].shuffle.prompt
  "Fine, we'll pcik one for you...  Your sidekick is now #{sidekick}."
end

sidekick - sidekick.capitalize
puts "Awesome!  Let's get your sidekick weapon online."
puts "Weapon1, weapon2, weapon3"
weapon = gets.chomp.downcase
case weapon
when "weapon1"
  puts "Great"
when "weapon2"
  puts "wonderful!"
when "weapon3"
  puts "cool!!"
else
  puts "that's great an dall but you need a weapon."
  weapon = "weapon1"
end

puts "Who do we want to fight first?"
valid_enemies = [
  "corrupt police",
  "politicians",
  "the joker",
  "superman"]

  puts "Options: #{valid_enemies.join(',')}"

  enemy = gets.chomp.downcase

  until valid_enemies.include? enemy
    puts ["Huh?"].sample
    puts "Options: #{valid_enemies.join(',')}"
    enemy = gets.chomp.downcase
end

case enemy
when "superman"
  puts "Superman: why are you wasting my time??"
when "the joker"
  puts "Joker: ha ha ha ha ha"
when "politicians"
  puts "Hillary says: workers right matter!"
when "corrupt police"
  puts "Chief of police: #{alllivesmatter}"
else
  puts "This should not happen..."
end

############################
############################
############################
############################
############################
############################
############################

# outputs character info
def say(name, message)
  if name.nil?
    output = message
  else
    output = "#{name}: #{message}"
  end
  puts output
end

def show_intro
  say nil, "After all your hardwork you've become Batman!"
end

def ask_question(question, options)
  say(nil, question)
  say("Options", options.join(', '))
  gets.chomp.downcase
end

def handle_sidekick(sidekick)
  if sidekick == "robin"
    say("Robin", "Holy rusted metal, Batman!")
  elsif sidekick == "batgirl"
    say("Batgirl", "Suit me up, Uncle Alfred!")
  else
      sidekick = ["robin", "batgirl"].shuffle.pop
      say(nil, "Fine, I guess we will pick one or you. #{sidekick} is your sidekick!")
    end
end

def handle_weapon(weapon, sidekick)
  case weapon
  when "batarang"
    say(sidekick, "Awesome! A batarang...")
  when "fists"
    say(sidekick, "All my boxing training is finally going to pay off...")
  when "flashlight"
    say sidekick, "Uh thanks...?"
  else
     say(nil,  "Looks like we'll need to pick one for them...")
     weapon = "batarang"
  end
end

def handle_enemy(enemy)
  case enemy
  when "superman"
    say "Superman", "Why are you wasting my time..."
  when "the joker"
    say "Joker", "Ha ha ah aha... ha ha!"
  when "politicians"
    say "Hilary says", "Workers rights matter!"
  when "corrupt police"
    say "Chief of police", "#alllivesmatter"
  else
    say nil, "This should not happen..."
  end
end

# =========================================================
# Batman game
# =========================================================

# Intro
show_intro

# Question 1
sidekick = ask_question(
  "Who will be your sidekick?",
  ["batgirl", "robin"]
)
handle_sidekick(sidekick)

# Question 2
weapon = ask_question(
  "Awesome! Lets get your sidekick a weapon to defend themselves!",
  ["batarang", "fists", "flashlight"]
)
handle_weapon(weapon, sidekick)

# Question 3
valid_enemies = ["politician", "joker", "superman"]
begin
  enemy = ask_question(
    "Who do we want to fight first?",
    valid_enemies
  )
end until valid_enemies.include? enemy
handle_enemy(enemy)

##################################
##################################
##################################

# outputs character info
def say(name, message)
  if name.nil?
    output = message
  else
    output = "#{name}: #{message}"
  end
  puts output
end

def show_intro
  say nil, "After all your hardwork you've become Batman!"
end

def ask_question(question, options)
  say(nil, question)
  say("Options", options.join(', '))
  gets.chomp.downcase
end

def handle_sidekick(sidekick)
  if sidekick == "robin"
    say("Robin", "Holy rusted metal, Batman!")
  elsif sidekick == "batgirl"
    say("Batgirl", "Suit me up, Uncle Alfred!")
  else
      sidekick = ["robin", "batgirl"].shuffle.pop
      say(nil, "Fine, I guess we will pick one or you. #{sidekick} is your sidekick!")
    end
end

def handle_weapon(weapon, sidekick)
  case weapon
  when "batarang"
    say(sidekick, "Awesome! A batarang...")
  when "fists"
    say(sidekick, "All my boxing training is finally going to pay off...")
  when "flashlight"
    say sidekick, "Uh thanks...?"
  else
     say(nil,  "Looks like we'll need to pick one for them...")
     weapon = "batarang"
  end
end

def handle_enemy(enemy)
  case enemy
  when "superman"
    say "Superman", "Why are you wasting my time..."
  when "the joker"
    say "Joker", "Ha ha ah aha... ha ha!"
  when "politicians"
    say "Hilary says", "Workers rights matter!"
  when "corrupt police"
    say "Chief of police", "#alllivesmatter"
  else
    say nil, "This should not happen..."
  end
end

# =========================================================
# Batman game
# =========================================================

# Intro
show_intro

# Question 1
sidekick = ask_question(
  "Who will be your sidekick?",
  ["batgirl", "robin"]
)
handle_sidekick(sidekick)

# Question 2
weapon = ask_question(
  "Awesome! Lets get your sidekick a weapon to defend themselves!",
  ["batarang", "fists", "flashlight"]
)
handle_weapon(weapon, sidekick)

# Question 3
valid_enemies = ["politician", "joker", "superman"]
begin
  enemy = ask_question(
    "Who do we want to fight first?",
    valid_enemies
  )
end until valid_enemies.include? enemy
handle_enemy(enemy)
