USE HealthcareManagementSystem;

-- ============================================
-- TREATMENT ANALYTICS
-- ============================================

-- 1)How many treatments have been performed for each treatment type?

SELECT 
    treatment_type, COUNT(treatment_id) AS NumofTreatment
FROM
    treatments
GROUP BY treatment_type;

-- 2)What is the average and total cost for each treatment type?

SELECT 
    treatment_type,
    ROUND(AVG(cost), 2) AS AvgCost,
    ROUND(SUM(cost), 2) AS TotalCost
FROM
    treatments
GROUP BY treatment_type;

-- 3)Which treatment types have an average cost above the overall average?

SELECT 
    treatment_type, ROUND(AVG(cost), 2) AS AvgCost
FROM
    treatments
GROUP BY treatment_type
HAVING AvgCost > (SELECT 
        AVG(cost)
    FROM
        treatments);
        
-- 4)How do treatment types rank based on the total revenue they generate?

SELECT
    treatment_type,
    SUM(cost) AS TotalRevenue,
    RANK() OVER (
        ORDER BY SUM(cost) DESC
    ) AS RevenueRank
FROM treatments
GROUP BY treatment_type
ORDER BY RevenueRank;
