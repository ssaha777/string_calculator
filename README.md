# String Calculator

## Overview

StringCalculator is a simple Ruby class that has a class method `add` which adds numbers provided as a string supporting custom delimiters, including commas and new lines, but raises exception when negative numbers are present.

## Features

- Addition of numbers provided as a string
- Support for different delimiters (comma, new line, custom delimiter)
- Handling of negative numbers
- Unit tests using RSpec for ensuring correctness

## Usage

To use the String Calculator, follow these steps:

1. Clone the repository:

   ```sh
   git clone git@github.com:ssaha777/string_calculator.git

2. Install dependencies:
   ```sh
   bundle install

3. Run the specs:
   ```sh
   bundle exec rspec

4. Execution of the calculator
   ```sh
   require_relative 'string_calculator'

   result = StringCalculator.add("1,2,3")
   puts result 

