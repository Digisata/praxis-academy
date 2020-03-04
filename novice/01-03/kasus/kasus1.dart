import 'dart:io';

class Deposit extends ATMMachine {
  double deposit = 0;
  void set setDeposit(double deposit) {
    this.deposit = deposit;
  }

  double get getDeposit {
    return deposit;
  }
}

class Withdraw extends ATMMachine {
  double withdraw = 0;
  void set setWithdraw(double withdraw) {
    this.withdraw = withdraw;
  }

  double get getWithdraw {
    return withdraw;
  }
}

class BalanceInquiry extends ATMMachine {
  double balance = 0;
  void set setBalance(double balance) {
    this.balance = balance;
  }

  double get getBalance {
    return balance;
  }
}

class ATMMachine {}

void main() {
  Deposit deposit = Deposit();
  Withdraw withdraw = Withdraw();
  BalanceInquiry balanceInquiry = BalanceInquiry();

  int select = 0;
  int choice = 0;

  void checkBalance() {
    print('Your balance is: ${balanceInquiry.getBalance}');
  }

  void withdrawMoney() {
    if (balanceInquiry.getBalance == 0) {
      print('''
        Your current balance is zero
        You cannot withdraw
        You need to deposit money first!
      ''');
    } else if (balanceInquiry.getBalance <= 500) {
      print('''
        You dont have sufficient money to withdraw
        Checked your balance to see your money in the blank
      ''');
    } else if (withdraw.getWithdraw > balanceInquiry.balance) {
      print('''
        The ammount you withdraw is greater than to your balance
        Please check the amount you entered
      ''');
    } else {
      balanceInquiry.setBalance =
          balanceInquiry.getBalance - withdraw.getWithdraw;
      print('You withdraw the amount of Php ${withdraw.getWithdraw}');
    }
  }

  void depositMoney() {
    print('You deposit the amount of ${deposit.getDeposit}');
  }

  print('''
      ==============================================
            Welcome to this simple ATM machine
      ==============================================
    ''');

  do {
    try {
      do {
        print('''
            Please select ATM transactions
            Press [1] Deposit
            Press [2] Withdraw
            Press [3] Balance Inquiry
            Press [4] Exit 

            Enter your option here:
          ''');
        select = int.parse(stdin.readLineSync());
        if (select > 4 || select < 1)
          print('Please select corrent transaction');
        else {
          switch (select) {
            case 1:
              {
                print('Enter amount of money to deposit: ');
                deposit.setDeposit = double.parse(stdin.readLineSync());
                balanceInquiry.setBalance =
                    balanceInquiry.getBalance + deposit.getDeposit;
                depositMoney();
                break;
              }
            case 2:
              {
                print('''
                  To withdraw make sure that you have sufficient balance in your accoint
                  Enter amount of money to wirhdraw: 
                ''');
                withdraw.setWithdraw = double.parse(stdin.readLineSync());
                withdrawMoney();
                break;
              }
            case 3:
              {
                checkBalance();
                break;
              }
            default:
              {
                print('transaction exited');

                break;
              }
          }
        }
      } while (select > 4 || select < 1);

      do {
        try {
          print('''
              Would you like to try another transaction?
              Press [1] Yes
              Press [2] No
              Enter choice:
            ''');
          choice = int.parse(stdin.readLineSync());
          if (choice > 2 || choice < 1) print('Please select correct choice: ');
        } catch (e) {
          print('''
            Error input, please enter a number only
            Enter your choice[1/2]: 
          ''');
          choice = int.parse(stdin.readLineSync());
        }
      } while (choice > 2 || choice < 1);
    } catch (e) {
      print('''
            $e
            Error input, please enter a number only
            Enter your option here: 
          ''');
      select = int.parse(stdin.readLineSync());
    }
  } while (choice == 1);

  print('Thanks for using this simple ATM machine');
}
