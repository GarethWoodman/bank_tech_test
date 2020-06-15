# Bank - Tech Test

## Specification
* [bank_tech_test](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)

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
* @balance = 0
* @transactions = [date, credit, debit, balance]

### ATM
#### Methods
* deposit - Account.transaction(+n, @date)
* withdraw - Account.transaction(-n, @date)
#### Attributes
* @date

### Bank Statement
#### Methods
* print - Account.transcations.each { |transaction| p transaction }

