# allcloudrecon

## Overview

CloudRecon is a Bash script designed to scan all cloud environment IP ranges and extract data from SSL certificates. It pulls information such as wildcard subdomains and related info, saving the results to a file.

## Prerequisites

Before using the script, ensure you have the following prerequisites installed on your system:

1. **gcc:**
    
    sudo apt install gcc
    

2. **Go:**
    
    go install github.com/g0ldencybersec/CloudRecon@latest
    

## Usage

To use allcloudrecon, follow these steps:

1. Clone this repository:
    
    git clone https://github.com/s0calledhacker/allcloudrecon.git
    

2. Navigate to the cloned repository:
    
    cd allcloudrecon
    

3. Make the script executable:
    
    chmod +x cloud-env-scan.sh
    

4. Run the script:
    
    ./cloud-env-scan.sh
    

## Results
This will run on threads 1000 and may takes days to complete.
The script will generate a file named `cloudrecon.txt`, which contains information extracted from SSL certificates, including wildcard subdomains and other info.

## Disclaimer

This script is provided as-is and for educational purposes only. Use it responsibly and in compliance with applicable laws and regulations.

## Contributors

- [s0calledhacker]

Feel free to contribute, report issues, or suggest improvements by creating pull requests.
