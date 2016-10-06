
DBSCHEMA Schema Utility       INFORMIX-SQL Version 11.70.FC5







{ TABLE "informix".t5282archbin row size = 325 number of columns = 7 index size = 9 }

create table "informix".t5282archbin 
  (
    num_id integer not null ,
    fec_creacion date not null ,
    arc_datos byte,
    cnt_tamanho integer not null ,
    des_nombre varchar(250,1) not null ,
    num_idasoc integer not null ,
    ind_sisorigen char(2),
    primary key (num_id)  constraint "informix".pk_t5282
  );

revoke all on "informix".t5282archbin from "public" as "informix";




