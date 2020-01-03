require "pry"

def find_item_by_name_in_collection(name, collection)
  
 index = 0 
 while index < collection.length  
   
   if collection[index][:item] == name
     return collection[index]
   
   end   
   index += 1
 end 
end

def consolidate_cart(cart)
 
  new_cart = []
  counter = 0 
  while counter < cart.length
  duplicate = find_item_by_name_in_collection(cart[counter][:item],new_cart)
  if duplicate
    duplicate[:count] += 1
  else
    cart[counter][:count] = 1
    new_cart << cart[counter]
  end 
  counter += 1 
  end 
  new_cart
end

def apply_coupons(cart, coupons)
  
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

