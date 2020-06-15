# Bank - Tech Test

## Specification
* [bank_tech_test](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)

## Instructions
In current working directory:
```
irb
```

```
> load './lib/account.rb'
> load './lib/atm.rb'
> load './lib/account_statement.rb'
```

```
> my_account = Account.new

> my_account.balance
 => 0 

> my_account.transactions
 => []
```

```
> atm = Atm.new(my_account)

> atm.deposit(1000.00)
 => 1000.0

> atm.withdraw(75.00)
 => 925.0 

> atm.withdraw(50.00)
 => 875.0
```

```
> my_account.balance
 => 875.0 

> my_account.transactions
 => [["15/06/2020", "", 1000.0, 0], ["15/06/2020", 75.0, "", 1000.0], ["15/06/2020", 50.0, "", 925.0]] 
```

```
> account_statement = AccountStatement.new(my_account)

> puts account_statement.print
date || credit || debit || balance
15/06/2020 ||  || 1000.0 || 0
15/06/2020 || 75.0 ||  || 1000.0
15/06/2020 || 50.0 ||  || 925.0
```

## Approach
I used three seperate models.
* Account - to check balance
* Atm - to deposit/withdraw money 
* Account Statement - to get a list of transactions 

I went with this approach using real world objects. Each model has their own purpose, this allows for scalability. In this context the client can only access their account through an ATM and their transactions only get printed on an Account Statement. If we wanted a security feature we could add a 'input_pin' method on the ATM and add 'unlock/lock' methods on the Account. Having clear definitions and real world representations of these models allows features to be added seamlessly. 


## Planning
### User Stories
```
As a Client
So I can keep my money safe
I want to be able to make a deposit
```
```
As a Client
So I can spend my money
I want to be able to make a withdrawal
```
```
As a Client
So I can keep track of my spending
I want a printed bank statement
```

## Models
### Account
#### Methods
* transaction
#### Attributes
* @balance
* @transactions


### ATM
#### Methods
* deposit
* withdraw


### Bank Statement
#### Methods
* print

