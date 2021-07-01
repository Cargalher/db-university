# Database University:

## Departments
- id
- Name
- floor_number
- room_number
- Profesors_id
- course_id

## Courses
- Id
- name
- duration
- credit_number
- escription
- profesor
- exams
## Profesors
- Id
- Name
- lastname
- departments
- Subjects
## Exams
- Id
- Department_Id
- Course_Id
- student_id
- grades

## Students
- Id
- Name
- lastname
- address
- email
- telephone
- course_id
- exams_id
- grade_id
## Grades
- Id
- student_id
- course_id
- score
- average_score
