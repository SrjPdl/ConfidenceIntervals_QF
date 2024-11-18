# Project 3: Confidence Intervals

## Overview
This project is a requirement for our coursework, CISC 820: Quantitative Foundations, for the first year of the Ph.D. program in Computing and Information Sciences at RIT. In this project, we were given 10 different functions that returned confidence intervals. We worked on determining whether each function produced valid confidence intervals, identifed the confidence level if valid, and decided whether the validity was consistent across all dataset sizes or only held asymptotically.

## Table of Contents
- [Running the Project](#running-the-project)
- [Running the Tests](#running-the-tests)
- [Output Files](#output-files)
- [Authors](#authors)
- [License](#license)

## Running the Project

1. **Clone the repository**:
    ```bash
    git clone https://github.com/SrjPdl/ConfidenceIntervals_QF.git
    ```
2. Open the cloned repository in MATLAB 

## Running the Tests

To run the tests, use the `test_ci` function with the desired function indices as input.

```matlab
% Example usage
test_ci([1, 2, 5]);
```
The input vector `[1, 2, 5]` indicates that the tests should be run for functions 1, 2, and 5. You can also specify a range using MATLAB's colon notation, `e.g., 1:7` or test for a sigle function by passing just a single function index.

The distributions and their parameters for data generation are present in `define_distribution_params.m` file and can be changed from there.

## Output Files
Results are saved in the `results` folder. Each function's results are saved in a separate text file, e.g., `function_1_results.txt`

# Authors
- Suraj Poudel
- Justin Cole

# License
This project is licensed under the [MIT](https://www.mit.edu/~amini/LICENSE.md) License. 

