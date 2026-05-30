# Little Lemon Booking and Data Analysis Project

## Project Title
Little Lemon Booking System and Data Analysis

## Project Objective

This project creates and deploys a Little Lemon database in MySQL. It includes the database schema, sample data, stored procedures, Python connection code, ER diagram documentation, and Tableau dashboard preparation files.

## Main Tasks Completed

- Created a MySQL database for Little Lemon.
- Created tables for customers, employees, menu items, menus, bookings, orders, and delivery status.
- Added sample data.
- Created required stored procedures:
  - GetMaxQuantity()
  - ManageBooking()
  - UpdateBooking()
  - AddBooking()
  - CancelBooking()
- Added Python code to connect to MySQL.
- Added data files for Tableau.
- Added ER diagram documentation.
- Added Tableau dashboard instructions.

## Repository Structure

```text
little-lemon-booking-project/
├── README.md
├── requirements.txt
├── sql/
│   ├── 01_create_database_and_tables.sql
│   ├── 02_insert_sample_data.sql
│   ├── 03_stored_procedures.sql
│   └── 04_test_queries.sql
├── python/
│   ├── config_template.py
│   └── run_project.py
├── data/
│   ├── little_lemon_bookings.csv
│   └── tableau_little_lemon_sales.csv
├── diagrams/
│   └── er_diagram_mermaid.md
└── tableau/
    └── tableau_dashboard_instructions.md
