
-- tables
-- Table: Class
CREATE TABLE Class (
    ID serial  NOT NULL,
    Num int  NOT NULL,
    CONSTRAINT Class_pk PRIMARY KEY (ID)
);

-- Table: Student
CREATE TABLE Student (
    ID int  NOT NULL,
    first_name decimal(8,2)  NOT NULL,
    last_name decimal(8,2)  NOT NULL,
    cur_grad smallint  NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (ID)
);

-- Table: Student_class
CREATE TABLE Student_class (
    ID serial  NOT NULL,
    Class_ID int  NOT NULL,
    Student_ID int  NOT NULL,
    grade char(1)  NOT NULL,
    semester_tak varchar(16)  NOT NULL,
    CONSTRAINT Student_class_pk PRIMARY KEY (ID)
);

-- foreign keys
-- Reference: Student_class_Class (table: Student_class)
ALTER TABLE Student_class ADD CONSTRAINT Student_class_Class
    FOREIGN KEY (Class_ID)
    REFERENCES Class (ID)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: Student_class_Student (table: Student_class)
ALTER TABLE Student_class ADD CONSTRAINT Student_class_Student
    FOREIGN KEY (Student_ID)
    REFERENCES Student (ID)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- End of file.
