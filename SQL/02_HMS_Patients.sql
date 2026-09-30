USE HealthcareManagementSystem;

-- ============================================
-- PATIENT ANALYTICS
-- ============================================

-- 1)How many patients are registered under each insurance provider?

SELECT 
    insurance_provider, COUNT(patient_id) AS Patient_count
FROM
    patients
GROUP BY insurance_provider
ORDER BY Patient_count DESC;

-- 2)How many patients were registered in each month and year?

SELECT 
    YEAR(registration_date) AS YearlyRegistration,
    MONTHNAME(registration_date) AS MonthlyRegistration,
    COUNT(patient_id) AS NewPatients
FROM patients
GROUP BY 
    YEAR(registration_date),
    MONTH(registration_date),
    MONTHNAME(registration_date)
ORDER BY 
    YearlyRegistration,
    MONTH(registration_date);
    
-- 3)How many appointments has each patient booked?

SELECT 
    patients.patient_id,
    CONCAT(patients.first_name,
            ' ',
            patients.last_name) AS PatientName,
    COUNT(appointments.appointment_id) AS ToatlAppointments
FROM
    patients
        JOIN
    appointments ON patients.patient_id = appointments.patient_id
GROUP BY patients.patient_id
ORDER BY ToatlAppointments ASC;

-- 4)Which patients have total healthcare spending above the average spending of all patients?

SELECT 
    patients.patient_id,
    CONCAT(patients.first_name,
            ' ',
            patients.last_name) AS PatientName,
    SUM(billing.amount) AS totalSpending
FROM
    patients
        JOIN
    billing ON patients.patient_id = billing.patient_id
GROUP BY patient_id
HAVING SUM(billing.amount) > (SELECT 
        AVG(patient_total)
    FROM
        (SELECT 
            patient_id, SUM(amount) AS patient_total
        FROM
            billing
        GROUP BY patient_id) AS patient_spending)
ORDER BY totalSpending DESC;
