CREATE DATABASE IF NOT EXISTS fraud_detection;
USE fraud_detection;

CREATE TABLE IF NOT EXISTS transactions (
    TransactionID INT PRIMARY KEY,
    Amount DECIMAL(10,2),
    CustomerID INT
);

CREATE TABLE IF NOT EXISTS metadata (
    TransactionID INT PRIMARY KEY,
    Timestamp DATETIME,
    MerchantID INT,
    FOREIGN KEY (TransactionID) REFERENCES transactions(TransactionID)
);

CREATE TABLE IF NOT EXISTS fraud (
    TransactionID INT PRIMARY KEY,
    FraudIndicator TINYINT(1),  -- 1 = Fraudulent, 0 = Legitimate
    FOREIGN KEY (TransactionID) REFERENCES transactions(TransactionID)
);

CREATE TABLE IF NOT EXISTS suspicious (
    CustomerID INT PRIMARY KEY,
    SuspiciousFlag TINYINT(1)  -- 1 = Suspicious, 0 = Normal
);

CREATE TABLE IF NOT EXISTS anomalies (
    TransactionID INT PRIMARY KEY,
    AnomalyScore FLOAT,
    FOREIGN KEY (TransactionID) REFERENCES transactions(TransactionID)
);

SELECT * FROM transactions LIMIT 10;
SELECT * FROM fraud WHERE FraudIndicator = 1;
SELECT * FROM suspicious WHERE SuspiciousFlag = 1;

SELECT t.TransactionID, t.Amount, m.Timestamp, m.MerchantID, f.FraudIndicator, a.AnomalyScore
FROM transactions t
JOIN metadata m ON t.TransactionID = m.TransactionID
JOIN fraud f ON t.TransactionID = f.TransactionID
JOIN anomalies a ON t.TransactionID = a.TransactionID
WHERE f.FraudIndicator = 1
ORDER BY a.AnomalyScore DESC;
