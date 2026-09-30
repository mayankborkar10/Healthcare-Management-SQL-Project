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
