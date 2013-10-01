class MyServer
  def initialize(name)
    @name = name
  end

  def self.hey
    puts "I'm #{self.inspect}"
  end

  def hey
    puts "I'm #{self.inspect}"
  end

end

MyServer.hey
MyServer.new("a").hey

array = [1,2,3,4,5,6,7]
puts array.detect{|e| e.even? }
