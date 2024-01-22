# lib/greetings.rb
def hello
    "Hello!"
  end
  
  def greet(name)
    if name.empty?
      "Hello, Stranger!"
    else
      "Hello, #{name}!"
    end
  end
  