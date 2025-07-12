#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on principal, rate, and time
# Usage: ./simple-interest.sh [principal] [rate] [time]

# Function to display usage information
show_usage() {
    echo "Simple Interest Calculator"
    echo "Usage: $0 [principal] [rate] [time]"
    echo ""
    echo "Parameters:"
    echo "  principal  - The principal amount (required)"
    echo "  rate       - The interest rate as percentage (required)"
    echo "  time       - The time period in years (required)"
    echo ""
    echo "Example: $0 1000 5 2"
    echo "This will calculate simple interest for \$1000 at 5% for 2 years"
}

# Function to validate numeric input
is_numeric() {
    local num=$1
    [[ $num =~ ^[0-9]+\.?[0-9]*$ ]]
}

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    
    # Convert rate from percentage to decimal
    local rate_decimal=$(echo "scale=4; $rate / 100" | bc -l)
    
    # Calculate simple interest: I = P * R * T
    local interest=$(echo "scale=2; $principal * $rate_decimal * $time" | bc -l)
    
    # Calculate total amount
    local total=$(echo "scale=2; $principal + $interest" | bc -l)
    
    echo "Simple Interest Calculation Results:"
    echo "=================================="
    echo "Principal Amount: \$${principal}"
    echo "Interest Rate: ${rate}%"
    echo "Time Period: ${time} years"
    echo "----------------------------------"
    echo "Simple Interest: \$${interest}"
    echo "Total Amount: \$${total}"
    echo "=================================="
}

# Main script logic
main() {
    # Check if bc (basic calculator) is available
    if ! command -v bc &> /dev/null; then
        echo "Error: 'bc' command is required but not installed."
        echo "Please install bc to use this calculator."
        exit 1
    fi
    
    # Check if correct number of arguments provided
    if [ $# -ne 3 ]; then
        echo "Error: Incorrect number of arguments."
        show_usage
        exit 1
    fi
    
    # Extract arguments
    principal=$1
    rate=$2
    time=$3
    
    # Validate inputs
    if ! is_numeric "$principal"; then
        echo "Error: Principal must be a valid number."
        exit 1
    fi
    
    if ! is_numeric "$rate"; then
        echo "Error: Rate must be a valid number."
        exit 1
    fi
    
    if ! is_numeric "$time"; then
        echo "Error: Time must be a valid number."
        exit 1
    fi
    
    # Check for negative values
    if (( $(echo "$principal <= 0" | bc -l) )); then
        echo "Error: Principal must be greater than 0."
        exit 1
    fi
    
    if (( $(echo "$rate < 0" | bc -l) )); then
        echo "Error: Rate cannot be negative."
        exit 1
    fi
    
    if (( $(echo "$time <= 0" | bc -l) )); then
        echo "Error: Time must be greater than 0."
        exit 1
    fi
    
    # Calculate and display results
    calculate_simple_interest "$principal" "$rate" "$time"
}

# Run main function with all arguments
main "$@" 
