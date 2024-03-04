class Product
     attr_reader :name,:price,:quantity
    def initialize(name,price,quantity)
        @name=name
        @price=price
        @quantity=quantity
    end
    def display()
        puts "the name of the prouct is #{@name} and the cost is #{@price} and has the Quantity as #{@quantity}"
    end
end

class Vendor
    def initialize()
        @app_prod=[]
        @balance=0
        @index=0
    end

    #adds all the product into an array
    
    def Add_product(product)
        @app_prod<<product
        puts "#{@index=@index+1} || #{product.name} || #{product.price} || #{product.quantity}"
    end

    #takes the prefered product as an user input
    #the products are accessed by using the indexing of the array

    def select_prod()
        puts "enter the prefered product based on their index value"
        index1=gets.chomp.to_i
        select=@app_prod[index1-1]
        if select
            return select.price, select.quantity
        else 
            puts "invalid selection"
            return nil
        end
    end

    #checks the balance by taking the user input and also checks the quantity of the product that is remaining

    def Check_balance(product_price,product_quantity)
        puts "Enter your balance:"
        @balance = gets.chomp.to_i
        
        if @balance >= product_price
            if product_quantity>0
                puts "Here is your product."
                @balance -= product_price
                product_quantity-=1
            else
                puts "sorry out of stock"
            end
        else
          puts "Balance is not enough to purchase the product."
        end
    end
end   

pr=Product.new("cola",23,10)
pr1=Product.new("lays",30,0)
pr2=Product.new("chips",40,10)
vr=Vendor.new
puts "Index || Name || Price || Quantity"
vr.Add_product(pr)
vr.Add_product(pr1)
vr.Add_product(pr2)
prod_price=vr.select_prod
if prod_price
    vr.Check_balance(prod_price[0],prod_price[1])
end