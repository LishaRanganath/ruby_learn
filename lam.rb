users={"name"=>"xoxo","balance"=>1234,"pin"=>123}
class Bank_Account
    def initialize(users)
        @amt_balance=users["balance"]
        @name=users["name"]
        @pin=users["pin"]
    end
    def Withdraw_amt(amt_money)
        if @amt_balance >= amt_money
            @amt_balance-=amt_money
            puts "withdrawal successfull"
        else
            puts "please check your account balance"
        end
    end
    def Check_bal()
        puts "your balence is: #{@amt_balance}"
    end
    def Deposit_amt(dep_amt)
        @amt_balance+=dep_amt
        puts "amount deposited successfully."
    end
    private
    def Check_details()
        puts "the details are ass follows:"
        puts "Name: #{@name}"
        puts "Amount Balance: #{@amt_balance}"
        puts "Pin: #{@pin}"
    end


end
class ATM<Bank_Account
    def initialize(users)
        super(users)
    end
    def Check_pin()
        puts "enter your pin no."
        @pin_id=gets.chomp.to_i
        if @pin==@pin_id
            loop do
                puts "valid user"
                puts "type the given index to do the needful"
                puts "1 to check balance"
                puts "2 to deposit"
                puts "3 to withdraw"
                puts "4 to exit"
                index=gets.chomp.to_i
                case index
                when 1
                    Check_bal()
                when 2
                    puts "enter the amount to be deposited"
                    @amt_dep=gets.chomp.to_i
                    Deposit_amt(@amt_dep)
                when 3
                    puts "enter the amount that has to be withdrawn"
                    @amt=gets.chomp.to_i
                    Withdraw_amt(@amt)
                when 4
                    puts "exiting ATM. Thank you for using out services"
                    break
                else
                    puts "enter the proper value"
                end
            end
        else
            puts "invalid user"
        end
    end
end

obj=Bank_Account.new(users)
obj=ATM.new(users)
obj.Check_pin()