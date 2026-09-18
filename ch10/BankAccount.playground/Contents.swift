class BankAccount {
    
    var accountBalance: Float = 0           // (저장) 잔액
    var accountNumber: Int = 0              // (저장) 은행계좌번호
    let fees: Float = 25.00                 // (저장) 수수료 상수
    
    
    var balanceLessFees: Float {            // (연산) 수수료 제외 잔액
        get {
            return accountBalance - fees
        }
        
        set(newBalance)
        {
            accountBalance = newBalance - fees
        }
        
    }
    
    
//    init(number: Int, balance: Float)     // TODO: 필요성을 모르겠음
//    {
//        accountNumber = number
//        accountBalance = balance
//    }
//
//    deinit {
//        
//    }
    
    
    func displayBalance()                   // 인스턴스 메서드
    {
        print("Number \(accountNumber)")
        print("Current balance is: \(accountBalance)")
    }
    
    
    class func getMaxBalance() -> Float {   // TODO: 이해안됨
        return 100000.00
    }
    
}


var account1 = BankAccount()

//var account1: BankAccount = BankAccount(number: 12312312, balance: 400.54)
//var balance1 = account1.accountBalance

account1.accountBalance = 6789.98   // 인스턴스의 프로퍼티에 값 설정
account1.displayBalance()           // 인스턴스 메서드 호출
var maxAllowed = BankAccount.getMaxBalance()

var balance1 = account1.balanceLessFees
account1.balanceLessFees = 12123.12
