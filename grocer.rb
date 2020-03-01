require 'pry'


def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  i = 0
  while i < collection.length do
    merch = collection[i]
    if name != merch[:item]
      nil
    else return merch
    end

    i += 1
  end

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

 item_count = {}
 i = 0
 while i < cart.length do
   item_name = cart[i][:item]
   if !item_count[item_name]
     item_count[item_name] = 1
   else item_count[item_name] += 1
   end
   i += 1
 end

 unique_item_cart = []

 idx = 0
 while idx < cart.length do
   name = cart[idx][:item]
   if !unique_item_cart.include?(name)
     unique_item_cart << cart[idx]
   end

   idx += 1
 end

unique_item_cart << item_count
unique_item_cart
 binding.pry


# index = 0
# while index < unique_item_cart.length do
#   if unique_item_cart[index][:item] ==

count


end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
