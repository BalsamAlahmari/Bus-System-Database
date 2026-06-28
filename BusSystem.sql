/* =====================================
   Bus Management Database System
   Table Creation
   ===================================== */
create table student(
    student_id number(10) not null primary key,
    s_Fname varchar(10),
    s_Mname varchar(10),
    s_Lname varchar(10),
    s_city varchar(15),
    s_postcode number(6),
    s_street varchar(35),
    s_block_number number(4),
    student_uni varchar(20),
    s_PhNumber number(10)
);
create table Bus(
    bus_number number(3) not null primary key,
    license_plate varchar(8)
);
create table driver(
    driver_id number(10) not null primary key,
    d_Fname varchar(10),
    d_Mname varchar(10),
    d_Lname varchar(10),
    work_time varchar(15),
    d_city varchar(15),
    d_postcode number(6),
    d_street varchar(35),
    d_block_number number(4),
    d_PhNumber number(10)
);
create table bus_destination( 
    destination_number NUMBER (3) GENERATED ALWAYS AS IDENTITY ( 
    START WITH 1
    INCREMENT BY 1 
    MAXVALUE 200),
    bus_number  number(3) not null , 
    driver_id number(10) not null , 
    work_time varchar(15) , 
    b_city varchar(15), 
    s_postcode number(6) not null , 
    b_street varchar(35), 
    b_block_number number(4), 
    uni varchar(20), 
    CONSTRAINT PK_bus PRIMARY KEY(destination_number),
    CONSTRAINT FK_Dbus FOREIGN KEY (bus_number)REFERENCES bus ( bus_number),
     CONSTRAINT FK_DdriverFOREIGN KEY (driver_id)REFERENCES driver(driver_id)

);
create table administrator(
    admin_id number(3) not null ,
    a_Fname varchar(10),
    a_Mname varchar(10),
    a_Lname varchar(10),
    work_time varchar(15),
    a_PhNumber number(10), 
    CONSTRAINT PK_Admin PRIMARY KEY (admin_id)
);
create table access_control(
    admin_id number(3) not null ,
    destination_number number(3) not null ,
    student_id number(10) not null ,
    CONSTRAINT PK_Cadmin PRIMARY KEY (admin_id,destination_number,student_id),
    CONSTRAINT FK_Cbus FOREIGN KEY (destination_number)REFERENCES bus_destination( destination_number),
     CONSTRAINT FK_Cstudent FOREIGN KEY (student_id)REFERENCES student(student_id)
);


/*student insertion*/
INSERT INTO student (student_id, s_Fname, s_Mname, s_Lname, s_city, s_postcode, s_street, s_block_number, student_uni, s_PhNumber)
VALUES (1234567890, 'Soha', 'Ahmed', 'Al-zahrani', 'Jeddah', 100010, 'Tahlia', 55, 'Jeddah University', 0506543832);

INSERT INTO student (student_id, s_Fname, s_Mname, s_Lname, s_city, s_postcode, s_street, s_block_number, student_uni, s_PhNumber)
VALUES (1234567891, 'Mona', 'Khaled', 'Al-qahtani', 'Jeddah', 100510, 'Tahlia', 95, 'Jeddah University', 0576543832);

INSERT INTO student (student_id, s_Fname, s_Mname, s_Lname, s_city, s_postcode, s_street, s_block_number, student_uni, s_PhNumber)
VALUES (1234567892, 'Amal', 'Yazeed','Aqeel', 'Jeddah', 100019, 'Al-khalidiya', 11, 'Jeddah University', 0506543892);

INSERT INTO student (student_id, s_Fname, s_Mname, s_Lname, s_city, s_postcode, s_street, s_block_number, student_uni, s_PhNumber)
VALUES (1234567893, 'Mona', 'Basm', 'Al-qahtani', 'Jeddah', 100015, 'Al-nahdah', 38, 'Jeddah University', 0576543032);

INSERT INTO student (student_id, s_Fname, s_Mname, s_Lname, s_city, s_postcode, s_street, s_block_number, student_uni, s_PhNumber)
VALUES (1234567894, 'Nada', 'Ahmed', 'Al-zahrani', 'Jeddah', 120010, 'Abdullah bin Al-Abbas', 009, 'Jeddah University', 0506043832);


INSERT INTO student (student_id, s_Fname, s_Mname, s_Lname, s_city, s_postcode, s_street, s_block_number, student_uni, s_PhNumber)
VALUES (1234567895, 'Sara', 'Amin', 'Al-harbi', 'Makkah', 120510, 'Abdullah bin Al-Abbas', 43, 'KAU', 0576593832);

INSERT INTO student (student_id, s_Fname, s_Mname, s_Lname, s_city, s_postcode, s_street, s_block_number, student_uni, s_PhNumber)
VALUES (1234567896, 'Farah', 'Malik','Al-ahmari', 'Makkah', 120019, 'Dr Abdul qadir koshak', 20, 'KAU', 0508543892);

INSERT INTO student (student_id, s_Fname, s_Mname, s_Lname, s_city, s_postcode, s_street, s_block_number, student_uni, s_PhNumber)
VALUES (1234567897, 'Wafa', 'Anwar', 'Al-juhani', 'Makkah', 120015, 'Al-Laith', 19, 'KAU', 0536543032);


/*bus insertion*/

