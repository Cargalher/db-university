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

2- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze (14 CORSI)

    SELECT `degrees`.* 
    FROM `degrees` 
    JOIN `departments` 
    ON `departments`.`id`= `degrees`.`department_id` 
    WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'

3- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) (18 CORSI)

    SELECT courses.id, courses.name, courses.period, courses.year, courses.cfu, courses.website
    FROM courses
    JOIN teachers
    ON courses.degree_id = teachers.id
    WHERE teachers.id = 44

4- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento,
 in ordine alfabetico per cognome e nome (???)


    SELECT students.id, students.name, students.surname, students.date_of_birth, students.fiscal_code, students.enrolment_date, students.registration_number, students.email
    FROM students
    JOIN degrees 
    ON students.degree_id = degrees.id 
    JOIN departments 
    ON students.degree_id = departments.id 
    ORDER BY students.name, students.surname ASC

5- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


6- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54) WRONG!!!!!

SELECT teachers.id, teachers.name, teachers.surname, teachers.phone, teachers.email, teachers.office_address, teachers.office_number
FROM teachers
JOIN departments
on departments.id = departments_id
WHERE departments.name = 'Dipartimento di Matematica'


BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami