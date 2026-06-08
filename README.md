# highridge-construction-payment-slip-generator
https://github.com/gwiraw/highridge-construction-payment-slip-generator.git

Project Overview
This project was developed for the Module 1 Assignment and simulates a payroll processing system for Highridge Construction Company.

The system dynamically generates a workforce of 400 employees, processes weekly salary payments, assigns employee levels based on predefined business rules, and generates professional payment slips for each employee.

The project has been implemented in both Python and R to demonstrate proficiency in programming concepts, control structures, loops, conditional statements, exception handling, and code conversion between programming languages.

Project Objectives
The system performs the following functions:

Dynamically creates a list of 400 workers.

Assigns each worker a unique Employee ID.

Randomly generates employee gender and salary information.

Generates weekly payment slips using a loop.

Assigns employee levels according to company rules.

Implements exception handling to prevent program failure.

Provides equivalent implementations in both Python and R.

Employee Level Assignment Rules
The following rules are used when assigning employee levels:

Level A1
Employees whose salary is greater than $10,000 and less than $20,000 are assigned:

A1

Level A5-F
Employees whose salary is greater than $7,500 and less than $30,000 and are Female are assigned:

A5-F

Priority Rule
Where both conditions are met, the employee is assigned the level A5-F because it is evaluated after the A1 condition.

Technologies Used
Python Version
Python 3.x

random module

datetime module

R Version
Base R

tryCatch() error handling

Project Files
1. payment_slips.py
Python implementation of the payroll processing system.

Features:

Dynamic worker creation

Employee level assignment

Weekly payslip generation

Exception handling

2. payment_slips.R
R implementation of the payroll processing system.

Features:

Dynamic worker creation

Employee level assignment

Weekly payslip generation

Error handling using tryCatch()

3. README.md
Project documentation and execution instructions.

Folder Structure
Highridge_Construction_Assignment/

├── payment_slips.py

├── payment_slips.R

├── README.md

└── Assignment_Report.docx

How to Run the Python Program
Step 1
Ensure Python 3.x is installed.

Step 2
Open a terminal or command prompt.

Step 3
Navigate to the project directory.

Example:

cd Highridge_Construction_Assignment

Step 4
Run the Python program.

python payment_slips.py

How to Run the R Program
Step 1
Install R or RStudio.

Step 2
Open RStudio.

Step 3
Open the file:

payment_slips.R

Step 4
Run the script using:

source("payment_slips.R")

or click Run in RStudio.

Sample Payslip Output
======================================================================

HIGHRIDGE CONSTRUCTION COMPANY

WEEKLY PAYSLIP

======================================================================

Pay Date : 2026-06-08

Department : Construction Operations

Payment Type : Weekly Salary

Employee ID : 101

Employee Name : Worker_101

Gender : Female

Gross Salary : $18,750.00

Employee Level : A5-F

Payment Status : APPROVED

Prepared By : Payroll Department

======================================================================

Exception Handling
The Python version includes handling for:

ValueError

KeyError

TypeError

General Exceptions

The R version uses:

tryCatch()

to capture and manage runtime errors.

Learning Outcomes Demonstrated
This project demonstrates:

Variables and data structures

Loops (for loops)

Conditional statements (if statements)

Dynamic data generation

Exception handling

Program documentation

Cross-language implementation (Python and R)

Author
Gwira Wadzanai

Module 1 Assignment Submission

Highridge Construction Company Payment Slip Generator

