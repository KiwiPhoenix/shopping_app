require_relative 'User'
require_relative 'Store'

# create App class
class App
  # attr_accessor
  # def initialize
  #   user = init_user
  #   init_user = User
  # end 
  
  # def init_user
  #   puts "What is your name?"
  #   name = gets.chomp
  #   puts "How much money do you have?"
  #   wallet_ammount = gets.to_i
  # end
  
  # display menu of what the user wants to do.
  def menu
    puts "What do you want to do?"
    puts "1. Buy something"
    puts "2. Display store inventory"
    puts "3. Display remaining wallet ammount"
    puts "4. Done"
    choice = get.to_i
      case choice
      when 1 
        choose_an_item
      when 2
        store.list
      when 3
        wallet_ammount
      when 4 
        exit
      else
        puts "Please choose an item from the menu."
      end
  end 
# -1. Buy something
# -2. Display store inventory
# -3. Display remaining wallet_ammount
            
  def choose_an_item 
    puts store.list
    puts "exit"
    add_to_cart = get.to_i
    case add_to_cart
      when 1
        @cart << store.list(0)        
      when 2
        @cart << store.list(1)        
      when 3
        @cart << store.list(2)        
      else
        menu
    end
  end
                
end 