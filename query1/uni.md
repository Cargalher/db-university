


1 .Selezionare tutti gli studenti nati nel 1990(160)
 
    SELECT *
    FROM students
    WHERE date_of_birth LIKE '1990%'
 

2.Selezionare tutti i corsi che valgono più di 10 crediti(479)

    SELECT *
    FROM courses
    WHERE cfu > 10


3.Selezionare tutti gli studenti che hanno più di 30anni

    SELECT *
    FROM `students`
    WHERE YEAR(date_of_birth) < YEAR(CURDATE()) - 30;


4.Selezionare tutti i corsi del primo semestre del primoanno di un qualsiasi corso dilaurea(286)

    SELECT *
    FROM courses
    WHERE period LIKE 'I semestre'
    AND year LIKE '1%'


5.Selezionare tutti gli appelli d'esame che avvengononel pomeriggio (dopo le 14) del20/06/2020 (21)

    SELECT *
    FROM exams
    WHERE date = '2020-06-20'
    AND hour > '14:00:00'

# other option

    SELECT * 
    FROM `exams`
    WHERE HOUR (`hour`) >= 14
    AND `date` = '2020-06-20'


6.Selezionare tutti i corsi di laurea magistrale(38)

    SELECT*
    FROM degrees
    WHERE name LIKE 'Corso di Laurea Magistrale%'

 # other option

    SELECT * 
    FROM degrees
    WHERE HOUR (`hour`) >= 14
    AND `name` LIKE '% Magistrale%'
 # other option   
    SELECT * 
    FROM degrees
    WHERE `level` = 'magistrale'
    

7.Da quanti dipartimenti è composta l'università?(12)

    SELECT `name`
    FROM departments


8.Quanti sono gli insegnanti che non hanno un numero di telefono?(50)

    SELECT *
    FROM teachers
    WHERE phone IS NULL
