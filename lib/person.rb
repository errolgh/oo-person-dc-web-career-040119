require 'pry'

class Person

    attr_reader :name #getter, because name cannot be changed
    attr_writer :get_paid

    # def get_paid=(salary)
    #   @bank_account = @bank_account += salary
    # end

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end


  def clean?
    if @hygiene > 7
      true
    else
      false
  end
end

 def happy?
   if @happiness > 7
     true
   else
     false
   end
 end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    puts "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    puts "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    @happiness += 2
    @hygiene -= 3
    puts "♪ another one bites the dust ♫"
  end

  #method should accept another instance of the Person class, or "friend".
  def call_friend(friend)
    #The method should increment the caller and the callee's happiness points by three.


    #If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
  end


  def start_conversation(conversation_starter, topic)
    #method should accept two arguments, the person to start a conversation with and the topic of conversation.

    #If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
    #If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
    #If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
  end
end

binding.pry
puts "hi"
