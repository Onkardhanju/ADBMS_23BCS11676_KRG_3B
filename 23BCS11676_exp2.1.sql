CREATE TABLE EMPLOYEE(
EMP_ID INT primary key,
EMP_NAME VARCHAR(25),
DEPARTMENT VARCHAR(25),
MANAGER_ID INT);

INSERT INTO EMPLOYEE (EMP_ID,EMP_NAME,DEPARTMENT,MANAGER_ID) 
VALUES 
    (1, 'alice', 'hr', NULL),
    (2, 'bob', 'finance', 1),
    (3, 'charlie', 'it', 1),
    (4, 'david', 'finance', 2),
    (5, 'eve', 'it', 3),
    (6, 'frank', 'hr', 1);

SELECT E1.EMP_NAME AS [EMPLOYEE NAME], E2.EMP_NAME AS [MANAGER NAME],
E1.DEPARTMENT AS [EMPLOYEE_DEPT], E2.DEPARTMENT AS [MANAGER_DEPT]
FROM EMPLOYEE AS E1
LEFT OUTER JOIN 
EMPLOYEE AS E2
ON
E1.MANAGER_ID = E2.EMP_ID;