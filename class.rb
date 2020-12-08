# class Introduction

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def call_name
#     puts "私の名前は#{@name}です。よろしくお願いします！"
#   end

#   def call_age
#     puts "#{@age}歳です!"
#   end
# end

# introduction = Introduction.new("Ruby",25)
# introduction.call_name()
# introduction.call_age()


module CallHello
  def call_hello
    puts "こんにちは!"
  end
end

class Introduction
  include CallHello

  def initialize(name,age)
    @name = name
    @age = age
  end

  def call_name
    puts "私の名前は#{@name}です。よろしくお願いします!"
  end

  def call_age
    puts "#{@age}歳です!"
  end
end

introduction = Introduction.new("Ruby",25)

introduction.call_hello()

introduction.call_name()
introduction.call_age()
