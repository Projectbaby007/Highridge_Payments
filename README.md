# Highridge Construction Company - Weekly Payment Program

This repository contains a Python and an R program designed to facilitate the weekly payments of workers for Highridge Construction Company.

## Features

* Dynamically generates a list of 400 workers with unique IDs, random salaries, and genders.
* Generates payment slips for each worker.
* Assigns employee levels based on the following conditional logic:
    * If salary is between $10,000 and $20,000 (exclusive), Employee level is "A1."
    * If salary is between $7,500 and $30,000 (exclusive) AND the employee is female, Employee level is "A5-F."
    * Otherwise, the default level is "B2".
* Includes exception handling to gracefully manage potential errors during processing.

## Files

* `payment_program.py`: The Python implementation of the payment program.
* `payment_program.R`: The R implementation of the payment program.
* `README.md`: This file, providing an overview of the project.

## How to Run

### Python

1.  Ensure you have Python 3 installed.
2.  Open a terminal or command prompt.
3.  Navigate to the directory where you saved `payment_program.py`.
4.  Run the program using the command:
    ```bash
    python payment_program.py
    ```

### R

1.  Ensure you have R installed.
2.  Open an R environment (e.g., RStudio or the R console).
3.  Set your working directory to the location where you saved `payment_program.R`.
4.  Run the script using the command:
    ```R
    source("payment_program.R")
    ```

## Error Handling

Both the Python and R programs include basic exception handling to catch and report errors that might occur during the processing of individual worker payments.