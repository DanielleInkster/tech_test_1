# Tech Test #1 - Week 10
 ## Bank Account

## Project Description from Makers

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
### User Stories
#### ***created by developer based on requirements and acceptance criteria***
```
As a bank account holder 
So that I can save money
I want to be able to deposit money into my account

As a bank account holder 
So that I can buy the things I need
I want to be able to withdraw money from my account

As a bank account holder 
So that I don't overspend
I want to be able to view my balance

As a bank account holder 
So that I can track my withdrawals and deposits
I want to be able to view the date of each transaction

As a bank account holder 
So that I can manage my finances
I want to be able to print a record of my transactions
```
### User stories for edge cases
#### ***created by developer based on requirements, acceptance criteria and common sense***
```
As a bank account holder 
So that I don't overspend
I want to recieve an error message if I try to withdraw more than my balance

As a bank manager
So that money isn't stolen or lost
I would like users to recieve an error message if they try to deposit/withdraw negative amounts.
```

## Technologies
* Ruby 2.4.2
* Rspec
* Rubocop 0.56.0
* Simplecov

## How to Install and Run
```bash
> git clone git@github.com:DanielleInkster/tech_test_1.git
> bundle install
> irb
> require './lib/statement.rb'
```
### How to Run Tests
```bash
> rspec # Run the tests to ensure it works
> rubocop # Check code quality
```
## Use
