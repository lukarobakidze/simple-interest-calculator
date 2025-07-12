 Simple Interest Calculator

A command-line tool for calculating simple interest, designed to help micro-finance organizations and individuals quickly compute interest on loans and investments.

## Overview

This project provides a simple, reliable bash script for calculating simple interest based on the formula:

**Simple Interest = Principal × Rate × Time**

The calculator is designed with micro-finance organizations in mind, helping them provide transparent interest calculations to their clients.

## Features

- **Simple and Fast**: Command-line interface for quick calculations
- **Input Validation**: Comprehensive error checking for all inputs
- **Precise Calculations**: Uses `bc` for accurate decimal arithmetic
- **Clear Output**: Formatted results showing all calculation details
- **Cross-platform**: Works on any Unix-like system with bash

## Prerequisites

- Bash shell
- `bc` command-line calculator (usually pre-installed on most Unix systems)

### Installing bc (if not available)

**Ubuntu/Debian:**
```bash
sudo apt-get install bc
```

**CentOS/RHEL/Fedora:**
```bash
sudo yum install bc
# or for newer versions:
sudo dnf install bc
```

**macOS:**
```bash
brew install bc
```

## Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/simple-interest-calculator.git
cd simple-interest-calculator
```

2. Make the script executable:
```bash
chmod +x simple-interest.sh
```

## Usage

### Basic Usage

```bash
./simple-interest.sh [principal] [rate] [time]
```

### Parameters

- **principal**: The principal amount (required)
- **rate**: The interest rate as percentage (required)
- **time**: The time period in years (required)

### Examples

**Calculate interest for $1000 at 5% for 2 years:**
```bash
./simple-interest.sh 1000 5 2
```

**Calculate interest for $5000 at 3.5% for 1.5 years:**
```bash
./simple-interest.sh 5000 3.5 1.5
```

### Sample Output

```
Simple Interest Calculation Results:
==================================
Principal Amount: $1000
Interest Rate: 5%
Time Period: 2 years
----------------------------------
Simple Interest: $100.00
Total Amount: $1100.00
==================================
```

## Error Handling

The script includes comprehensive error checking:

- Validates that all required parameters are provided
- Ensures all inputs are valid numbers
- Checks for negative or zero values where inappropriate
- Verifies that `bc` is available on the system

## Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details on how to submit pull requests, report issues, and contribute to the project.

## Code of Conduct

This project adheres to our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/yourusername/simple-interest-calculator/issues) page
2. Create a new issue if your problem isn't already listed
3. Join our community discussions

## Roadmap

- [ ] Add compound interest calculation
- [ ] Create web interface
- [ ] Add support for different time periods (months, days)
- [ ] Implement batch processing for multiple calculations
- [ ] Add export functionality (CSV, JSON)

## Acknowledgments

- Thanks to the micro-finance community for inspiration
- Built with the goal of financial inclusion and transparency
- Special thanks to all contributors who help make financial tools accessible

---

**Note**: This calculator is designed for educational and basic financial planning purposes. For professional financial advice, please consult with a qualified financial advisor. 
