# PowerShell Admin Scripts

A collection of PowerShell scripts created while learning Windows administration and automation.

This repository documents my progress as an ASIR (Systems Administration) student, covering scripting fundamentals, system administration tasks, reporting, and automation using PowerShell.


## Repository Structure

```text
powershell-admin-scripts/
│
├── scripts/
│   ├── event-log-report.ps1
│   ├── service-status-report.ps1
│   ├── system-info.ps1
│   ├── ...
│
├── assets/
│
├── README.md
└── .gitignore
```


## Scripts

### System Information Report

Generates a basic inventory of the local Windows computer.

Features:

- Displays computer information
- Shows logged-in user
- Detects installed RAM
- Retrieves CPU and GPU information
- Lists physical storage devices
- Shows enabled network adapters

More scripts will be added as I continue learning PowerShell.


## Technologies

- Windows PowerShell
- CIM / WMI
- Windows Management Instrumentation
- Windows Administration


## Concepts Practiced

Throughout this repository I practice concepts such as:

- Cmdlets
- Variables
- Objects and properties
- Pipelines
- WMI / CIM classes
- Loops (`ForEach-Object`)
- Filtering (`Where-Object`)
- Object selection (`Select-Object`)
- Automation fundamentals


## Example

```text
=======================
SYSTEM INVENTORY REPORT
=======================

Report Date : 25 Jul 2026

PC Name     : OFFICE-PC
User        : administrator
Windows     : Microsoft Windows 11 Pro
RAM         : 32 GB
CPU         : Intel Core i7-13700
GPU         : NVIDIA GeForce RTX 4070

Disks
-----------------------
Samsung 990 PRO              2 TB
Kingston NV2                 1 TB

Network
-----------------------
Intel Ethernet Controller
Intel Wi-Fi 6E AX211
```


## Future Plans

Planned additions include:

- User management scripts
- Service management
- Event log analysis
- Backup automation
- Network diagnostics
- Software inventory
- Export to CSV, HTML and JSON
- Scheduled maintenance scripts


## About

This repository is part of my personal learning journey in PowerShell and Windows system administration while studying ASIR.
