-- Drop the existing sequence
DROP SEQUENCE job_sequence; 

-- Drop the existing table
DROP TABLE jobs; 

-- Create the sequence
CREATE SEQUENCE job_sequence 
  START WITH 1 
  INCREMENT BY 1 
  MINVALUE 1 
  MAXVALUE 10000; 

-- Create the table
CREATE TABLE jobs 
  ( 
     id           NUMBER(3) PRIMARY KEY, 
     name         VARCHAR2(200), 
     description  VARCHAR2(500), 
     location     VARCHAR2(50), 
     country      VARCHAR2(50), 
     updated_date DATE 
  ); 

--Insert the required data
INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Project Manager', 
             'Opening for PM', 
             'Bangalore', 
             'India', 
             To_date('03/05/2003 09:02:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Product Manager', 
             'Opening for Product development', 
             'Bangalore', 
             'India', 
             To_date('05/07/2016 09:02:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Sales Executive', 
             'Opening for a prospective sales company', 
             'Mangalore', 
             'India', 
             To_date('05/07/2016 09:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Call Center Executive', 
             'Opening for a prospective sales company', 
             'Bhubaneswar', 
             'India', 
             To_date('05/07/2016 09:55:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Marketing Officer', 
             'Opening for a Sales and Marketing', 
             'Jaipur', 
             'India', 
             To_date('05/07/2016 09:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Operation Officer', 
             'Opening for Operations', 
             'Lalbagh', 
             'India', 
             To_date('05/07/2016 10:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Doctor', 
             'Orthopedic department', 
             'New Delhi', 
             'India', 
             To_date('05/07/2016 10:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Mechanical Engineer', 
             'Steel Plant', 
             'Rourkela', 
             'India', 
             To_date('05/07/2016 10:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'High Steel Mechanical Engineer', 
             'Steel Plant', 
             'Rourkela', 
             'India', 
             To_date('06/07/2016 10:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Airtel Engineer', 
             'Airtel Company', 
             'Nuagarh', 
             'India', 
             To_date('06/07/2016 10:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Airtel Engineer', 
             'Airtel Company', 
             'Nuagarh', 
             'India', 
             To_date('07/07/2016 10:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Vodafone Engineer', 
             'Vodafone Company', 
             'Nuagarh', 
             'India', 
             To_date('09/07/2016 05:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

INSERT INTO jobs 
VALUES      ( job_sequence.NEXTVAL, 
             'Vodafone Engineer', 
             'Vodafone Company', 
             'Nuagarh', 
             'India', 
             To_date('09/07/2016 05:45:44', 'dd/mm/yyyy hh12:mi:ss') ); 

COMMIT; 
/* ALL Select Queries */
SELECT * 
FROM   jobs; 

SELECT * 
FROM   jobs 
WHERE  To_char(updated_date, 'yyyy-mm-dd') > '2016-01-16'; 

SELECT * 
FROM   jobs 
WHERE  To_char(updated_date, 'yyyy-mm-dd hh12\:mi\:ss') > 
       '2016-03-16 09\:18\:01'; 

SELECT * 
FROM   jobs 
WHERE  To_char(updated_date, 'yyyy-mm-dd') > '2016-05-16'; 