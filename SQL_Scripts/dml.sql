
-- Inserting data into currency table
INSERT INTO currency (currency_id, currency_code, symbol, exchange_rate) VALUES
(1, 'AUD', '$', 1.43),        -- Australia
(2, 'USD', '$', 1.00),        -- USA
(3, 'INR', '₹', 0.012),       -- India
(4, 'CAD', '$', 0.75),        -- Canada
(5, 'GBP', '£', 1.23),        -- UK
(6, 'ILS', '₪', 0.29),        -- Palestine
(7, 'LBP', 'ل.ل', 0.00067),    -- Lebanon
(8, 'SDG', 'ج.س.', 0.0021),    -- Sudan
(9, 'YER', '﷼', 0.0040),      -- Yemen
(10, 'HTG', 'G', 0.010),      -- Haiti
(11, 'RWF', 'R₣', 0.0010),    -- Rwanda
(12, 'PEN', 'S/.', 0.27),     -- Peru
(13, 'ZMW', 'ZK', 0.051),     -- Zambia
(14, 'AFN', '؋', 0.012),      -- Afghanistan
(15, 'PHP', '₱', 0.018),      -- Philippines
(16, 'EGP', '£', 0.032),      -- Egypt
(17, 'SYP', '£', 0.0019);      -- Syria


-- Inserting data into location table
INSERT INTO location (location_id, currency_id, name, country) VALUES
(1, 1, 'Sydney', 'Australia'),
(2, 2, 'Florida', 'USA'),
(3, 3, 'Mumbai', 'India'),
(4, 4, 'Toronto', 'Canada'),
(5, 5, 'London', 'UK'),
(6, 6, 'Palestine', 'Palestine'),
(7, 7, 'Lebanon', 'Lebanon'),
(8, 8, 'Sudan', 'Sudan'),
(9, 9, 'Yemen', 'Yemen'),
(10, 10, 'Haiti', 'Haiti'),
(11, 11, 'Rwanda', 'Rwanda'),
(12, 12, 'Peru', 'Peru'),
(13, 13, 'Zambia', 'Zambia'),
(14, 14, 'Afghanistan', 'Afghanistan'),
(15, 15, 'Philipines', 'Philipines'),
(16, 16, 'Egypt', 'Egypt'),
(17, 17, 'Syria', 'Syria');


-- Inserting data into supporter table with hashed passwords
INSERT INTO supporter (supporter_id, supporter_name, password, email, date_of_birth, location_id) VALUES
(1, 'John Doe', '5e884898da28047151d0e56f8dc6292773603d0d', 'johndoe@example.com', '1985-06-15', 5),  
(2, 'Jane Smith', '6b5a4c9b4c8b4e3947c8b7db6195c84e4e1e489e', 'janesmith@example.com', '1990-08-25', 2), 
(3, 'Alice Johnson', '7e5c3a11f1b1e16c9ed11a42e98cd6cf9e03d422', 'alicej@example.com', '1975-03-30', 3),  
(4, 'Michael Brown', '4f8e9cce6946640a1fc07c8c45a0634d2392e379', 'michaelb@example.com', '1988-12-01', 1), 
(5, 'Emily Davis', '3f8e1bde70d0e2c9e2b48ecbfaeaf287d12a8994', 'emilyd@example.com', '1992-04-18', 2), 
(6, 'David Wilson', 'c09ccdfc3bdb3204e59e0b924431e6ca5ac3e105', 'davidw@example.com', '1980-07-22', 3), 
(7, 'Sophia Garcia', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'sophiag@example.com', '1995-09-10', 1),
(8, 'James Martinez', '58e133f1b0c7e888c8f7d6315f4c6e26e3f1f842', 'jamesm@example.com', '1978-11-30', 2), 
(9, 'Linda Lee', 'a5d58aefc5573c63e9b8d021f0342e14e045ab80', 'lindal@example.com', '1993-05-05', 3), 
(10, 'Chris Taylor', 'b9c054934581cfdc82e8eaa2a1e4c20c7d673f2d', 'chris@example.com', '1989-02-14', 4),
(11, 'Oliver Thompson', 'c4ca4238a0b2237ce68e109f0b2f00d4c', 'olivert@example.com', '1995-01-20', 1), 
(12, 'Ava Rodriguez', '098f6bcd4621d373cade4e832627b4f6', 'avar@example.com', '1992-02-14', 3),
(13, 'Lucas Nguyen', '7c6a180b36896a0a8c02787eeaf953b6', 'lucasn@example.com', '1987-05-05', 2),
(14, 'Mia Kim', '9f86d081884c7d659a2feaa0e5a5a84c', 'miak@example.com', '1990-11-15', 4), 
(15, 'Ethan Brown', '5d41402abc4b2a76b9719d911017c592', 'ethanb@example.com', '1983-07-30', 5); 



