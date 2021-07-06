# Database University:

## Departments
- Id                        BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Name                      VARCHAR(30) NOTNUL
- Floor_number              TINYINT NOTNUL
- Room_number               TINYINT NOTNUL
- Professor_Id              BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Course_Id                 BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX

## Courses
- Id                        BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Name                      VARCHAR(50) NOTNUL
- Duration                  VARCHAR(10) NULL
- Semestre                  VARCHAR(10) NULL
- Credit_number             TINYINT NOTNULL
- Description               TEXT NULL
- Professor_Id              BINGINT PRIMARY KEY UNIQUE  NOTNULL INDEX  
- Student_Id            I   BINGINT PRIMARY KEY UNIQUE AUTO_INCREMENT NOTNULL INDEX
- Exam_Id                   BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
## Professors
- Id                       BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Name                     VARCHAR(30) NOTNUL
- Lastname                 VARCHAR(30) NOTNUL
- Department_Id            BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Course_Id                BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
## Exams
- Id                       BINGINT PRIMARY KEY UNIQUE AUTO_INCREMENT NOTNULL INDEX
- Department_Id            BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Course_Id                BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Date                     DATE NOTNULL
- Exam_number              TINYINT NULL
- Student_Id               BINGINT PRIMARY KEY UNIQUE AUTO_INCREMENT NOTNULL INDEX


## Students
- Id                       BINGINT PRIMARY KEY UNIQUE AUTO_INCREMENT NOTNULL INDEX
- Name                     VARCHAR(30) NOTNUL
- Lastname                 VARCHAR(30) NOTNULL
- Address                  VARCHAR(60) NULL
- Email                    VARCHAR(20) NULL
- Telephone                TINYINT NULL
- Course_Id                BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Exam_Id                  BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Grade_Id                 BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- average_score

## Grades
- Id                       BINGINT PRIMARY KEY UNIQUE AUTO_INCREMENT NOTNULL INDEX
- Student_Id               BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Course_Id                BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- Score                    TINYINT NULL
- Average_score            TINYINT NOTNULL
