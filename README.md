# 🏥 Healthcare Management Database & Patient Analytics

A relational **Healthcare Management Database System** built using **MySQL** to manage patients, doctors, appointments, treatments, and billing information.

The project focuses on database design, table relationships, SQL querying, and healthcare analytics to extract meaningful insights from structured healthcare data.

---

## 🎯 Project Objective

The objective of this project is to design a healthcare management database and use SQL to analyze different aspects of healthcare operations.

The project analyzes:

- Patient information
- Doctor information and specializations
- Appointment activity
- Treatment types and costs
- Billing and revenue
- Patient healthcare spending

---

## 🛠️ Technologies Used

- **MySQL**
- **SQL**
- **MySQL Workbench**
- **CSV Dataset**

---

## 🗄️ Database Structure

The database contains five main tables:

| Table | Description |
|---|---|
| `patients` | Stores patient information and insurance details |
| `doctors` | Stores doctor information, specialization, and experience |
| `appointments` | Stores patient appointments and appointment status |
| `treatments` | Stores treatments, costs, and treatment dates |
| `billing` | Stores billing information and payment status |

# 🔍 Questions Answered

This project uses SQL to answer **20 healthcare-related analytical questions**, divided into five major categories.

---

## 👤 1. Patient Analytics

### Q1. How many patients are registered under each insurance provider?

Analyzes the number of patients registered with each insurance provider.

### Q2. How many patients were registered in each month and year?

Analyzes patient registration trends over time.

### Q3. How many appointments has each patient booked?

Identifies the number of appointments booked by each patient.

### Q4. Which patients have total healthcare spending above the average spending of all patients?

Identifies patients whose total healthcare spending is above the average spending across all patients.

---

## 👨‍⚕️ 2. Doctor Analytics

### Q5. How many doctors are available in each specialization?

Analyzes the number of doctors available across different medical specializations.

### Q6. How many appointments has each doctor handled?

Measures the number of appointments handled by each doctor.

### Q7. What is the average number of appointments handled by doctors in each specialization?

Compares the average appointment workload across different specializations.

### Q8. What is the average years of experience of doctors in each specialization?

Analyzes the average experience of doctors across different specializations.

---

## 📅 3. Appointment Analytics

### Q9. How many appointments are there for each appointment status?

Analyzes the distribution of appointments based on their status.

### Q10. What percentage of appointments are completed, cancelled, scheduled, and no-show?

Calculates the percentage distribution of different appointment statuses.

### Q11. How many appointments are scheduled each month?

Analyzes monthly appointment trends.

### Q12. What are the most common reasons patients visit the healthcare facility?

Identifies the most common reasons recorded for patient visits.

---

## 💊 4. Treatment Analytics

### Q13. How many treatments have been performed for each treatment type?

Measures the number of treatments performed for each treatment type.

### Q14. What is the average and total cost for each treatment type?

Analyzes the average and total cost of different treatment types.

### Q15. Which treatment types have an average cost above the overall average?

Identifies treatment types whose average cost is higher than the overall average treatment cost.

### Q16. How do treatment types rank based on the total revenue they generate?

Ranks treatment types based on the total revenue generated.

---

## 💰 5. Billing & Revenue Analytics

### Q17. How much revenue has been collected, and how much is still pending or unpaid?

Analyzes billing amounts based on payment status.

### Q18. Which patients have received multiple bills, and how much have they been billed in total?

Identifies patients with multiple bills and calculates their total billed amount.

### Q19. What is the average bill amount for each payment status?

Compares average bill amounts across different payment statuses.

### Q20. What percentage of the total billed amount does each patient contribute?

Calculates each patient's contribution to the total billed amount.

---

# 📊 Analytics Summary

| Analytics Area | Questions |
|---|---:|
| 👤 Patient Analytics | 4 |
| 👨‍⚕️ Doctor Analytics | 4 |
| 📅 Appointment Analytics | 4 |
| 💊 Treatment Analytics | 4 |
| 💰 Billing & Revenue Analytics | 4 |
| **Total** | **20** |

---

# 🧮 SQL Concepts Demonstrated

This project demonstrates practical use of:

- `SELECT`
- `FROM`
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- `INNER JOIN`
- `LEFT JOIN`
- `COUNT()`
- `SUM()`
- `AVG()`
- `ROUND()`
- `YEAR()`
- `MONTH()`
- `MONTHNAME()`
- Subqueries
- Nested queries
- Percentage calculations
- Multi-table analysis
- Window Functions
- `RANK()`

---

# 📈 Advanced SQL Analysis

## 🔹 Subqueries

