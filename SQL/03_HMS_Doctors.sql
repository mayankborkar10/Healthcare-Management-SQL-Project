USE HealthcareManagementSystem;

-- ============================================
-- DOCTOR ANALYTICS
-- ============================================

-- 1)How many doctors are available in each specialization?

SELECT 
    specialization, COUNT(doctor_id)
FROM
    doctors
GROUP BY specialization
ORDER BY COUNT(doctor_id);

-- 2)How many appointments has each doctor handled? 

SELECT 
    doctors.doctor_id,
    CONCAT(doctors.first_name,
            ' ',
            doctors.last_name) AS DoctorName,
    doctors.specialization,
    COUNT(appointments.appointment_id) AS TotalAppointments
FROM
    doctors
        JOIN
    appointments ON doctors.doctor_id = appointments.doctor_id
GROUP BY doctors.doctor_id , doctors.first_name , doctors.last_name , doctors.specialization
ORDER BY TotalAppointments DESC;

-- 3)What is the average number of appointments handled by doctors in each specialization?

SELECT 
    d.specialization,
    ROUND(AVG(doctor_appointments.TotalAppointments),
            2) AS AverageAppointments
FROM
    doctors d
        LEFT JOIN
    (SELECT 
        doctor_id, COUNT(appointment_id) AS TotalAppointments
    FROM
        appointments
    GROUP BY doctor_id) AS doctor_appointments ON d.doctor_id = doctor_appointments.doctor_id
GROUP BY d.specialization
ORDER BY AverageAppointments DESC;

-- 4)What is the average years of experience of doctors in each specialization?

SELECT 
    specialization,
    ROUND(AVG(years_experience), 2) AS AVGExperience
FROM
    doctors
GROUP BY specialization
ORDER BY AVGExperience DESC;


