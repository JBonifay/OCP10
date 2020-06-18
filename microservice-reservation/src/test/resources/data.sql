INSERT INTO reservation (ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active, deja_prolonge)
VALUES (1, 1, '2020-05-01', '2020-05-30', TRUE, FALSE),
       (2, 2, '2020-05-01', '2020-05-30', TRUE, TRUE),
       (3, 3, '2020-05-01', '2020-05-30', FALSE, FALSE),
       (4, 4, '2020-05-01', '2020-05-30', FALSE, TRUE),
       (5, 4, current_date, TIMESTAMPADD(DAY, 30, CURRENT_DATE), TRUE, FALSE);


INSERT INTO liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente, notification_sent, notification_timestamp)
VALUES (1,1, 1, 1, TRUE, '2020-06-01'),
       (2,2, 1, 2, FALSE, NULL),
       (4,4, 2, 1, TRUE, '2020-06-01'),
       (5,5, 2, 2, FALSE, NULL);
