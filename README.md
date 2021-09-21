
# University-Database

## Task 1: Table Creation

Using Oracle, design and create a university database. To create your database you may use the information given below:

    classroom ( building, room number, capacity)
    department (dept_name, building, budget)
    course (course id, title, dept_name, credits)
    instructor (ID, name, dept_name, salary)
    section (course_id, sec_id, semester, year, building, room_number, time_slot_id)
    teaches (ID, course_id, sec_id, semester, year)
    student (ID, name, dept_name, tot_cred)
    takes (ID, course_id, sec_id, semester, year, grade)
    advisor (s_ID, i_ID)
    time_slot (time_slot_id, day, start_time, end_time)
    prereq(course_id, prereq_id)


## Task 2: Query

Insert some data in your database. You should insert enough data so that the following queries return valid information. That is, any of the query result does not return an empty set.

List of Queries:
- Find all teachers who work in the department of CSE. 
- Find all students who is from the district of Gazipur. 
- Find the teachers in CSE department who earn more than 60,000 Tk. 
- Find the students who enrolled in some courses in the winter 2021.
- Find the teacher who taught "Database Management System" course in the winter 2021. 


## Task 3: Designing Triggers

> ***Trigger-1:*** Design a trigger that, whenever a tuple is inserted into the takes relation, updates the tuple in the student relation for the student taking the course by adding the number of credits for the course to the student’s total credits.

> ***Trigger-2 and 3:*** Design triggers to ensure referential integrity on the time_slot_id attribute of the section relation. It is not sufficient to check referential integrity on inserts alone you also need to consider updates of section, as well as deletes and updates to the referenced table time_slot. Therefore, you should also have to create triggers to handle updates to section and time_slot. One trigger should be initiated after any insert on the relation section to ensure that the time_slot_id value being inserted is valid. A second trigger should consider the case of deletes to time_slot. This trigger should check that the time_slot_id of the tuple being deleted is either still present in time_slot, or that no tuple in section contains that particular time_slot_id value.

> ***Trigger-4:*** Design a trigger, for the action on delete of a student tuple, to check if the student has any entries in the takes relation, and if so, to delete them.

> ***Trigger-5:*** Design a trigger so that, if you attempt to insert an instructor into a department whose name does not appear in the department relation, the trigger could insert a tuple into the department relation for that department name before the insertion generates a foreign key violation.


