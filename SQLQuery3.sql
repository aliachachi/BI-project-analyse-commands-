use dwh_nrth_etoile

create table Client 
(id_client varchar(10) NOT NULL, nom_cl varchar(10) , 
id_ville varchar(10) , nom_vil varchar(20), id_region varchar(10) ,
nom_region varchar(20))
GO
create table Employee 
(id_emp varchar(10) NOT NULL, nom_emp varchar(10) , 
id_ville varchar(10) , nom_vil varchar(20), id_region varchar(10) ,
nom_region varchar(20))
GO
create table Temps 
(id_tmp varchar(10) NOT NULL, id_mois varchar(10) , 
lib_mois varchar(10) , id_anne varchar(10), lib_anne varchar(20))
GO
create table Fcmd
(id_tmp varchar(10) NOT NULL, 
id_emp varchar(10) NOT NULL,
id_client varchar(10) NOT NULL,
nb_cmd_liv varchar(20),
nb_cmd_nliv varchar(20)
)
GO
alter table Temps add constraint pk_tmp primary key (id_tmp)
GO
alter table Client add constraint pk_cl primary key (id_client)
GO
alter table Employee add constraint pk_emp primary key (id_emp)
GO
alter table Fcmd add 
constraint fk_tmp foreign key (id_tmp) references Temps(id_tmp),
constraint fk_cl foreign key (id_client) references Client(id_client),
constraint fk_emp foreign key (id_emp) references Employee(id_emp)