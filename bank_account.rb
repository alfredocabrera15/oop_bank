class BankAccount

	attr_accessor :balance, :name

	def initialize(balance,name)
		if balance >= 200
			@balance = balance
		else
			raise "Opening balance is too low"
		end
		@name = name
	end

	def deposit(deposit_amount)
		@balance = balance + deposit_amount
	end

	def transfer(tranfer_amount,receiving_account)

	end

	def withdraw(withdrawal_amount)
		@balance -= withdrawal_amount
	end

end


