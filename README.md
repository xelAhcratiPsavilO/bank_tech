# BANK TECH 💸
BANK TECH is a project consisting of the implementation of a bank interface.
The primary goal of this project is to use high-quality processes as well as high-quality code to individually build an OO design project applying TDD skills.
The areas of focus are:
* Learning process.
* Code writing.
* Use of Agile methodologies.

## Specifications 🏷
### Requirements
* Be able to interact with your code via a REPL like IRB.
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).
### Must have
**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** the client would see:
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Criteria 🔍  
The criteria followed to self-evaluate the work done is grouped into four sections:
### Tests
* Passes tests.
* 100% test coverage.
* Appropriate and isolated unit tests.
### Quality
* Passes rubocop.
* High test coverage.
* Low flog score.
### Development
* Evidence of git workflow.
* Good documentation of project in the README.md.
* Diagram of the flow(version in paper, electronic version to be attached).
### Learning
* Daily reflective blogs.
* Daily stand ups/retrospectives or another technique for group checkins/reflection.

## Sources of information 📚
Information on the quality indicators can be found in the section bellow:
### Quality indicators
The facts are here: (substitute this for a screenshot).
## Contributing 🎭
Please contact the author for details on the process for submitting pull requests to us.

## Getting Started 🚴‍

First, clone this repository. Then:

```bash
> bundle install

> bundle exec rspec # Run the tests to ensure it works
```

## Author 🖋
* **Alejandro Pitarch Olivas**
[Checkout my projects](https://github.com/xelAhcratiPsavilO)
