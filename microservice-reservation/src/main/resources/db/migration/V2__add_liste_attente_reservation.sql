create table if not exists liste_attente_reservation
(
    id                    int not null auto_increment primary key,
    id_client             int not null,
    id_ouvrage            int not null,
    position_file_attente int not null
);

