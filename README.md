# Bank - Tech Test: Post Review

## Specification
* [bank_tech_test](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)

## Instructions
In current working directory:
```
irb
```

```
> load './lib/account.rb'
> load './lib/account_statement.rb'
```

```
> statement = AccountStatement.new
```

```
> my_account = Account.new(statement)
```

```
> my_account.deposit(1000)
> my_account.deposit(2000)
> my_account.withdraw(500)
```

```
> puts statement.print
date || credit || debit || balance
17/06/2020 ||  || 500.00 || 2500.00
17/06/2020 || 2000.00 ||  || 3000.00
17/06/2020 || 1000.00 ||  || 1000.00
```

## Approach
Looking at the feedback I made the following changes:
* Removed ATM class
* Removed balance & transactions attributes
* Moved Withdraw and Deposit methods into Account Class
* Injected AccountStatement into Account to add printable transactions
* Figures are printed in 2 decimal places
* Printed transactions in descending order

I went with this approach to deliver what the client needed, with no extra features. I removed the ATM class as it was an unnecessary layer to withdraw and deposit from an account. I also removed any unnecessary attributes as the client doesn't need to know what's happening inside the classes, just that it's returning the correct outputs. 

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
* deposit
* withdraw

### Account Statement
#### Methods
* print
