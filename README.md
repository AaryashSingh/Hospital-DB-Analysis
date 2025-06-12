🏥 Hospital Database Analysis

📊 Overview

This project provides an analytical overview of hospital operations using a structured relational database. It includes patient data, medical staff details, medication, diagnosis, cafeteria operations, and billing. SQL queries are used to extract insights and support decision-making in healthcare management.

🧰 Technologies Used

SQL – Data query and manipulation
RDBMS – MySQL / PostgreSQL compatible
Presentation – Visualized using slides or dashboards
📁 Data Setup

The database is created and populated using SQL scripts, including:

Dropping existing tables (if any)
Creating relational tables with keys and constraints
Inserting sample data for departments, staff, patients, medications, and more
To set up the database:

Run the full SQL script in your SQL environment.
Ensure foreign key support is enabled.
Verify all tables are populated correctly.
🧱 Database Schema Overview

DEPARTMENT – Department details and worker count
WORKER – Base table for all hospital personnel
DOCTOR – Doctors' info linked to WORKER and DEPARTMENT
STAFF – Non-doctor staff roles
CAFETERIA / CAFETERIA_STAFF – Cafeteria facilities and assignments
PATIENT – Patient demographics and associated data
BILL – Patient billing and admission info
MEDICATION / MEDICATION_PRESCRIBED – Medications and prescriptions
DIAGNOSIS – Illness records linking doctors and patients
TESTS – Medical tests and results
DOCTOR_PATIENT – Interactions between doctors and patients
🔍 Key Queries and Analysis Goals

Find all doctors who have treated a patient for “Diabetes.”
List the details of all patients who have been prescribed medication "B205."
Find the total number of workers in each department.
Retrieve the names and phone numbers of all patients diagnosed with "Diabetes."
Get the names and IDs of all doctors who work in the "ER" department.
Find the total salary expenditure for all workers.
List all cafeteria staff along with their job position and the food type served.
Show details of patients and their medications, including those with no prescriptions.
Find the average age of patients diagnosed with "Flu."
✅ Project Benefits

Provides insights into treatment patterns and doctor assignments
Highlights salary distribution and departmental workload
Helps assess cafeteria staffing and services
Enables patient-level views of diagnoses and medications
