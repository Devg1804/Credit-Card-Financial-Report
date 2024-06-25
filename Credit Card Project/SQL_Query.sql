CREATE TABLE card_details(
	Client_Num INT,
	Card_Category VARCHAR(200),
	Annual_Fees INT,	
	Activation_30_Days VARCHAR(20),
	Customer_Acq_Cost INT,
	Week_Start_Date	DATE,
	Week_Num VARCHAR(20),
	Qtr	VARCHAR(20),
	current_year INT,
	Credit_Limit DECIMAL(10,2),
	Total_Revolving_Bal INT,
	Total_Trans_Amt	INT,
	Total_Trans_Vol	INT,
	Avg_Utilization_Ratio DECIMAL(10,3),
	Use_Chip VARCHAR(20),
	Exp_Type VARCHAR(50),
	Interest_Earned	DECIMAL(10,2),
	Delinquent_Acc VARCHAR(20)

)

SELECT * FROM card_details

ALTER TABLE card_details
ALTER COLUMN Activation_30_Days
TYPE INT
USING Activation_30_days::integer





CREATE TABLE cus_details (
	Client_Num INT,
	Customer_Age INT,
	Gender VARCHAR(10),
	Dependent_Count INT,
	Education_Level	VARCHAR(50),
	Marital_Status VARCHAR(50),
	state_cd VARCHAR(20),
	Zipcode VARCHAR(20),
	Car_Owner VARCHAR(20),
	House_Owner VARCHAR(20),
	Personal_loan VARCHAR(20),
	contact VARCHAR(20),
	Customer_Job VARCHAR(50),
	Income INT,
	Cust_Satisfaction_Score INT

);

COPY card_details
FROM 'C:\Users\Mayank\Desktop\Credit_Card_Financial_Dashboard\Credit Card Project\credit_card.csv'
DELIMITER ','
CSV HEADER

COPY cus_details
FROM 'C:\Users\Mayank\Desktop\Credit_Card_Financial_Dashboard\Credit Card Project\customer.csv'
DELIMITER ','
CSV HEADER
