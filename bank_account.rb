class BankAccount

	attr_accessor :balance, :name

	def initialize(balance,name)

		if balance <= 200
			raise ArgumentError, "Balance is too low"
		else
			@balance = balance
  		end

		@name = name
	end

	def deposit(deposit_amount)
		@balance = balance + deposit_amount
	end

	def transfer(tranfer_amount,receiving_account)
		@balance -= tranfer_amount
		receiving_account.balance += tranfer_amount
	end

	def withdraw(withdrawal_amount)
		@balance -= withdrawal_amount
	end

end
