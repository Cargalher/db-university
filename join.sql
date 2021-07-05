GROUP BY

1- Contare quanti iscritti ci sono stati ogni anno (year:2018-912 students; 2019-1709; 2020-1645; 2021-734)

    SELECT COUNT(*)
    AS registered_students, YEAR(enrolment_date) AS enrollment_year
    FROM `students` GROUP BY enrollment_year
    
2- Contare gli insegnanti che hanno l ufficio nello stesso edificio

   SELECT COUNT(*)
    AS current_teachers, office_address AS same_floor_numbers
    FROM `teachers` 
    GROUP BY same_floor_numbers

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
2- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
3- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
4- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
5- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
6- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami