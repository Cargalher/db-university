# Database University:

## Departments
- Id
- Name
- Floor_number
- Room_number
- Profesors_Id
- Course_Id

## Courses
- Id
- Name
- Duration
- Semestre
- Credit_number
- Description
- Profesor_Id
- Student_Id
- Exam_Id
## Profesors
- Id
- Name
- Lastname
- Departments
- Course_Id
## Exams
- Id
- Department_Id
- Course_Id
- Date
- Exam_number
- Student_Id
- Grades

## Students
- Id
- Name
- Lastname
- Address
- Email
- Telephone
- Course_Id
- Exams_Id
- Grade_Id

## Grades
- Id
- Student_Id
- Course_Id
- Score
- Average_score
