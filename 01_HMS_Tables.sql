USE HealthcareManagementSystem;

-- ============================================
-- VIEW ALL TABLE DATA
-- ============================================
-- CREATE TABLE patients (
--     patient_id VARCHAR(10) PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     gender VARCHAR(10),
--     date_of_birth DATE,
--     contact_number VARCHAR(15),
--     address VARCHAR(255),
--     registration_date DATE,
--     insurance_provider VARCHAR(100),
--     insurance_number VARCHAR(50),
--     email VARCHAR(100)
-- );
-- CREATE TABLE doctors (
--     doctor_id VARCHAR(10) PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     specialization VARCHAR(100),
--     phone_number VARCHAR(15),
--     years_experience INT,
--     hospital_branch VARCHAR(100),
--     email VARCHAR(100)
-- );
-- CREATE TABLE appointments (
--     appointment_id VARCHAR(10) PRIMARY KEY,
--     patient_id VARCHAR(10) NOT NULL,
--     doctor_id VARCHAR(10) NOT NULL,
--     appointment_date DATE,
--     appointment_time TIME,
--     reason_for_visit VARCHAR(100),
--     status VARCHAR(30),

--     CONSTRAINT fk_appointment_patient
--         FOREIGN KEY (patient_id)
--         REFERENCES patients(patient_id),

--     CONSTRAINT fk_appointment_doctor
--         FOREIGN KEY (doctor_id)
--         REFERENCES doctors(doctor_id)
-- );
-- CREATE TABLE treatments (
--     treatment_id VARCHAR(10) PRIMARY KEY,
--     appointment_id VARCHAR(10) NOT NULL,
--     treatment_type VARCHAR(100),
--     description VARCHAR(255),
--     cost DECIMAL(10,2),
--     treatment_date DATE,

--     CONSTRAINT fk_treatment_appointment
--         FOREIGN KEY (appointment_id)
--         REFERENCES appointments(appointment_id)
-- );
-- CREATE TABLE billing (
--     bill_id VARCHAR(10) PRIMARY KEY,
--     patient_id VARCHAR(10) NOT NULL,
--     treatment_id VARCHAR(10) NOT NULL,
--     bill_date DATE,
--     amount DECIMAL(10,2),
--     payment_method VARCHAR(50),
--     payment_status VARCHAR(30),

--     CONSTRAINT fk_billing_patient
--         FOREIGN KEY (patient_id)
--         REFERENCES patients(patient_id),

--     CONSTRAINT fk_billing_treatment
--         FOREIGN KEY (treatment_id)
--         REFERENCES treatments(treatment_id)
-- );
SELECT * FROM patients;
SELECT * FROM doctors;
SELECT * FROM appointments;
SELECT * FROM treatments;
SELECT * FROM billing;