-- Inserting data into campaign table
INSERT INTO campaign (campaign_id, campaign_name, target_amount, total_amount_raised, start_date, end_date, status)
VALUES
    (1, 'Palestine: Give life-saving aid', 50000, 12000, '2024-01-01', '2024-12-31', 'A'),
    (2, 'Lebanon: Help families in need', 75000, 30000, '2024-02-01', '2024-12-31', 'A'),
    (3, 'Sudan: Help families fleeing conflict', 30000, 15000, '2024-03-01', '2025-05-30', 'A'),
    (4, 'Yemen: Give vital aid', 100000, 50000, '2024-04-01', '2025-06-30', 'A'),
    (5, 'Haiti: Help conflict-affected families', 80000, 45000, '2024-05-01', '2025-01-31', 'A'),
    (6, 'Rwanda, Peru, Zambia: Empower women', 25000, 20000, '2024-06-01', '2025-12-31', 'A'),
    (7, 'Afghanistan: Donate emergency support', 60000, 30000, '2024-07-01', '2025-01-31', 'A'),
    (8, 'Philippines: Strengthen nutrition and food security', 120000, 75000, '2024-08-01', '2025-02-28', 'A'),
    (9, 'Egypt: Support sustainable farming', 70000, 40000, '2024-09-01', '2025-03-31', 'A'),
    (10, 'Syria: Share with families in need', 50000, 25000, '2024-10-01', '2025-04-30', 'A');

-- Inserting data into campaign_location table
INSERT INTO campaign_location (campaign_id, location_id) VALUES
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 11),
(6, 12),
(6, 13),
(7, 14),
(8, 15),
(9, 16),
(10, 17);

-- Inserting data into payment_detail table with hashed card numbers
INSERT INTO payment_detail (payment_detail_id, supporter_id, card_number, expiration_date, billing_address) VALUES
(1, 1, '5e884898da28047151d0e56f8dc6292773603d0d', '2025-12-31', '123 London St, London, UK'),
(2, 2, '6b5a4c9b4c8b4e3947c8b7db6195c84e4e1e489e', '2024-11-30', '456 Miami Blvd, Florida, USA'),
(3, 3, '7e5c3a11f1b1e16c9ed11a42e98cd6cf9e03d422', '2026-03-15', '789 Mumbai Rd, Mumbai, India'),
(4, 4, '4f8e9cce6946640a1fc07c8c45a0634d2392e379', '2025-05-20', '101 Sydney Ave, Sydney, Australia'),
(5, 5, '3f8e1bde70d0e2c9e2b48ecbfaeaf287d12a8994', '2024-09-10', '234 Miami St, Florida, USA'),
(6, 6, 'c09ccdfc3bdb3204e59e0b924431e6ca5ac3e105', '2026-01-31', '567 Mumbai Lane, Mumbai, India'),
(7, 7, 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '2025-08-05', '890 Sydney Rd, Sydney, Australia'),
(8, 8, '58e133f1b0c7e888c8f7d6315f4c6e26e3f1f842', '2024-04-21', '123 Miami Rd, Florida, USA'),
(9, 9, 'a5d58aefc5573c63e9b8d021f0342e14e045ab80', '2024-07-12', '234 Mumbai Blvd, Mumbai, India'),
(10, 10, 'b9c054934581cfdc82e8eaa2a1e4c20c7d673f2d', '2024-10-25', '345 Toronto St, Toronto, Canada');


-- Inserting data into subscription table
INSERT INTO subscription (subscription_id, supporter_id, campaign_id, payment_detail_id, subscription_amount, start_date, end_date, status) VALUES
(1, 3, 1, 3, 15.00, '2024-04-01', '2025-04-01', 'A'),
(2, 5, 2, 5, 20.00, '2024-04-10', '2025-04-10', 'A'),
(3, 6, 3, 6, 30.00, '2024-05-01', '2025-05-01', 'A'),
(4, 9, 4, 9, 10.00, '2024-05-15', '2025-05-15', 'A'),
(5, 1, 5, 1, 25.00, '2024-05-20', '2025-05-20', 'A'),
(6, 4, 6, 4, 40.00, '2024-05-25', '2025-05-25', 'A'),
(7, 2, 7, 2, 50.00, '2024-06-01', '2025-06-01', 'A'),
(8, 8, 8, 8, 35.00, '2024-06-10', '2025-06-10', 'A'),
(9, 7, 9, 7, 12.00, '2024-06-15', '2025-06-15', 'A'),
(10, 10, 10, 10, 45.00, '2024-06-20', '2025-06-20', 'A');


