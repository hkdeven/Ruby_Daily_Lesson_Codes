# celeb_name = "Britany Spears"
# celeb_age = 34
#
# celeb_name = "Johnny Depp"
# celeb_age = 53

# celeb = {}
# celeb[:name] = "Britany Spears"
# celeb[:age] = 34
#
# # celeb2[:name] = "Johnny Depp"
# # celeb2[:age] = 53
#
# #celebs = [celeb, celeb2]
# celebs = [celeb]


#celebs.each do |celeb|
#  celeb[:age] += 1
#end
#the above nethod is the same as the one below
#for celeb in celebs do
# celeb[:age] += 1
#end
#and this is a more advance method to account to birthday
# celeb[:birthday] = Time.new(1981, 12, 2)
# #p ((Time.now - celeb[:birthday])/ 60 /60 / 24 /365).to_i
# #p => 34.39...
# #so let's make a method with an argument of soemone's bday and return the age.
# def get_age(birthday)
#   birthday = ((Time.now - birthday)/ 60 /60 / 24 /365).to_i
# end
#
# puts get_age(celeb[:birthday])

class Celeb
  attr_accessor :name, :birthday, :gender

  def initialized(name, birthday, gender)
    @name = name
    @birthday = birthday
    @gender = gender
  end

  def age
    ((Time.now - @birthday)/ 60 /60 / 24 /365)
  end
end

#this is an instance of the class:
#celeb = Celeb.new
b = Celeb.new("Britany Spears", Time.new(1981, 12, 2), "female")

#using a dot new ".new" uses/expecting the initialize method
