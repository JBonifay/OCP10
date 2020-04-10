create table if not exists liste_attente
(
    id                    int not null auto_increment primary key,
    id_utilisateur        int not null,
    id_ouvrage            int not null,
    position_file_attente int not null
);

