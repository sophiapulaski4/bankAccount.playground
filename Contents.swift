import UIKit

//Intentions: We are going to create a bank account that will allow us to make deposits, make withdrawals and transfer funds between two accounts!
// Because of our intentions, we know that we're going to need three functions at least!
class BankAccount{
    //properties go below here:
    
    var accountName : String
    var currentBalance : Double
    var routingNumber : Int
    
    // add your intializer, which will contain your properties above ^
    
    init(){
        accountName = "name123"
        currentBalance = 0.0
        routingNumber = 0
    }
    
    // Your challenge is to create functions for depositing, withdrawing, setting account name and setting routing number - 4 functions
    
    
    func makeDeposit(depositAmount: Double) {
        currentBalance = currentBalance + depositAmount
    }
    
    func makeWithdrawal(withdrawalAmount: Double) {
        currentBalance = currentBalance - withdrawalAmount
    }
    
    func setAccountName (newName : String){
        accountName = newName
    }
    
    func setRoutingNumber(newRoutingNumber : Int){
        routingNumber = newRoutingNumber
    }
    
    func checkEverything() {
        print(accountName)
        print(currentBalance)
        print(routingNumber)
    }
    func accountTransfer(sender : BankAccount, recipient : BankAccount, transferAmount : Double, senderRoutingNumber : Int){
        if sender.routingNumber == senderRoutingNumber {
            sender.currentBalance = sender.currentBalance - transferAmount
            recipient.currentBalance = recipient.currentBalance + transferAmount
            print("The recipient has succsessfully recieved the transfer.")
        }
        else{
            print("The information you typed in was incorect. Please try a different routing number.")
        }
    }


//bank account objects
var jamiesBankAccount = BankAccount()
var eloraBankAccount = BankAccount()

eloraBankAccount.setAcountName(newName: "Elora's Bank Account")
eloraBankAccount.setRoutingNumber(num: 999)
eloraBankAccount.makeDeposit(depositAmount: 1000.00)

jamiesBankAccount.setAcountName(newName: "Jamie's Bank Account")
jamiesBankAccount.setRoutingNumber(num: 555)
jamiesBankAccount.makeDeposit(depositAmount: 10.00)

jamiesBankAccount.checkEverything()
eloraBankAccount.checkEverything()

eloraBankAccount.accountTransfer(sender: eloraBankAccount, recipient: jamiesBankAccount, transferAmount: 1.00, senderRoutingNumber: 999)

jamiesBankAccount.checkEverything()
eloraBankAccount.checkEverything()
    

}

