# 🎓 DIU Student Database Management System

A fully designed and implemented relational database system built as part of the Database Management System (DBMS) course (CIS222) – Spring 2025.

This project simulates a real-world university database system to manage students, faculty, courses, teachers, and academic projects using SQL.

---

## 📌 Project Overview

The system is designed to:

- Store detailed student information
- Manage faculty supervision
- Track student projects/thesis
- Handle course registrations
- Maintain teacher-course assignments
- Execute analytical SQL queries

The database is fully normalized and enforces referential integrity using primary and foreign key constraints.

---

## 🏗 Database Design

### Entities Implemented

- **Student**
- **Faculty**
- **Project**
- **Teacher**
- **Course**
- **Enrolls** (Junction Table)
- **Works_On** (Junction Table)
- **Teaches** (Junction Table)

---

## 🧠 Key Concepts Applied

- ER Diagram Design
- Relational Model Conversion
- Normalization (up to 3NF)
- Primary & Foreign Key Constraints
- Composite Keys
- CHECK Constraints
- UNIQUE Constraints
- ON DELETE CASCADE / SET NULL
- Many-to-Many Relationship Handling
- Data Integrity Enforcement

---

## 🗃 Database Schema Highlights

- Each student is supervised by a faculty member
- Each student works on one project
- Students can enroll in multiple courses
- Teachers are assigned to courses
- Junction tables are used to resolve many-to-many relationships

---
