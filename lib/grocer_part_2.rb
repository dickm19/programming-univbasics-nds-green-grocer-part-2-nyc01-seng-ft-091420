require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  coupon_item = []
  count = 0
  cart.each do |item|
    #binding.pry
    
    coupons.each do |coupon|
      binding.pry
      if item[:item] == coupon[:item]
        coupon_item << item
        item[:count] = (item[:count] - coupon[:num])
        while count < coupon_item.count do
          coupon_item[count][:price] = coupon[:cost]/coupon[:num]
          coupon_item[count][:item] = "#{coupon[:item]} W/COUPON"
          cart << coupon_item
          count += 1
        end
      end
    end
    #binding.pry
  end
  binding.pry
  
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
