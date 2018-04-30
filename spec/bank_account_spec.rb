require './bank_account'

describe BankAccount do

  context "has a balance" do

    let(:account) do
      account = BankAccount.new(500, "Sarah")
    end

    it "is created with an opening balance and the name of the client" do
      expect(account).to be_a(BankAccount)
    end

    it "can report it's balance" do
      expect(account.balance).to eq(500)
    end
    
  end

  context "making a deposit" do

    it "balance is increased" do
      account = BankAccount.new(500, "Sarah")
      account.deposit(100)
      expect(account.balance).to eq(600)
    end

  end

  context "making a withdrawal" do

    it "balance is decreased" do
      account = BankAccount.new(500, "Sarah")
      account.withdraw(100)
      expect(account.balance).to eq(400)
    end

  end

  context "transferring funds" do

    let(:account_1) do
      account = BankAccount.new(500, "Sarah")
    end

    let(:account_2) do
      other_account = BankAccount.new(500, "James")
    end

    before :each do
      account.transfer(200, other_account)
    end

    it "account balance is decreased" do
      account_1.transfer(250,account_2)
      expect(account_1.balance).to eq(250)
    end

    it "other account balance is increased" do
      account_1.transfer(250,account_2)
      expect(account_2.balance).to eq(750)
    end

  end

  context "minimum balance" do

    it "raises an error if opening balance is too low" do
      expect{ BankAccount.new(199, "Terry") }.to raise_error(ArgumentError)
    end

    it "does NOT raise an error if opening balance is over minimum balance" do
      expect{ BankAccount.new(201, "Terry") }.not_to raise_error
    end

  end

end








