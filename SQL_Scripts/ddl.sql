-- Table for currency details
CREATE TABLE currency (
    currency_id INT PRIMARY KEY,
    currency_code VARCHAR(10) UNIQUE,
    symbol VARCHAR(10),
    exchange_rate DECIMAL(10, 4)
);

-- Table for location details
CREATE TABLE location (
    location_id INT PRIMARY KEY,
    currency_id INT,
    name VARCHAR(255),
    country VARCHAR(255),
    FOREIGN KEY (currency_id) REFERENCES currency(currency_id)
);

-- Table for supporter details
CREATE TABLE supporter (
    supporter_id INT PRIMARY KEY,
    supporter_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    date_of_birth DATE,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);

-- Table for campaign details
CREATE TABLE campaign (
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(255) NOT NULL,
    target_amount DECIMAL(10, 2),
    total_amount_raised DECIMAL(10, 2),
    start_date DATE,
    end_date DATE,
    status CHAR(1)
);

-- Table for storing payment details associated with supporters
CREATE TABLE payment_detail (
    payment_detail_id INT PRIMARY KEY,
    supporter_id INT,
    card_number VARCHAR(255) UNIQUE NOT NULL,
    expiration_date DATE,
    billing_address VARCHAR(255),
    FOREIGN KEY (supporter_id) REFERENCES supporter(supporter_id)
);

-- Table for subscriptions by supporters to campaigns
CREATE TABLE subscription (
    subscription_id INT PRIMARY KEY,
    supporter_id INT,
    campaign_id INT,
    payment_detail_id INT,
    subscription_amount DECIMAL(10, 2),
    start_date DATE,
    end_date DATE,
    status CHAR(1),
    FOREIGN KEY (supporter_id) REFERENCES supporter(supporter_id),
    FOREIGN KEY (campaign_id) REFERENCES campaign(campaign_id),
    FOREIGN KEY (payment_detail_id) REFERENCES payment_detail(payment_detail_id)
);

-- Table for donations made by supporters to campaigns
CREATE TABLE donation (
    donation_id INT PRIMARY KEY,
    supporter_id INT,
    campaign_id INT,
    subscription_id INT,
    donation_type VARCHAR(50),
    amount DECIMAL(10, 2),
    currency_id INT,
    donation_date DATE,
    status CHAR(1),
    FOREIGN KEY (supporter_id) REFERENCES supporter(supporter_id),
    FOREIGN KEY (campaign_id) REFERENCES campaign(campaign_id),
    FOREIGN KEY (subscription_id) REFERENCES subscription(subscription_id),
    FOREIGN KEY (currency_id) REFERENCES currency(currency_id)
);

-- Table for beneficiaries associated with campaigns
CREATE TABLE beneficiary (
    beneficiary_id INT PRIMARY KEY,
    beneficiary_name VARCHAR(255) NOT NULL,
    description TEXT,
    age INT,
    gender CHAR(1),
    campaign_id INT,
    location_id INT,
    FOREIGN KEY (campaign_id) REFERENCES campaign(campaign_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);

-- Table for updates associated with a campaign
CREATE TABLE campaign_update (
    update_id INT PRIMARY KEY,
    campaign_id INT,
    update_date DATE,
    update_content TEXT,
    status CHAR(1),
    FOREIGN KEY (campaign_id) REFERENCES campaign(campaign_id)
);

-- Bridge table to represent many-to-many relationship between campaign and location
CREATE TABLE campaign_location (
    campaign_id INT,
    location_id INT,
    PRIMARY KEY (campaign_id, location_id),
    FOREIGN KEY (campaign_id) REFERENCES campaign(campaign_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);

-- Table for storing images associated with campaigns, beneficiaries, or supporters
CREATE TABLE image (
    image_id INT PRIMARY KEY,
    file_path VARCHAR(255) NOT NULL,
    description TEXT,
    campaign_id INT,
    beneficiary_id INT,
    supporter_id INT,
    FOREIGN KEY (campaign_id) REFERENCES campaign(campaign_id),
    FOREIGN KEY (beneficiary_id) REFERENCES beneficiary(beneficiary_id),
    FOREIGN KEY (supporter_id) REFERENCES supporter(supporter_id)
);

-- Table for volunteers associated with campaigns
CREATE TABLE volunteer (
    volunteer_id INT PRIMARY KEY,
    supporter_id INT,
    campaign_id INT,
    role VARCHAR(255),
    start_date DATE,
    end_date DATE,
    contact_info VARCHAR(255),
    FOREIGN KEY (supporter_id) REFERENCES supporter(supporter_id),
    FOREIGN KEY (campaign_id) REFERENCES campaign(campaign_id)
);
