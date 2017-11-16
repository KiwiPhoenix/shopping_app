
class Store
    attr_accessor :inventory
  
    #  @inventory = []

    #  item1 {:item => 'bread' ,:price => 1.50}
    #  item2 {:item => 'apple' ,:price => 0.50}
    #  item3 {:item => 'soup' ,:price => 0.50}

    #  @inventory << (hash1, hash2, hash3)
  def initialize(inventory)
    # store should have inventory with name and price for items.
    inventory = [{item: "bread", price: 2.00}, {item: 'apple', price: 0.50}, {item: 'bunch of bananas', price: 3.00}]
    @inventory = inventory
  end 
      
  def list
    @inventory.each_with_index { |(item, price),index| 
    puts "#{index + 1} - #{item} #{price}."}
  end
end

# create new Store
store = Store.new([@inventory])
choose_an_item


# create Store class
# class Store
#     attr_accessor :inventory
    
#     def initialize(inventory)
#       @inventory = inventory
#       @inventory = [{item: "bread", price: 2.00}, {item: 'apple', price: 0.50}]
#     end 

#     def list
#         @inventory.each do |item, price|
#         puts "#{item} Costs: #{price} dollars."
#     end
# end
# Store.list
