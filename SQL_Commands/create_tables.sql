CREATE TABLE STUDENT (
    sid VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    age INT,
    city VARCHAR(100),
    district VARCHAR(100),
    cgpa FLOAT CHECK (cgpa BETWEEN 0.00 AND 4.00)
);

CREATE TABLE FACULTY (
    fid VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

CREATE TABLE PROJECT (
    pid VARCHAR(30) PRIMARY KEY,
    title VARCHAR(255)
);

CREATE TABLE TEACHER (
    tid VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15),
    room_no VARCHAR(10),
    floor VARCHAR(10)
);

CREATE TABLE COURSE (
    cid VARCHAR(20) PRIMARY KEY,
    cname VARCHAR(60),
    credit INT CHECK (credit BETWEEN 1 AND 4),
    has_theory BOOLEAN,
    teacher_id VARCHAR(20),  
    FOREIGN KEY (teacher_id) REFERENCES TEACHER(tid) ON DELETE SET NULL
);

CREATE TABLE WORKS_ON (
    student_id VARCHAR(20),
    project_id VARCHAR(30),
    PRIMARY KEY (student_id, project_id),
    FOREIGN KEY (student_id) REFERENCES STUDENT(sid) ON DELETE CASCADE,
    FOREIGN KEY (project_id) REFERENCES PROJECT(pid) ON DELETE CASCADE
);

CREATE TABLE ENROLLS (
    student_id VARCHAR(20),
    course_id VARCHAR(20),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES STUDENT(sid) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES COURSE(cid) ON DELETE CASCADE
);

CREATE TABLE TEACHES (
    teacher_id VARCHAR(20),
    course_id VARCHAR(20),
    PRIMARY KEY (teacher_id, course_id),
    FOREIGN KEY (teacher_id) REFERENCES TEACHER(tid) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES COURSE(cid) ON DELETE CASCADE
);