-- Inserting data into donation table
INSERT INTO donation (donation_id, supporter_id, campaign_id, subscription_id, donation_type, amount, currency_id, donation_date, status) VALUES
(1, 1, 3, NULL, 'One-time', 50.00, 1, '2024-04-15', 'C'),
(2, 2, 1, NULL, 'One-time', 100.00, 2, '2024-04-18', 'C'),
(3, 3, 3, 1, 'Recurring', 25.00, 1, '2024-04-20', 'A'),
(4, 4, 5, NULL, 'One-time', 75.00, 1, '2024-04-22', 'C'),
(5, 5, 5, NULL, 'Recurring', 30.00, 2, '2024-04-25', 'A'),
(6, 6, 7, 2, 'One-time', 50.00, 1, '2024-04-28', 'C'),
(7, 7, 7, NULL, 'Recurring', 20.00, 3, '2024-05-02', 'A'),
(8, 8, 2, NULL, 'One-time', 10.00, 1, '2024-05-05', 'C'),
(9, 9, 9, 3, 'Recurring', 15.00, 2, '2024-05-10', 'A'),
(10, 10, 10, NULL, 'One-time', 40.00, 1, '2024-05-12', 'C'),
(11, 1, 3, NULL, 'One-time', 60.00, 1, '2024-05-15', 'C'),  
(12, 2, 5, NULL, 'One-time', 35.00, 2, '2024-05-18', 'A'), 
(13, 3, 7, NULL, 'One-time', 80.00, 1, '2024-05-20', 'C'), 
(14, 4, 9, NULL, 'One-time', 45.00, 3, '2024-05-22', 'A'),  
(15, 5, 2, NULL, 'One-time', 90.00, 2, '2024-05-25', 'C'),  
(16, 6, 6, NULL, 'One-time', 120.00, 1, '2024-05-30', 'C'), 
(17, 7, 8, NULL, 'One-time', 30.00, 2, '2024-06-02', 'A'),  
(18, 11, 4, NULL, 'One-time', 25.00, 1, '2024-06-05', 'C'), 
(19, 12, 6, NULL, 'One-time', 45.00, 2, '2024-06-10', 'A'),
(20, 13, 7, NULL, 'Recurring', 35.00, 1, '2024-06-15', 'A'), 
(21, 14, 3, NULL, 'One-time', 70.00, 3, '2024-06-18', 'C'), 
(22, 15, 10, NULL, 'One-time', 100.00, 2, '2024-06-22', 'C'); 



-- Inserting data into beneficiary table
INSERT INTO beneficiary (beneficiary_id, beneficiary_name, description, age, gender, campaign_id, location_id) VALUES
(1, 'Fatima Ahmad', 'Refugee child', 12, 'F', 10, 17),
(2, 'Omar Khamis', 'Displaced individual', 30, 'M', 4, 9),
(3, 'Layla Hussein', 'Child in need', 9, 'F', 6, 13),
(4, 'Ali Mohammed', 'Orphan in Yemen', 5, 'M', 2, 7),
(5, 'Maya Ibrahim', 'Single mother', 28, 'F', 5, 10),
(6, 'Samir Al-Farsi', 'Young boy needing food', 8, 'M', 7, 14),
(7, 'Amina Nuru', 'Girl with malnutrition', 10, 'F', 9, 16),
(8, 'Khaled Saleh', 'Child in need of shelter', 7, 'M', 3, 8),
(9, 'Nadia Abdallah', 'Student affected by war', 14, 'F', 1, 6),
(10, 'Rami Aziz', 'Victim of flooding', 11, 'M', 6, 12),
(11, 'Zara Ali', 'Orphaned due to conflict', 6, 'F', 8, 13),
(12, 'Ibrahim Youssef', 'Child in a refugee camp', 4, 'M', 1, 14),
(13, 'Fatima Salim', 'Girl in need of education', 15, 'F', 10, 15),
(14, 'Hassan Jaber', 'Disabled boy needing assistance', 12, 'M', 3, 16),
(15, 'Sara Mahmoud', 'Single parent seeking aid', 33, 'F', 9, 17),
(16, 'Yasmin Noor', 'Teenager with health issues', 17, 'F', 2, 10),
(17, 'Omar Nasir', 'Child victim of violence', 8, 'M', 6, 11),
(18, 'Layla Farah', 'Refugee child', 7, 'F', 5, 12),
(19, 'Khaled El-Mansour', 'Young boy needing medical help', 9, 'M', 4, 13),
(20, 'Aisha Jabari', 'Girl in need of shelter', 11, 'F', 1, 14),
(21, 'Rami Khoury', 'Child affected by poverty', 10, 'M', 7, 15),
(22, 'Mariam Khalil', 'Girl displaced by war', 13, 'F', 2, 16),
(23, 'Yusuf Ahmed', 'Child needing psychological support', 6, 'M', 8, 17),
(24, 'Nawal Saleh', 'Orphan in need of food', 5, 'F', 3, 10),
(25, 'Ali Nabil', 'Boy affected by famine', 9, 'M', 9, 11);



