GROUP BY

1- Contare quanti iscritti ci sono stati ogni anno (year:2018-912 students; 2019-1709; 2020-1645; 2021-734)

    SELECT COUNT(*)
    AS registered_students, YEAR(enrolment_date) AS enrollment_year
    FROM `students` GROUP BY enrollment_year
    
2- Contare gli insegnanti che hanno l ufficio nello stesso edificio

   SELECT COUNT(*)
    AS current_teachers, office_address
    FROM `teachers` 
    GROUP BY office_address

3- Calcolare la media dei voti di ogni appello d esame

    SELECT AVG (vote)
    AS average_exam, exam_id
    FROM exam_student
    GROUP BY exam_id

4- Contare quanti corsi di laurea ci sono per ogni dipartimento

    SELECT COUNT(id)
    AS Ttotal_number_degrees, department_id
    FROM degrees GROUP BY department_id



JOINS:
1- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

    SELECT students.id, students.name, students.surname, students.date_of_birth, students.fiscal_code, students.enrolment_date, students.registration_number, students.email 
    FROM students 
    JOIN degrees
    ON students.degree_id = degrees.id
    WHERE degrees.name = 'Corso di Laurea in Economia'

2- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze 

    SELECT `degrees`.* 
    FROM `degrees` 
    JOIN `departments` 
    ON `departments`.`id`= `degrees`.`department_id` 
    WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'

3- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) 

    SELECT `courses`. *
    FROM `course_teacher `
    JOIN  `courses`
    ON course_teacher.course_id = courses.id
    WHERE course_teacher. teacher_id= 44

4- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento,
 in ordine alfabetico per cognome e nome 


    SELECT students.id, students.name, students.surname, students.date_of_birth, students.fiscal_code, students.enrolment_date, students.registration_number, students.email
    FROM students
    JOIN degrees 
    ON students.degree_id = degrees.id 
    JOIN departments 
    ON degrees.department_id = departments.id 
    ORDER BY students.surname, students.name

5- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

    SELECT degrees.name AS `degree_name`, courses.name as `course_name`, teachers.name as `teacher_name`, teachers.surname as `teacher_surname`
    FROM degrees 
    JOIN courses ON degrees.id = courses.degree_id 
    JOIN course_teacher ON course_teacher.course_id = courses.id 
    JOIN teachers ON course_teacher.teacher_id = teachers.id

6- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54) 

    SELECT departments.name AS `department_name`,departments.address, departments.website, teachers.name as `name_teacher`, teachers.surname as `surname_teacher`
    FROM departments
    JOIN degrees ON degrees.department_id = departments.id
    JOIN courses ON degrees.id = courses.degree_id
    JOIN course_teacher ON courses.id = course_teacher.course_id
    JOIN teachers  ON course_teacher.teacher_id = teachers.id
    WHERE departments.name = 'Dipartimento di Matematica'

7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami

    1st way(Andrei)

    SELECT COUNT(courses.name) AS 'tentativi', students.name AS 'student_name', students.surname AS
    'student_surname', courses.name AS 'course_name'
    FROM exam_student
    JOIN exams ON exam_student.exam_id = exams.id
    JOIN students ON exam_student.student_id = students.id
    JOIN courses ON exams.course_id = courses.id
    GROUP BY students.id, courses.name

    1st way(Emmanuele)

    SELECT students.name AS nome_studente, students.surname AS cognome_studente, courses.name AS nome_corso,
    COUNT(exams.id) AS tentativi
    FROM courses
    JOIN exams ON courses.id = exams.course_id
    JOIN exam_student ON exams.id = exam_student.exam_id
    JOIN students ON exam_student.student_id = students.id
    WHERE exam_student.vote < 18
    GROUP BY courses.id, students.id