-- Query 1. Retrieve all employees whose address is in Elgin,IL.
SELECT *
  FROM EMPLOYEES
  WHERE ADDRESS LIKE '%Elgin,IL%';

-- Query 2. Retrieve all employees who were born during the 1970's
SELECT *
  FROM EMPLOYEES
  WHERE B_DATE LIKE '197%';

-- Query 3. Retrieve all employees in department 5 whose salary is between 60000 and 70000
SELECT *
  FROM EMPLOYEES
  WHERE DEP_ID = 5 AND ( SALARY BETWEEN 60000 AND 70000 );

-- Query 4A. Retrieve a list of employees ordered by department ID.
SELECT F_NAME, L_NAME, DEP_ID
  FROM EMPLOYEES
  ORDER BY DEP_ID;

-- Query 4B. Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
SELECT F_NAME, L_NAME, DEP_ID
  FROM EMPLOYEES
  ORDER BY DEP_ID DESC, L_NAME DESC;

-- Query 5A For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, COUNT(*) AS DEP_ID_COUNT
  FROM EMPLOYEES
  GROUP BY DEP_ID;

-- Query 5B. For each department retrieve the number of employees in the department and the average employees salary in the department.
SELECT DEP_ID, COUNT(*) AS EMP_IN_DEP, AVG(SALARY) AS AVG_SALARY
  FROM EMPLOYEES
  GROUP BY DEP_ID;

-- Query 5C. Label the computed columns in the result set of query 5B as "NUM_EMPLOYEES" and "AVG_SALARY".
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
  FROM EMPLOYEES
  GROUP BY DEP_ID;

-- Query 5D. In query 5C order the result set by Average Salary.
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
  FROM EMPLOYEES
  GROUP BY DEP_ID
  ORDER BY AVG_SALARY;

-- Query 5E. In query 5D limit the result to department with fewer than 4 employes.
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
  FROM EMPLOYEES
  GROUP BY DEP_ID
  HAVING COUNT(*) < 4
  ORDER BY AVG_SALARY;

-- Query 6. Similar to 4B but instead of department ID use department name. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name.
SELECT D.DEP_NAME, E.F_NAME, E.L_NAME
  FROM DEPARTMENTS AS D, EMPLOYEES AS E
 WHERE E.DEP_ID = D.DEPT_ID_DEP
  ORDER BY D.DEP_NAME, E.L_NAME DESC;
