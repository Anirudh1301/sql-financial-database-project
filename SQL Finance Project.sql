

-- Create Companies table
CREATE TABLE Companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100),
    sector VARCHAR(50),
    founded_year INT
);

-- Create Financials table
CREATE TABLE Financials (
    financial_id INT PRIMARY KEY,
    company_id INT,
    fiscal_year INT,
    revenue DECIMAL(15,2),
    expenses DECIMAL(15,2),
    net_income DECIMAL(15,2),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

Create Stock_Prices table
CREATE TABLE Stock_Prices (
    price_id INT PRIMARY KEY,
    company_id INT,
    date DATE,
    open_price DECIMAL(10,2),
    close_price DECIMAL(10,2),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

Insert sample companies
INSERT INTO Companies VALUES
(1, 'Tata Consultancy Services', 'Technology', 1968),
(2, 'HDFC Bank', 'Banking', 1994),
(3, 'Reliance Industries', 'Energy', 1966),
(4, 'Infosys', 'Technology', 1981),
(5, 'ICICI Bank', 'Banking', 1994);

Insert sample financials
INSERT INTO Financials VALUES
(1, 1, 2022, 2100000000.00, 1500000000.00, 600000000.00),
(2, 2, 2022, 1800000000.00, 1200000000.00, 600000000.00),
(3, 3, 2022, 2500000000.00, 1900000000.00, 600000000.00),
(4, 4, 2022, 1500000000.00, 1000000000.00, 500000000.00),
(5, 5, 2022, 1300000000.00, 900000000.00, 400000000.00);

 Insert sample stock prices
INSERT INTO Stock_Prices VALUES
(1, 1, '2022-12-30', 3300.00, 3350.00),
(2, 2, '2022-12-30', 1600.00, 1625.00),
(3, 3, '2022-12-30', 2500.00, 2550.00),
(4, 4, '2022-12-30', 1450.00, 1480.00),
(5, 5, '2022-12-30', 900.00, 920.00);

 Query: Get top companies by net income
SELECT c.company_name, f.net_income
FROM Companies c
JOIN Financials f ON c.company_id = f.company_id
ORDER BY f.net_income DESC;
