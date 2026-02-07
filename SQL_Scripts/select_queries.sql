-- SELECT QUERY 1
-- Count the number of supporters for each campaign
SELECT 
    c.campaign_id,
    c.campaign_name,
    c.target_amount,
    c.total_amount_raised,
    c.start_date,
    c.end_date,
    c.status,
    COUNT(DISTINCT d.supporter_id) AS supporter_count
FROM 
    campaign AS c
LEFT JOIN 
    donation AS d ON c.campaign_id = d.campaign_id
LEFT JOIN 
    supporter AS s ON d.supporter_id = s.supporter_id
GROUP BY 
    c.campaign_id, c.campaign_name, c.target_amount, c.total_amount_raised, c.start_date, c.end_date, c.status
ORDER BY 
    supporter_count DESC;


-- SELECT QUERY 2
-- average amount a user donates for each campaign
SELECT 
    c.campaign_id,
    c.campaign_name,
    DATE_FORMAT(d.donation_date, '%Y-%m') AS month,
    AVG(d.amount) AS avg_donation_amount
FROM 
    donation AS d
JOIN 
    campaign AS c ON d.campaign_id = c.campaign_id
GROUP BY 
    c.campaign_id, month
ORDER BY 
    c.campaign_id, month;

-- SELECT QUERY 3
-- Query showing info about each campaign, beneficiaries helped, and donation data.
SELECT 
    c.campaign_id,
    c.campaign_name,
    COUNT(DISTINCT b.beneficiary_id) AS total_beneficiaries,
    ROUND(AVG(b.age), 1) AS avg_age_of_beneficiaries,
    SUM(CASE WHEN b.gender = 'F' THEN 1 ELSE 0 END) AS female_beneficiaries,
    SUM(CASE WHEN b.gender = 'M' THEN 1 ELSE 0 END) AS male_beneficiaries,
    COALESCE(SUM(d.amount), 0) AS total_donation_amount,
    COUNT(DISTINCT d.donation_id) AS number_of_donations,
    ROUND(COALESCE(SUM(d.amount) / NULLIF(COUNT(DISTINCT d.donation_id), 0), 0), 2) AS avg_donation_per_supporter
FROM 
    campaign AS c
LEFT JOIN 
    beneficiary AS b ON c.campaign_id = b.campaign_id
LEFT JOIN 
    donation AS d ON c.campaign_id = d.campaign_id
GROUP BY 
    c.campaign_id, c.campaign_name
ORDER BY 
    total_donation_amount DESC, total_beneficiaries DESC;

-- SELECT QUERY 4

SELECT  campaign_id, campaign_name, target_amount, total_amount_raised, 

    (total_amount_raised / target_amount) * 100 AS percentage_achieved 

FROM campaign 

WHERE status = 'A';

-- SELECT QUERY 5

SELECT  l.name AS location, l.country, SUM(d.amount) AS total_donations 
FROM  location l 
JOIN  supporter s ON l.location_id = s.location_id 
JOIN donation d ON s.supporter_id = d.supporter_id 
GROUP BY  l.location_id, l.name, l.country
ORDER BY  total_donations DESC;

