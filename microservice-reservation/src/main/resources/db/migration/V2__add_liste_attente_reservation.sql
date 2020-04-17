create table if not exists reservation.liste_attente
(
    id                    int not null auto_increment primary key,
    id_utilisateur        int not null,
    id_ouvrage            int not null,
    position_file_attente int not null
);

insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (1, 1, 1, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (2, 2, 2, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (3, 3, 3, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (4, 4, 4, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (5, 5, 5, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (6, 6, 6, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (7, 7, 7, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (8, 8, 8, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (9, 9, 9, 1);
insert into reservation.liste_attente (id, id_utilisateur, id_ouvrage, position_file_attente)
values (10, 10, 10, 1);

