CREATE DATABASE IF NOT EXISTS ouvrage;

create table reservation
(
    reservation_id         int auto_increment   not null primary key,
    ouvrage_id             varchar(100)         not null,
    utilisateur_id         varchar(100)         not null,
    reservation_date_debut date                 not null,
    reservation_date_fin   date                 not null,
    active                 tinyint(1)           not null,
    deja_prolonge          tinyint(1) default 0 not null
);


insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (1, 1, 4, '2020-04-01', '2020-04-30', true);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (2, 2, 5, '2020-04-01', '2020-04-30', true);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (3, 3, 2, '2020-04-01', '2020-04-30', false);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (4, 4, 2, '2020-04-01', '2020-04-30', true);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (5, 5, 4, '2020-04-01', '2020-04-30', true);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (6, 6, 1, '2020-04-01', '2020-04-30', true);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (7, 7, 2, '2020-04-01', '2020-04-30', false);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (8, 8, 4, '2020-04-01', '2020-04-30', true);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (9, 9, 5, '2020-04-01', '2020-04-30', true);
insert into reservation (reservation_id, ouvrage_id, utilisateur_id, reservation_date_debut, reservation_date_fin, active)
values (10, 10, 1, '2020-04-01', '2020-04-30', false);
