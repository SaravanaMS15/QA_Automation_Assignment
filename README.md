# QA Automation Assignment

## Overview
This project automates login scenarios and API tests for the given website using the Robot Framework.

## Project Structure
- `tests/login_tests.robot`: Contains login test cases using SeleniumLibrary.
- `tests/api_tests.robot`: Contains API test cases using RequestsLibrary.
- `resources/variables.robot`: Stores common variables.
- `results/`: Directory to store test execution reports.
- `test_cases.xlsx`: Documentation of test cases.

## Prerequisites
- Python 3.x installed.
- Install dependencies: 
  ```bash
  pip install -r requirements.txt
  ```
- Chrome/Gecko WebDriver installed.

## How to Run
1. Navigate to the project directory.
2. Run Login Tests:
   ```bash
   robot -d results tests/login_tests.robot
   ```
3. Run API Tests:
   ```bash
   robot -d results tests/api_tests.robot
   ```
4. View Reports:
   Open `results/report.html` in a browser.