iNSERT INTO Bus (bus_number, license_plate)
VALUES (101, 'ABC1234');
INSERT INTO Bus (bus_number, license_plate)
VALUES (102, 'DEF5678');
iNSERT INTO Bus (bus_number, license_plate)
VALUES (100, 'BHY1234');
INSERT INTO Bus (bus_number, license_plate)
VALUES (103, 'DTR5678');

/*driver insertion*/
INSERT INTO driver (driver_id, d_Fname, d_Mname, d_Lname, work_time, d_city, d_postcode, d_street, d_block_number, d_PhNumber)
VALUES (9076543210, 'Owais','Farid','Alqahtani', 'Morning Shift', 'Jeddah', 90730, 'Hawshab Ibn Yazid', 15, 0573457890);

INSERT INTO driver (driver_id, d_Fname, d_Mname, work_time, d_city, d_postcode, d_street, d_block_number, d_PhNumber)
VALUES (6765432109, 'Malik','Bilal','Afternoon Shift', 'Jeddah', 64691, 'Tahlia', 07, 0596543220);

INSERT INTO driver (driver_id, d_Fname, d_Mname, d_Lname, work_time, d_city, d_postcode, d_street, d_block_number, d_PhNumber) 
VALUES (3876543210, 'Mussab','Ahmeed','Tawfiq', 'Morning Shift', 'Makkah', 88210, 'Al-insaniah', 39, 0534117890);

INSERT INTO driver (driver_id, d_Fname, d_Mname, work_time, d_city, d_postcode, d_street, d_block_number, d_PhNumber) 
VALUES (1265432109, 'Raed','Bassam', 'Afternoon Shift', 'Makkah', 67701, 'Al-bashara', 86, 0506543210);

/*Makkah bus destination */

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (100, 3876543210, 'Morning Shift', 'Makkah',120510, 'Abdullah bin Al-Abbas', 43, 'KAU');
    
INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (100, 3876543210, 'Morning Shift', 'Makkah',120019, 'Dr Abdul qadir koshak', 20, 'KAU');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (100, 3876543210, 'Morning Shift', 'Makkah', 120015, 'Al-Laith', 19, 'KAU');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (101, 1265432109, 'Afternoon Shift', 'Makkah',120510, 'Abdullah bin Al-Abbas', 43, 'KAU');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (101, 1265432109, 'Afternoon Shift', 'Makkah',120019, 'Dr Abdul qadir koshak', 20, 'KAU');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (101, 1265432109, 'Afternoon Shift', 'Makkah', 120015, 'Al-Laith', 19, 'KAU');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (102, 9076543210, 'Morning Shift', 'Jeddah',120010, 'Abdullah bin Al-Abbas', 009, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (102, 9076543210, 'Morning Shift', 'Jeddah',100015, 'Al-nahdah', 38, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (102, 9076543210, 'Morning Shift', 'Jeddah', 100010, 'Tahlia', 55, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (102, 9076543210, 'Morning Shift', 'Jeddah',100019, 'Al-khalidiya', 11, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (102, 9076543210, 'Morning Shift', 'Jeddah',100510, 'Tahlia', 95, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (103, 6765432109, 'Afternoon Shift', 'Jeddah',120010, 'Abdullah bin Al-Abbas', 009, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (103, 6765432109, 'Afternoon Shift', 'Jeddah',100015, 'Al-nahdah', 38, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (103, 6765432109, 'Afternoon Shift', 'Jeddah', 100010, 'Tahlia', 55, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (103, 6765432109, 'Afternoon Shift', 'Jeddah',100019, 'Al-khalidiya', 11, 'Jeddah University');

INSERT INTO bus_destination (bus_number, driver_id, work_time, b_city, s_postcode, b_street, b_block_number, uni) 
VALUES (103, 6765432109, 'Afternoon Shift', 'Jeddah',100510, 'Tahlia', 95, 'Jeddah University');
/*administrator insertion*/

INSERT INTO administrator (admin_id,  a_Fname,  a_Mname, work_time, a_PhNumber)
VALUES (200, 'Amin', 'Ahmed', 'Morning Shift', 0550006543);

INSERT INTO administrator (admin_id, a_Fname,  a_Mname, work_time, a_PhNumber)
VALUES (201, 'Adham', 'Salim', 'Afternoon Shift', 0550076543);

    INSERT INTO administrator (admin_id,  a_Fname,  a_Mname, work_time, a_PhNumber)
VALUES (202, 'Mohammed', 'Ibrahim', 'Afternoon Shift', 0550506543);
INSERT INTO administrator (admin_id,  a_Fname,  a_Mname,a_Lname, work_time, a_PhNumber)
VALUES (203, 'Omar', 'Seead', 'Bawazir','Morning Shift', 0553226543);

/*access_control insertion*/
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (201, 5, 1234567896);
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (201, 6, 1234567897);

INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (200, 2, 1234567896);
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (200, 1, 1234567895);

INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (200, 3, 1234567897);

INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (201, 4, 1234567895);

INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (203, 7, 1234567894);
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (203, 8, 1234567893);

INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (203, 9, 1234567890);
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (203, 10, 1234567892  );
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (203, 11, 1234567891);
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (202, 12, 1234567894);
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (202, 13, 1234567893);
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (202, 14, 1234567890);
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (202, 15, 1234567892  );
INSERT INTO  access_control  (admin_id, DESTINATION_NUMBER, student_id)
VALUES (202, 16, 1234567891);






   /* =====================================
   Sample Data
   ===================================== */
