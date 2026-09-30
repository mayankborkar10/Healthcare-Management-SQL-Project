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

# 🔍 Questions Answered

This project uses SQL to answer **20 healthcare-related analytical questions**, divided into five major categories.

---

## 👤 Patient Analytics

### Q1. How many patients are registered under each insurance provider?

Analyzes the number of patients associated with each insurance provider.

### Q2. How many patients were registered in each month and year?

Analyzes patient registration trends over time.

### Q3. How many appointments has each patient booked?

Identifies the number of appointments booked by each patient.

### Q4. Which patients have total healthcare spending above the average spending of all patients?

Identifies patients whose total healthcare spending is higher than the average spending across all patients.

---

## 👨‍⚕️ Doctor Analytics

### Q5. How many doctors are available in each specialization?

Analyzes the number of doctors available for each medical specialization.

### Q6. How many appointments has each doctor handled?

Measures the number of appointments handled by each doctor.

### Q7. What is the average number of appointments handled by doctors in each specialization?

Compares average appointment activity across different specializations.

### Q8. What is the average years of experience of doctors in each specialization?

Analyzes the average professional experience of doctors by specialization.

---

## 📅 Appointment Analytics

### Q9. How many appointments are there for each appointment status?

Analyzes the distribution of appointments based on their status.

### Q10. What percentage of appointments are completed, cancelled, scheduled, and no-show?

Calculates the percentage distribution of different appointment statuses.

### Q11. How many appointments are scheduled each month?

Analyzes appointment volume across different months.

### Q12. What are the most common reasons patients visit the healthcare facility?

Identifies the most frequently recorded reasons for patient visits.

---

## 💊 Treatment Analytics

### Q13. How many treatments have been performed for each treatment type?

Measures the number of treatments performed for each treatment category.

### Q14. What is the average and total cost for each treatment type?

Analyzes treatment costs using average and total cost calculations.

### Q15. Which treatment types have an average cost above the overall average?

Identifies treatment types whose average cost is higher than the overall treatment average.

### Q16. How do treatment types rank based on the total revenue they generate?

Ranks treatment types based on the total revenue generated.

---

## 💰 Billing & Revenue Analytics

### Q17. How much revenue has been collected, and how much is still pending or unpaid?

Analyzes billing amounts based on payment status.

### Q18. Which patients have received multiple bills, and how much have they been billed in total?

Identifies patients with multiple bills and calculates their total billed amount.

### Q19. What is the average bill amount for each payment status?

Compares the average billing amount across different payment statuses.

### Q20. What percentage of the total billed amount does each patient contribute?

Calculates each patient's percentage contribution to the total billed amount.

---

## 📊 Analytics Summary

| Category | Questions |
|---|---:|
| 👤 Patient Analytics | 4 |
| 👨‍⚕️ Doctor Analytics | 4 |
| 📅 Appointment Analytics | 4 |
| 💊 Treatment Analytics | 4 |
| 💰 Billing & Revenue Analytics | 4 |
| **Total** | **20** |

---

## 🧮 SQL Concepts Used

The questions above were solved using a combination of SQL techniques:

- `SELECT`
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