-- Inserting data into campaign_update table
INSERT INTO campaign_update (update_id, campaign_id, update_date, update_content, status) VALUES
(1, 1, '2024-04-10', 'In North Gaza, WFP-supported kitchens are now providing hot meals with fresh vegetables – including onions and potatoes. The first 14 mt of vegetables reached Deir Al Balah in mid-August in an attempt to address the lack of fresh fruit. WFP is working hard to bring in nutritious, fresh produce wherever possible.', 'A'),
(2, 2, '2024-05-15', 'WFP is currently serving hot meals, ready-to-eat rations, food parcels and cash assistance daily to nearly 160,000 people in shelters with plans to continue scaling up.', 'A'),
(3, 3, '2024-06-20', 'In August, Chad’s Adre border crossing was reopened. Since the opening, 70 WFP trucks carrying food commodities for around 172,600 people have crossed into the Darfur region. The latest convoy crossed on the 11th of September.', 'A'),
(4, 4, '2024-06-25', 'In 2023, WFP assisted more than 13 million people with food assistance across all 22 governorates of Yemen.','A'),
(5, 5, '2024-07-01', 'After armed gang activity pushed Haiti into a state of emergency, assistance in the capital was halted except for hot meals to displaced people.', 'A'),
(6, 7, '2024-08-10', 'Incessant rains in March, April and May triggered floods across most of Afghanistan. WFP provided affected households with high-energy biscuits, a nutritional supplement and bread in the aftermath, and will also focus on flood mitigation projects.', 'A'),
(7, 10, '2024-12-01', 'An estimated 240,000 people have fled violence in Lebanon into Syria. WFP is providing fortified date bars and fresh meals to people arriving at the main border crossings and plans to scale up support.', 'A'),
(8, 10, '2024-11-02', 'Today marks 12 years of war in Syria. WFP provides food assistance for an average of 5.5 million people every month across the country.', 'A'),
(9, 2, '2024-03-20', 'So far, WFP has distributed hot meals, ready-to-eat rations, food parcels, fresh bread, sandwiches and cash to more than 128,000 newly displaced people, staying in shelters.', 'A');



-- Inserting data into image table
INSERT INTO image (image_id, file_path, description, campaign_id, beneficiary_id, supporter_id) VALUES
(1, '/images/campaign1.jpg', 'Food distribution event in the city.', 1, NULL, NULL),
(2, '/images/campaign2.jpg', 'Supporters helping in meal preparations.', 2, NULL, NULL),
(3, '/images/campaign3.jpg', 'Beneficiaries receiving their food packs.', 3, 1, NULL),
(4, '/images/campaign4.jpg', 'Community engagement at a fundraising event.', 4, NULL, 2),
(5, '/images/campaign5.jpg', 'Kids enjoying meals provided by the campaign.', 5, 2, NULL),
(6, '/images/campaign6.jpg', 'Volunteers packing meals for delivery.', 6, NULL, 3),
(7, '/images/campaign7.jpg', 'Refugee children at a food distribution site.', 7, 3, NULL),
(8, '/images/campaign8.jpg', 'Celebrating successful fundraising efforts.', 8, NULL, 4),
(9, '/images/campaign9.jpg', 'Local partnerships formed to enhance outreach.', 9, NULL, 5),
(10, '/images/campaign10.jpg', 'Food security initiatives in action.', 10, NULL, 6);

-- Inserting data into volunteer table
INSERT INTO volunteer (volunteer_id, supporter_id, campaign_id, role, start_date, end_date, contact_info) VALUES
(1, 1, 1, 'Meal packer', '2024-03-01', '2024-05-01', 'john.doe@example.com'),
(2, 2, 2, 'Event coordinator', '2024-03-15', '2024-05-15', 'jane.smith@example.com'),
(3, 3, 3, 'Food distributor', '2024-04-01', '2024-06-01', 'alice.johnson@example.com'),
(4, 4, 4, 'Fundraiser', '2024-04-10', '2024-06-10', 'bob.brown@example.com'),
(5, 5, 5, 'Community outreach', '2024-04-20', '2024-06-20', 'charlie.davis@example.com'),
(6, 6, 6, 'Volunteer trainer', '2024-04-25', '2024-06-25', 'diana.white@example.com'),
(7, 7, 7, 'Public relations', '2024-05-01', '2024-07-01', 'edward.james@example.com'),
(8, 8, 8, 'Social media manager', '2024-05-05', '2024-07-05', 'frank.miller@example.com'),
(9, 9, 9, 'Event assistant', '2024-05-15', '2024-07-15', 'george.wilson@example.com'),
(10, 10, 10, 'Volunteer coordinator', '2024-05-20', '2024-07-20', 'hannah.moore@example.com');




