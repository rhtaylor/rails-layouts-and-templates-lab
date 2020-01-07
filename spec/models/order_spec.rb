require 'rails_helper' 
require 'spec_helper'

describe "orders:", :type => :model do  
    
    before do 
        @order = Order.create(name: "MacBook Pro", price: 2799)
    end 
    describe "an order should have a price" do
    it "has a price" do 
        expect(@order.price).to eq 2799 
     end
    end
  end

include Capybara::DSL 

  describe "view page:", :type => :view do  
    before do 
        @order = Order.create(name: "MacBook Pro", price: 2799)
    end 
   
    describe "page should have order name and prices" do 
        it "has and order name" do 
            visit order_path(@order) 
             
            expect(page).to have_content("Your Orders:")
        end 
    end 
end 