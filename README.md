# Windows Server Health Check

PowerShell-based server health monitoring tool for exporting disk usage information into CSV reports for administrative review.

## Overview

A lightweight PowerShell script designed to collect basic Windows server health information and export the results into a CSV report for operational monitoring and administrative checks.

## Features
- Export server disk usage details to CSV
- Display free and total disk space
- Calculate used disk percentage automatically
- Lightweight and easy-to-read script
- Supports single-server execution

## Requirements
- Windows PowerShell 5.1 or later
- Windows Server or Windows client machine
- Appropriate local permissions

## Usage

Run the script using PowerShell:

```powershell
.\Windows-Server-Health-Check.ps1
```

## Output File

The script generates:

```txt
Server_Health_Report.csv
```

## Example CSV Output

| ServerName | DeviceID | FreeSpaceGB | TotalSpaceGB | UsedSpacePercent |
|---|---|---|---|---|
| SERVER01 | C: | 120.45 | 250 | 51.82 |
| SERVER01 | D: | 430.12 | 500 | 13.98 |
| SERVER01 | E: | 52.33 | 100 | 47.67 |

## Example Use Cases
- Daily server health checks
- Disk capacity monitoring
- Infrastructure reporting
- Operational review tasks

## Scope

This script is designed for single-server execution.

It collects disk information from the local machine where the script is executed.

## Notes
- Script was tested in a lab environment and is intended for administrative and reporting purposes
- Review and validate the script before using it in production environments
- CSV output can be opened directly in Microsoft Excel

## Author

Lokesh Yadav  
Windows System Administrator
