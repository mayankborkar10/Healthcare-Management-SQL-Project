USE HealthcareManagementSystem;

-- ============================================
-- APPOINTMENT ANALYTICS
-- ============================================

-- 1) How many appointments are there for each appointment status?

SELECT 
    status, COUNT(appointment_id) AS Totalappointments
FROM
    appointments
GROUP BY status
ORDER BY Totalappointments DESC;

-- 2)What percentage of appointments are completed, cancelled, scheduled, and no-show? 

SELECT 
    status,
    COUNT(appointment_id) AS TotalAppointments,
    ROUND(COUNT(appointment_id) * 100.0 / (SELECT 
                    COUNT(*)
                FROM
                    appointments),
            2) AS Percentage
FROM
    appointments
GROUP BY status
ORDER BY Percentage DESC;

-- 3)How many appointments are scheduled each month?

SELECT 
    YEAR(appointment_date) AS AppointmentYear,
    MONTHNAME(appointment_date) AS AppointmentMonth,
    COUNT(appointment_id) AS TotalAppointments
FROM
    appointments
GROUP BY YEAR(appointment_date) , MONTH(appointment_date) , MONTHNAME(appointment_date)
ORDER BY AppointmentYear , MONTH(appointment_date);

-- 4)What are the most common reasons patients visit the healthcare facility?

SELECT
    reason_for_visit,
    COUNT(appointment_id) AS TotalAppointments
FROM appointments
GROUP BY reason_for_visit
ORDER BY TotalAppointments DESC;
