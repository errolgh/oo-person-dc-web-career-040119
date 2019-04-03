require 'pry'



class Person
    # 'reader' => getter,
    # 'writer' => setter
    attr_reader(:happiness, :hygiene, :bank_account, :name)
    attr_writer(:hygiene, :bank_account)

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

  def happiness=(happiness_value)
    puts "beginning of happiness=() of #{self.name}"
  #  block that changes/checks happiness' value
  @happiness = happiness_value


    if @happiness > 10
      @happiness = 10
    elsif
    @happiness < 0
    @happiness = 0
    end
    
      puts "end of happiness=() of #{self.name}"
end
  #method should accept another instance of the Person class, or "friend".
  def call_friend(friend)
    puts "beginning of call_friend method of #{self.name}"
    #The method should increment the caller and the callee's happiness points by three.


    friend.happiness = friend.happiness + 3
    self.happiness += 3
    puts "Hi #{friend.name}! It's #{self.name}. How are you?"

    puts "end of call_friend method of #{self.name}"


    #If Stella calls her friend Felix, the method should return
    # "Hi Felix! It's Stella. How are you?"
  end


  def start_conversation(conversation_starter, topic)
    #method should accept two arguments, the person to start a conversation with and the topic of conversation.

    #If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
    #If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
    #If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
  end
end

# marcus = Person.new("Marcus")
# errol = Person.new("Errol")

#marcus.happiness(errol)

puts "hi"
