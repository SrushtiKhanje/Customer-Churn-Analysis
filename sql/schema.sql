CREATE TABLE customers (
    customerID VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    customer_lifetime_value DECIMAL(12,2),
    revenue_tier VARCHAR(20),
    engagement_score DECIMAL(10,2)
);

CREATE TABLE subscriptions (
    subscription_id INT AUTO_INCREMENT PRIMARY KEY,
    customerID VARCHAR(50),

    Contract VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(12,2),
    PaymentMethod VARCHAR(100),
    PaperlessBilling VARCHAR(10),

    billing_risk_score INT,
    Churn VARCHAR(10),
    churn_risk_segment VARCHAR(20),

    FOREIGN KEY (customerID)
    REFERENCES customers(customerID)
);


CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,

    customerID VARCHAR(50),

    InternetService VARCHAR(50),
    PhoneService INT,
    OnlineSecurity INT,
    OnlineBackup INT,
    DeviceProtection INT,
    TechSupport INT,
    StreamingTV INT,
    StreamingMovies INT,

    service_adoption_score INT,

    FOREIGN KEY (customerID)
    REFERENCES customers(customerID)
);


CREATE TABLE support (
    support_id INT AUTO_INCREMENT PRIMARY KEY,

    customerID VARCHAR(50),

    numAdminTickets INT,
    numTechTickets INT,

    support_frustration_score INT,
    high_value_churn_flag INT,

    FOREIGN KEY (customerID)
    REFERENCES customers(customerID)
);