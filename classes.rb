class Dog
  def initialize(name)
    @name = name
    @hobbies = []
    @preferences = {}
    @dislikes = []
end
attr_accessor :hobbies, :preferences, :dislikes

def describe()
  puts "Their name is #{@name}"
  puts "Their hobbies include:"
    @hobbies.each {|hobby| puts hobby}
    puts '-' * 10
  puts "Their preferences in food are:"
    @preferences.each {|food, value| puts "#{food}: #{value}"}
    puts '-' * 10
  puts "Their dislikes are:"
    @dislikes.each {|dislike| puts dislike}
  end
end


class Cat
  def initialize(name)
    @name = name
    @hobbies = []
    @dislikes = []
end
attr_accessor :hobbies, :dislikes

def describe()
  puts '*' * 10
  puts "Their name is #{@name}"
  puts "Their hobbies include:"
    @hobbies.each {|hobby| puts hobby}
    puts '-' * 10
  puts "Their dislikes are:"
    @dislikes.each {|dislike| puts dislike}
  end
end



bailey = Dog.new("Bailey")
bailey.hobbies = ['running', 'eating', 'playing']
bailey.preferences = {'chicken' => 'any kind', 'fruits' => 'apples',
                      'kibbles' => 'Iams'}
bailey.dislikes = ['no food', 'being hungry', 'being bored']

beans = Cat.new("Beans")
beans.hobbies = ['playing', 'sleeping', 'trolling']
beans.dislikes = ['not eating', 'being bothered', 'loud noises']

bailey.describe()
beans.describe()
