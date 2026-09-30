-- ==========================================
-- HEALTHCARE MANAGEMENT DATABASE
-- DATA IMPORT
-- ==========================================

USE HealthcareDB;

-- Data imported from CSV files using
-- MySQL Workbench Table Data Import Wizard.

-- 1. Patients
-- Source: patients.csv
-- Target table: patients

-- 2. Doctors
-- Source: doctors.csv
-- Target table: doctors

-- 3. Appointments
-- Source: appointments.csv
-- Target table: appointments

-- 4. Treatments
-- Source: treatments.csv
-- Target table: treatments

-- 5. Billing
-- Source: billing.csv
-- Target table: billing


-- ==========================================
-- DATA VALIDATION
-- ==========================================

SELECT 'Patients' AS TableName, COUNT(*) AS RecordCount
FROM patients

UNION ALL

SELECT 'Doctors', COUNT(*)
FROM doctors

UNION ALL

SELECT 'Appointments', COUNT(*)
FROM appointments

UNION ALL

SELECT 'Treatments', COUNT(*)
FROM treatments

UNION ALL

SELECT 'Billing', COUNT(*)
FROM billing;
