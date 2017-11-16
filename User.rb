
# create User class
 class User
    # user has a wallet_ammount
    # user has a cart
    attr_accessor :name, :wallet_ammount, :cart

    def init_user(name, wallet_ammount, cart)
        init_user = User
    # ask for the user name
    puts "What is your name?"
    name = gets.chomp
    # ask wallet_ammount
    puts "How much money do you have?"
    wallet_ammount = gets.to_i
    cart = add_to_cart
    end 

    @cart = []

    def initialize(wallet_ammount)
        @wallet_ammount = wallet_ammount
        # Check if cart is empty
        @cart.any?
        # If cart is not empty, Subtract Cart[{price}] from wallet_ammount
        if @cart.each do |item, price|
        remaining_balance = wallet_ammount.new(wallet_ammount - @cart[price])
        puts remaining_balance    
          end
        end
    end 
end 
# Create a new user from this information

user = User.new(1)

