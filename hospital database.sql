select 
doctor.doctor_id, 
worker.fname, 
worker.lname,
diagnosis.illness
from worker 
JOIN 
doctor ON doctor.D_Worker_ID = worker.worker_id
JOIN 
diagnosis ON diagnosis.doctor_id = doctor.doctor_id
WHERE 
illness = 'Diabetes';

#2. List the details of all patients who have been prescribed "B205."

select patient.patient_id,patient.fname, patient.lname,patient.telephone,patient.Address, MEDICATION_PRESCRIBED.Medication_ID 
from patient INNER JOIN MEDICATION_PRESCRIBED
ON MEDICATION_PRESCRIBED.patient_id = patient.patient_id
WHERE Medication_ID = 'B205';

#3. Find the total number of workers in each department.

select * from department;

#4. Retrieve the names and phone numbers of all patients who have been diagnosed with "Diabetes."

select patient.patient_id,patient.fname,patient.lname,patient.telephone 
from patient
JOIN DIAGNOSIS ON patient.patient_id = DIAGNOSIS.patient_id
WHERE illness = 'Diabetes';

#5. Get the names and IDs of all doctors who work in the "ER" department.

SELECT doctor.doctor_id, WORKER.fname,WORKER.lname,department.department_id 
FROM worker 
JOIN doctor
ON worker.worker_id = doctor.d_worker_id
JOIN department
ON doctor.Department_ID = department.department_id 
WHERE department.department_id = 'ER';


#6.Find the total salary expenditure for all workers.

SELECT sum(salary) AS Total_Salary from WORKER;

#7. List all cafeteria staff along with their job position and the food type served in their assigned cafeteria.

select Cafeteria_Staff.staff_id,STAFF.job_title,Cafeteria_Staff.position,CAFETERIA.food_type
FROM CAFETERIA JOIN Cafeteria_Staff
ON CAFETERIA.Cafeteria_ID = Cafeteria_Staff.Cafeteria_ID
JOIN STAFF ON Cafeteria_Staff.staff_id = staff.staff_id
WHERE Job_Title = 'cafeteria staff';

#9. Show details of patients along with the medication they are prescribed, even if no medication has been prescribed.
select *
FROM patient p 
LEFT JOIN MEDICATION_PRESCRIBED mp
ON p.Patient_ID = mp.patient_id
LEFT JOIN MEDICATION m
ON m.Medication_ID = mp.Medication_ID
;
#10.Find the average age of patients diagnosed with "Flu.
SELECT AVG(AGE) FROM patient p
JOIN DIAGNOSIS d
ON p.patient_id = d.patient_id
WHERE illness = 'FLU';
