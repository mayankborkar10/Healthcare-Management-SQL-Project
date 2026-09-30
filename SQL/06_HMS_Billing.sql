USE HealthcareManagementSystem;

-- ============================================
-- BILLING AND REVENUE ANALYTICS
-- ============================================

-- 1)How much revenue has been collected, and how much is still pending or unpaid?

SELECT 
    payment_status,
    COUNT(bill_id) AS TotalBills,
    SUM(amount) AS TotalAmount
FROM
    billing
GROUP BY payment_status
ORDER BY TotalAmount DESC;

-- 2)Which patients have received multiple bills, and how much have they been billed in total?

SELECT
    patients.patient_id,
    CONCAT(patients.first_name, ' ', patients.last_name) AS PatientName,
    COUNT(billing.bill_id) AS NumberOfBills,
    SUM(billing.amount) AS TotalBilled
FROM patients
JOIN billing
    ON patients.patient_id = billing.patient_id
GROUP BY
    patients.patient_id,
    patients.first_name,
    patients.last_name
HAVING COUNT(billing.bill_id) > 1
ORDER BY TotalBilled DESC;

-- 3)What is the average bill amount for each payment status?

SELECT 
    payment_status,
    COUNT(bill_id) AS TotalBills,
    ROUND(AVG(amount), 2) AS AverageBillAmount
FROM
    billing
GROUP BY payment_status
ORDER BY AverageBillAmount DESC;

-- 4)What percentage of the total billed amount does each patient contribute?

SELECT
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS PatientName,
    SUM(b.amount) AS TotalBilled,
    ROUND(
        SUM(b.amount) * 100.0 /
        SUM(SUM(b.amount)) OVER (),
        2
    ) AS RevenueContributionPercentage
FROM patients p
JOIN billing b
    ON p.patient_id = b.patient_id
GROUP BY
    p.patient_id,
    p.first_name,
    p.last_name
ORDER BY TotalBilled DESC;