Subqueries are used to compare individual patient spending against the average spending across patients.

This helps identify patients whose healthcare spending is above the calculated average.

---

## 🔹 Window Functions

Window functions are used for advanced analytical calculations.

### Treatment Revenue Ranking

Treatment types are ranked based on their total revenue using:

```sql
RANK() OVER (
    ORDER BY SUM(cost) DESC
)
```

### Patient Revenue Contribution

A window calculation is also used to calculate each patient's percentage contribution to the total billed amount.

---

# 🔄 Project Workflow

```text
CSV Dataset
     ↓
Database Creation
     ↓
Table Creation
     ↓
Primary & Foreign Keys
     ↓
Data Import
     ↓
Data Validation
     ↓
SQL Analysis
     ↓
Healthcare Insights
```

---

# 📂 Project Structure

```text
Healthcare-Management-SQL-Project/
│
├── SQL/
│   ├── 01_HMS_Tables.sql
│   ├── 02_HMS_Patients.sql
│   ├── 03_HMS_Doctors.sql
│   ├── 04_HMS_Appointments.sql
│   ├── 05_HMS_Treatment.sql
│   └── 06_HMS_Billing.sql
│
├── Dataset/
│   ├── patients.csv
│   ├── doctors.csv
│   ├── appointments.csv
│   ├── treatments.csv
│   └── billing.csv
│
├── Images/
│   └── database-schema.png
│
└── README.md
```

---

# 🚀 How to Run the Project

## Step 1 — Install MySQL

Install:

- MySQL Server
- MySQL Workbench

## Step 2 — Create the Database

```sql
CREATE DATABASE HealthcareManagementSystem;

USE HealthcareManagementSystem;
```

## Step 3 — Create the Tables

Run:

```text
SQL/01_HMS_Tables.sql
```

This creates the five tables and establishes their relationships using primary and foreign keys.

## Step 4 — Import the Dataset

Import the CSV files into their respective MySQL tables using MySQL Workbench.

```text
patients.csv       → patients
doctors.csv        → doctors
appointments.csv  → appointments
treatments.csv     → treatments
billing.csv        → billing
```

## Step 5 — Run the Analytics

Execute the SQL files from the `SQL` folder:

```text
02_HMS_Patients.sql
03_HMS_Doctors.sql
04_HMS_Appointments.sql
05_HMS_Treatment.sql
06_HMS_Billing.sql
```

---

# 💡 Key Learning Outcomes

Through this project, I developed practical experience in:

- Relational database design
- Primary and foreign key relationships
- SQL querying
- Data aggregation
- Multi-table joins
- Subqueries
- Window functions
- Ranking
- Date-based analysis
- Percentage calculations
- Patient analytics
- Doctor analytics
- Appointment analytics
- Treatment cost analysis
- Billing and revenue analysis
- Translating business questions into SQL queries

---

# 📌 Project Highlights

### 🗄️ Relational Database Design

Designed a healthcare database containing interconnected tables for patients, doctors, appointments, treatments, and billing.

### 🔍 20 Analytical Questions

Developed SQL queries to answer 20 healthcare-related business questions across five analytical categories.

### 🔗 Multi-Table Analysis

Used relationships between patients, doctors, appointments, treatments, and billing to perform cross-table analysis.

### 📊 Advanced SQL

Applied subqueries and window functions for advanced analytical requirements.

### 💰 Revenue Analysis

Analyzed payment status, patient spending, treatment revenue, and individual revenue contribution.

---

# 👨‍💻 Author

## Mayank Borkar

**Computer Engineering Student | Aspiring Data Analyst**

### Technical Skills

`SQL` `MySQL` `Excel` `Python` `Power BI` `Pandas` `NumPy` `Data Analysis` `Data Visualization`

---

⭐ If you found this project useful, feel free to explore the SQL queries and database structure.
---

## 🔗 Database Relationships

The database uses **Primary Keys and Foreign Keys** to establish relationships between tables.

```text
                    ┌──────────────┐
                    │   PATIENTS   │
                    └──────┬───────┘
                           │
                  patient_id│
                           │
                    ┌──────▼───────┐
                    │ APPOINTMENTS │
                    └───┬──────┬───┘
                        │      │
             doctor_id  │      │ appointment_id
                        │      │
                 ┌──────▼───┐  │
                 │ DOCTORS  │  │
                 └──────────┘  │
                               │
                        ┌──────▼───────┐
                        │  TREATMENTS  │
                        └──────┬───────┘
                               │
                        treatment_id
                               │
                        ┌──────▼───────┐
                        │   BILLING    │
                        └──────────────┘
