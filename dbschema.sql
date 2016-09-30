
DBSCHEMA Schema Utility       INFORMIX-SQL Version 11.70.FC5
grant dba to "informix";
grant connect to "usbdseq";
grant connect to "usiacons";
grant dba to "solweb";
grant dba to "conweb";
grant dba to "usrdesa";
grant connect to "erett";
grant dba to "jesquiv2";
grant dba to "lpacheco";
grant dba to "wcavalie";
grant dba to "jtaipe";
grant dba to "rmanriq1";
grant connect to "asanche1";
grant connect to "jsantill";
grant connect to "jvaldez";
grant dba to "vmendiet";
grant dba to "lfernan3";
grant dba to "pchacali";
grant dba to "rsandov1";
grant dba to "eespino3";
grant dba to "despinoz";
grant dba to "mvenero";
grant dba to "mgabriele";
grant dba to "mgabriel";
grant dba to "izarate";
grant dba to "apastor";
grant dba to "eyataco";
grant dba to "rarroyo";
grant dba to "johasi";
grant dba to "johashi";
grant dba to "fmestas";
grant dba to "mlimayll";
grant dba to "ccabrera";
grant dba to "lvenegas";
grant dba to "chuamanb";
grant dba to "mmartine";
grant dba to "wgalinde";
grant dba to "lrojas";
grant dba to "olaos";
grant connect to "molivero";
grant dba to "moliveros";
grant dba to "admfte";
grant dba to "lluquego";
grant dba to "rlazo";
grant dba to "bdseq";
grant dba to "cnerya";
grant dba to "mquito";
grant dba to "destran1";
grant connect to "jchuquit";
grant dba to "bcillian";
grant dba to "jhuapaya";
grant dba to "cnavarro";
grant dba to "hrivaden";
grant dba to "ebringas";
grant dba to "jhuarca";
grant dba to "vbegan";
grant dba to "bvegan";
grant dba to "fsantosl";
grant dba to "rochoa";
grant resource to "rromerom";
grant connect to "agalveza";
grant dba to "rramosm";
grant dba to "jrevored";
grant dba to "mtomayll";
grant dba to "imurga";
grant dba to "jmaza";
grant dba to "qn88";
grant dba to "nvillars";
grant dba to "qn91";
grant connect to "jvillars";
grant connect to "svillars";
grant connect to "evillars";
grant connect to "pepitopalotes";
grant dba to "qn87";
grant dba to "qm22";
grant dba to "cneyra";
grant dba to "wcamposv";
grant dba to "kaviles";
grant dba to "kq66";
grant dba to "jmendiet";
grant dba to "qp59";
grant dba to "qp57";
grant dba to "icapunay";
grant dba to "qj22";
grant dba to "dechevar";
grant dba to "qp54";
grant dba to "qn84";
grant connect to "uswsigti";
grant dba to "qp67";
grant resource to "gballena";
grant resource to "qz93";
grant resource to "cron0071";
grant dba to "admdwh";
grant dba to "qv25";









{ TABLE "informix".dual row size = 1 number of columns = 1 index size = 0 }

create table "informix".dual 
  (
    secuencia char(1)
  );

revoke all on "informix".dual from "public" as "informix";

{ TABLE "solweb".tab1 row size = 19 number of columns = 3 index size = 0 }

create table "solweb".tab1 
  (
    col1 integer,
    col2 integer,
    col0 varchar(10)
  );

revoke all on "solweb".tab1 from "public" as "solweb";

{ TABLE "conweb".wlstore row size = 68 number of columns = 4 index size = 9 }

create table "conweb".wlstore 
  (
    id integer not null ,
    type integer not null ,
    handle integer not null ,
    record byte not null ,
    primary key (id) 
  );

revoke all on "conweb".wlstore from "public" as "conweb";

{ TABLE "informix".pbcattbl row size = 369 number of columns = 25 index size = 31 }

create table "informix".pbcattbl 
  (
    pbt_tnam char(18) not null ,
    pbt_tid integer,
    pbt_ownr char(8) not null ,
    pbd_fhgt smallint,
    pbd_fwgt smallint,
    pbd_fitl char(1),
    pbd_funl char(1),
    pbd_fchr smallint,
    pbd_fptc smallint,
    pbd_ffce char(18),
    pbh_fhgt smallint,
    pbh_fwgt smallint,
    pbh_fitl char(1),
    pbh_funl char(1),
    pbh_fchr smallint,
    pbh_fptc smallint,
    pbh_ffce char(18),
    pbl_fhgt smallint,
    pbl_fwgt smallint,
    pbl_fitl char(1),
    pbl_funl char(1),
    pbl_fchr smallint,
    pbl_fptc smallint,
    pbl_ffce char(18),
    pbt_cmnt varchar(254)
  );

revoke all on "informix".pbcattbl from "public" as "informix";

{ TABLE "informix".pbcatcol row size = 1429 number of columns = 19 index size = 49 }

create table "informix".pbcatcol 
  (
    pbc_tnam char(18) not null ,
    pbc_tid integer,
    pbc_ownr char(8) not null ,
    pbc_cnam char(18) not null ,
    pbc_labl varchar(254),
    pbc_lpos smallint,
    pbc_hdr varchar(254),
    pbc_hpos smallint,
    pbc_jtfy smallint,
    pbc_mask char(30),
    pbc_case smallint,
    pbc_hght smallint,
    pbc_wdth smallint,
    pbc_ptrn char(31),
    pbc_bmap char(1),
    pbc_init varchar(254),
    pbc_edit varchar(31),
    pbc_cmnt varchar(254),
    pbc_tag varchar(254)
  );

revoke all on "informix".pbcatcol from "public" as "informix";

{ TABLE "informix".pbcatfmt row size = 291 number of columns = 4 index size = 35 }

create table "informix".pbcatfmt 
  (
    pbf_name char(30) not null ,
    pbf_frmt varchar(254) not null ,
    pbf_type smallint not null ,
    pbf_cntr integer not null 
  );

revoke all on "informix".pbcatfmt from "public" as "informix";

{ TABLE "informix".pbcatvld row size = 546 number of columns = 5 index size = 35 }

create table "informix".pbcatvld 
  (
    pbv_name char(30) not null ,
    pbv_vald varchar(254) not null ,
    pbv_type smallint not null ,
    pbv_cntr integer not null ,
    pbv_msg varchar(254)
  );

revoke all on "informix".pbcatvld from "public" as "informix";

{ TABLE "informix".pbcatedt row size = 329 number of columns = 7 index size = 37 }

create table "informix".pbcatedt 
  (
    pbe_name char(30) not null ,
    pbe_edit varchar(254),
    pbe_type smallint,
    pbe_cntr integer,
    pbe_seqn smallint,
    pbe_flag integer,
    pbe_work char(32)
  );

revoke all on "informix".pbcatedt from "public" as "informix";

{ TABLE "qn87".wl_llr_adminserver row size = 1113 number of columns = 3 index size = 45 }

create table "qn87".wl_llr_adminserver 
  (
    xidstr lvarchar(40) not null ,
    poolnamestr lvarchar(64),
    recordstr lvarchar(1000),
    primary key (xidstr) 
  );

revoke all on "qn87".wl_llr_adminserver from "public" as "qn87";

{ TABLE "qn91".t5118transportista row size = 379 number of columns = 10 index size = 9 }

create table "qn91".t5118transportista 
  (
    cod_transportista integer not null ,
    nom_transportista varchar(100) not null ,
    dir_transportista varchar(100) not null ,
    cod_pais char(3) not null ,
    fec_crea datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usucrea varchar(25) 
        default '-' not null ,
    dir_ipusucrea varchar(50) 
        default '-' not null ,
    fec_modif datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usumodif varchar(25) 
        default '-' not null ,
    dir_ipusumodif varchar(50) 
        default '-' not null 
  );

revoke all on "qn91".t5118transportista from "public" as "qn91";

{ TABLE "qn91".t5117empextranjera row size = 506 number of columns = 14 index size = 9 }

create table "qn91".t5117empextranjera 
  (
    cod_empresa integer not null ,
    des_nombre varchar(100) not null ,
    des_direccion varchar(100) not null ,
    num_lic varchar(20) 
        default '-' not null ,
    cod_pais char(3) not null ,
    num_seq_pais integer not null ,
    des_pais varchar(100) not null ,
    tip_emp char(1) 
        default '-' not null ,
    fec_crea datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usucrea varchar(25) 
        default '-' not null ,
    dir_ipusucrea varchar(50) 
        default '-' not null ,
    fec_modif datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usumodif varchar(25) 
        default '-' not null ,
    dir_ipusumodif varchar(50) 
        default '-' not null 
  );

revoke all on "qn91".t5117empextranjera from "public" as "qn91";

{ TABLE "qn91".t5116orgnotifica row size = 1032 number of columns = 14 index size = 9 }

create table "qn91".t5116orgnotifica 
  (
    cod_organizacion integer not null ,
    nom_organizacion varchar(100) not null ,
    nom_resorg varchar(100) not null ,
    cod_pais char(3) not null ,
    nom_pais varchar(50) not null ,
    dir_organizacion varchar(100) not null ,
    des_tel char(250) 
        default '-' not null ,
    des_correo varchar(250) 
        default '-' not null ,
    fec_crea datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usucrea varchar(25) 
        default '-' not null ,
    dir_ipusucrea varchar(50) 
        default '-' not null ,
    fec_modif datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usumodif varchar(25) 
        default '-' not null ,
    dir_ipusumodif varchar(50) 
        default '-' not null 
  );

revoke all on "qn91".t5116orgnotifica from "public" as "qn91";

{ TABLE "qn91".t5132movestauto row size = 172 number of columns = 13 index size = 9 }

create table "qn91".t5132movestauto 
  (
    num_movestauto serial not null ,
    num_autoriza integer not null ,
    cod_tipautoriza char(3) not null ,
    ann_autoriza decimal(4) not null ,
    fec_movimiento datetime year to second not null ,
    cod_est_autoriza char(2) not null ,
    ind_registro char(2) 
        default '0' not null ,
    fec_crea datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usucrea varchar(25) 
        default '-' not null ,
    dir_ipusucrea varchar(50) 
        default '-' not null ,
    fec_modif datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usumodif varchar(25) 
        default '-' not null ,
    dir_ipusumodif varchar(25) 
        default '-' not null 
  );

revoke all on "qn91".t5132movestauto from "public" as "qn91";

{ TABLE "qn91".t5133stockpresen row size = 215 number of columns = 15 index size = 9 }

create table "qn91".t5133stockpresen 
  (
    num_stock integer not null ,
    num_ruc char(11) not null ,
    num_inscab integer 
        default 0 not null ,
    fec_baja datetime year to second not null ,
    cod_tipbien char(2) 
        default '-' not null ,
    num_verreg integer 
        default 0 not null ,
    num_version smallint 
        default 0 not null ,
    num_present integer 
        default 0 not null ,
    cnt_stock_actual decimal(10,2) not null ,
    fec_crea datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usucrea varchar(25) 
        default '-' not null ,
    dir_ipusucrea varchar(50) 
        default '-' not null ,
    fec_modif datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usumodif varchar(25) 
        default '-' not null ,
    dir_ipusumodif varchar(50) 
        default '-' not null 
  );

revoke all on "qn91".t5133stockpresen from "public" as "qn91";

{ TABLE "qn91".t5120detautoriza row size = 786 number of columns = 29 index size = 9 }

create table "qn91".t5120detautoriza 
  (
    num_item_soli integer not null ,
    num_ruc char(11) not null ,
    num_inscab integer 
        default 0 not null ,
    fec_baja datetime year to second not null ,
    cod_tipbien char(2) not null ,
    num_verreg integer not null ,
    num_version smallint 
        default 0 not null ,
    num_present integer 
        default 0 not null ,
    num_autoriza integer not null ,
    cod_tipautoriza char(3) not null ,
    ann_autoriza decimal(4) not null ,
    cod_presen char(6) not null ,
    cod_cas char(12) not null ,
    des_bienfisca varchar(250) not null ,
    cod_unid_comerc char(3) not null ,
    cnt_unid_comercaut decimal(12,2) not null ,
    cnt_neta_aut decimal(12,2) not null ,
    cod_unid_medi_ctrl char(3) not null ,
    ind_granel_item char(1) 
        default '-' not null ,
    cnt_comercaut_ampl decimal(12) 
        default 0.0000000000000000 not null ,
    cnt_peso_neto_ampl decimal(12,2) 
        default 0.00 not null ,
    num_subpart_arance char(10) not null ,
    des_mot_ampl varchar(250) 
        default '-' not null ,
    fec_crea datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usucrea varchar(25) 
        default '-' not null ,
    dir_ipusucrea varchar(50) 
        default '-' not null ,
    fec_modif datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usumodif varchar(25) 
        default '-' not null ,
    dir_ipusumodif varchar(50) 
        default '-' not null 
  );

revoke all on "qn91".t5120detautoriza from "public" as "qn91";

{ TABLE "qn91".t5119cabautoriza row size = 2551 number of columns = 67 index size = 53 }

create table "qn91".t5119cabautoriza 
  (
    num_autoriza integer not null ,
    cod_tipautoriza char(3) not null ,
    ann_autoriza decimal(4) not null ,
    cod_organizacion integer not null ,
    cod_empresa integer not null ,
    cod_transportista integer not null ,
    num_declaracion decimal(6) 
        default 0.0000000000000000 not null ,
    ann_presentacion decimal(4) 
        default 0.0000000000000000 not null ,
    cod_regimen char(2) 
        default '00' not null ,
    num_ruc_soli char(11) not null ,
    cod_tipdoc char(1) not null ,
    cod_aduana char(3) not null ,
    cod_aduana_ing_sal char(3) not null ,
    cod_pais_prov_dest char(3) not null ,
    cod_pais_proc_dest char(3) not null ,
    num_factura char(40) not null ,
    fec_partida_etd datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_arribo_eta datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    num_mic_dta char(20) not null ,
    fec_emi_autoriza datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_ini_vigencia datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_fin_vigencia datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_est_autoriza char(2) not null ,
    ind_abandono_legal char(1) 
        default '0' not null ,
    fec_suspension datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    num_res_suspension char(17) 
        default '0' not null ,
    fec_cance_autoriza datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    num_reso_canceauto char(17) 
        default '0' not null ,
    fec_desistimiento datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_baja_autoriza datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_cancelacion datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_denegada datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_concluida datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_destinada datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_vencida datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    num_noti_previa char(17) 
        default '0' not null ,
    fec_noti_previa datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_levante_decla datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    hora_levante_decla char(8) 
        default '-' not null ,
    des_resnoti_previa varchar(250) 
        default '-' not null ,
    des_motnoti_previa varchar(250) 
        default '-' not null ,
    cod_resnoti_previa char(2) 
        default '-' not null ,
    num_resnoti_previa char(12) 
        default '0' not null ,
    nom_empresa varchar(250) 
        default '-' not null ,
    dir_empresa varchar(250) 
        default '-' not null ,
    cod_puer_destino varchar(5) not null ,
    cod_puer_embarque varchar(5) not null ,
    cod_unid_orga char(6) not null ,
    num_doc_transp varchar(70) not null ,
    cod_via_transporte char(3) not null ,
    des_veh_transporte varchar(250) not null ,
    des_transportista varchar(250) 
        default '-' not null ,
    ind_sicronizacion char(1) 
        default '0' not null ,
    ann_manifiesto varchar(4) 
        default '-' not null ,
    cod_terminal varchar(4) 
        default '-' not null ,
    nom_consignatario varchar(175) 
        default '-' not null ,
    des_mot_ampl varchar(250) 
        default '-' not null ,
    fec_term_desc datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    fec_nume_dam datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_tip_despacho char(2) 
        default '00' not null ,
    ann_declaracion varchar(4) 
        default '0000' not null ,
    fec_crea datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usucrea varchar(25) 
        default '-' not null ,
    dir_ipusucrea varchar(50) 
        default '-' not null ,
    fec_modif datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usumodif varchar(25) 
        default '-' not null ,
    dir_ipusumodif varchar(50) 
        default '-' not null 
  );

revoke all on "qn91".t5119cabautoriza from "public" as "qn91";

{ TABLE "qn91".t5123saldo row size = 211 number of columns = 14 index size = 9 }

create table "qn91".t5123saldo 
  (
    num_existencia integer not null ,
    num_ruc char(11) not null ,
    num_inscab integer 
        default 0 not null ,
    num_version smallint 
        default 0 not null ,
    fec_baja datetime year to second not null ,
    cod_tipbien char(2) 
        default '-' not null ,
    num_verreg integer not null ,
    cnt_consumida decimal(10,2) 
        default 0.00 not null ,
    fec_crea datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usucrea varchar(25) 
        default '-' not null ,
    dir_ipusucrea varchar(50) 
        default '-' not null ,
    fec_modif datetime year to second 
        default  datetime (0001-01-01 00:00:00) year to second not null ,
    cod_usumodif varchar(25) 
        default '-' not null ,
    dir_ipusumodif varchar(50) 
        default '-' not null 
  );

revoke all on "qn91".t5123saldo from "public" as "qn91";

{ TABLE "conweb".tablatest row size = 8 number of columns = 2 index size = 0 }

create table "conweb".tablatest 
  (
    col1 integer,
    col2 integer
  );

revoke all on "conweb".tablatest from "public" as "conweb";


grant select on "informix".dual to "asanche1" as "informix";
grant select on "informix".dual to "jchuquit" as "informix";
grant select on "informix".dual to "jsantill" as "informix";
grant select on "informix".dual to "rgarciad" as "informix";
grant select on "informix".dual to "usbdseq" as "informix";
grant select on "informix".dual to "usiacons" as "informix";
grant select on "informix".dual to "wgalinde" as "informix";
grant select on "solweb".tab1 to "public" as "solweb";
grant update on "solweb".tab1 to "public" as "solweb";
grant insert on "solweb".tab1 to "public" as "solweb";
grant delete on "solweb".tab1 to "public" as "solweb";
grant index on "solweb".tab1 to "public" as "solweb";
grant select on "conweb".wlstore to "public" as "conweb";
grant update on "conweb".wlstore to "public" as "conweb";
grant insert on "conweb".wlstore to "public" as "conweb";
grant delete on "conweb".wlstore to "public" as "conweb";
grant index on "conweb".wlstore to "public" as "conweb";
grant select on "informix".pbcattbl to "public" as "informix";
grant update on "informix".pbcattbl to "public" as "informix";
grant insert on "informix".pbcattbl to "public" as "informix";
grant delete on "informix".pbcattbl to "public" as "informix";
grant index on "informix".pbcattbl to "public" as "informix";
grant select on "informix".pbcatcol to "public" as "informix";
grant update on "informix".pbcatcol to "public" as "informix";
grant insert on "informix".pbcatcol to "public" as "informix";
grant delete on "informix".pbcatcol to "public" as "informix";
grant index on "informix".pbcatcol to "public" as "informix";
grant select on "informix".pbcatfmt to "public" as "informix";
grant update on "informix".pbcatfmt to "public" as "informix";
grant insert on "informix".pbcatfmt to "public" as "informix";
grant delete on "informix".pbcatfmt to "public" as "informix";
grant index on "informix".pbcatfmt to "public" as "informix";
grant select on "informix".pbcatvld to "public" as "informix";
grant update on "informix".pbcatvld to "public" as "informix";
grant insert on "informix".pbcatvld to "public" as "informix";
grant delete on "informix".pbcatvld to "public" as "informix";
grant index on "informix".pbcatvld to "public" as "informix";
grant select on "informix".pbcatedt to "public" as "informix";
grant update on "informix".pbcatedt to "public" as "informix";
grant insert on "informix".pbcatedt to "public" as "informix";
grant delete on "informix".pbcatedt to "public" as "informix";
grant index on "informix".pbcatedt to "public" as "informix";
grant select on "qn87".wl_llr_adminserver to "public" as "qn87";
grant update on "qn87".wl_llr_adminserver to "public" as "qn87";
grant insert on "qn87".wl_llr_adminserver to "public" as "qn87";
grant delete on "qn87".wl_llr_adminserver to "public" as "qn87";
grant index on "qn87".wl_llr_adminserver to "public" as "qn87";


create sequence "informix".seform0845 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "informix".seform0845 restart with 4709;

revoke all on "informix".seform0845 from "public" as "informix";

create sequence "informix".seform3596 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "informix".seform3596 restart with 1263;

revoke all on "informix".seform3596 from "public" as "informix";

create sequence "informix".set3260 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "informix".set3260 restart with 165;

revoke all on "informix".set3260 from "public" as "informix";

create sequence "informix".set3261 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "informix".set3261 restart with 164;

revoke all on "informix".set3261 from "public" as "informix";

create sequence "informix".set3262 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "informix".set3262 restart with 175;

revoke all on "informix".set3262 from "public" as "informix";

create sequence "informix".set3263 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "informix".set3263 restart with 264;

revoke all on "informix".set3263 from "public" as "informix";

create sequence "informix".sedevf49990011 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990011 restart with 201086;

revoke all on "informix".sedevf49990011 from "public" as "informix";

create sequence "informix".sedevf49990021 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990021 restart with 200871;

revoke all on "informix".sedevf49990021 from "public" as "informix";

create sequence "informix".sedevf49990023 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990023 restart with 600949;

revoke all on "informix".sedevf49990023 from "public" as "informix";

create sequence "informix".sedevf49990051 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990051 restart with 200126;

revoke all on "informix".sedevf49990051 from "public" as "informix";

create sequence "informix".sedevf49990053 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990053 restart with 200669;

revoke all on "informix".sedevf49990053 from "public" as "informix";

create sequence "informix".sedevf49990061 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990061 restart with 200114;

revoke all on "informix".sedevf49990061 from "public" as "informix";

create sequence "informix".sedevf49990063 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990063 restart with 201050;

revoke all on "informix".sedevf49990063 from "public" as "informix";

create sequence "informix".sedevf49990071 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990071 restart with 200562;

revoke all on "informix".sedevf49990071 from "public" as "informix";

create sequence "informix".sedevf49990073 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990073 restart with 201625;

revoke all on "informix".sedevf49990073 from "public" as "informix";

create sequence "informix".sedevf49990081 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990081 restart with 200234;

revoke all on "informix".sedevf49990081 from "public" as "informix";

create sequence "informix".sedevf49990083 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990083 restart with 200577;

revoke all on "informix".sedevf49990083 from "public" as "informix";

create sequence "informix".sedevf49990091 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990091 restart with 200192;

revoke all on "informix".sedevf49990091 from "public" as "informix";

create sequence "informix".sedevf49990093 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990093 restart with 200738;

revoke all on "informix".sedevf49990093 from "public" as "informix";

create sequence "informix".sedevf49990101 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990101 restart with 200065;

revoke all on "informix".sedevf49990101 from "public" as "informix";

create sequence "informix".sedevf49990103 increment by 1 start with 200000 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990103 restart with 200517;

revoke all on "informix".sedevf49990103 from "public" as "informix";

create sequence "informix".sedevf49990111 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990111 restart with 200037;

revoke all on "informix".sedevf49990111 from "public" as "informix";

create sequence "informix".sedevf49990113 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990113 restart with 200209;

revoke all on "informix".sedevf49990113 from "public" as "informix";

create sequence "informix".sedevf49990121 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990121 restart with 200648;

revoke all on "informix".sedevf49990121 from "public" as "informix";

create sequence "informix".sedevf49990123 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990123 restart with 200643;

revoke all on "informix".sedevf49990123 from "public" as "informix";

create sequence "informix".sedevf49990131 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990131 restart with 200039;

revoke all on "informix".sedevf49990131 from "public" as "informix";

create sequence "informix".sedevf49990133 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990133 restart with 200272;

revoke all on "informix".sedevf49990133 from "public" as "informix";

create sequence "informix".sedevf49990141 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990141 restart with 200072;

revoke all on "informix".sedevf49990141 from "public" as "informix";

create sequence "informix".sedevf49990143 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990143 restart with 200145;

revoke all on "informix".sedevf49990143 from "public" as "informix";

create sequence "informix".sedevf49990151 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990151 restart with 200257;

revoke all on "informix".sedevf49990151 from "public" as "informix";

create sequence "informix".sedevf49990153 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990153 restart with 200764;

revoke all on "informix".sedevf49990153 from "public" as "informix";

create sequence "informix".sedevf49990161 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990161 restart with 200006;

revoke all on "informix".sedevf49990161 from "public" as "informix";

create sequence "informix".sedevf49990163 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990163 restart with 200235;

revoke all on "informix".sedevf49990163 from "public" as "informix";

create sequence "informix".sedevf49990171 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990171 restart with 200053;

revoke all on "informix".sedevf49990171 from "public" as "informix";

create sequence "informix".sedevf49990173 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990173 restart with 200261;

revoke all on "informix".sedevf49990173 from "public" as "informix";

create sequence "informix".sedevf49990181 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990181 restart with 200024;

revoke all on "informix".sedevf49990181 from "public" as "informix";

create sequence "informix".sedevf49990183 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990183 restart with 200280;

revoke all on "informix".sedevf49990183 from "public" as "informix";

create sequence "informix".sedevf49990191 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990191 restart with 200007;

revoke all on "informix".sedevf49990191 from "public" as "informix";

create sequence "informix".sedevf49990193 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990193 restart with 200162;

revoke all on "informix".sedevf49990193 from "public" as "informix";

create sequence "informix".sedevf49990211 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990211 restart with 200036;

revoke all on "informix".sedevf49990211 from "public" as "informix";

create sequence "informix".sedevf49990213 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990213 restart with 200078;

revoke all on "informix".sedevf49990213 from "public" as "informix";

create sequence "informix".sedevf4999lote increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf4999lote restart with 501862;

revoke all on "informix".sedevf4999lote from "public" as "informix";

create sequence "informix".sedevf4999corr increment by 1 start with 1 maxvalue 32000 minvalue 1 cycle nocache  noorder;
alter sequence "informix".sedevf4999corr restart with 25425;

revoke all on "informix".sedevf4999corr from "public" as "informix";

create sequence "informix".sedevf49990223 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedevf49990223 restart with 200102;

revoke all on "informix".sedevf49990223 from "public" as "informix";

create sequence "informix".sefec0000 increment by 4960 start with 1245 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "informix".sefec0000 restart with 204750;

revoke all on "informix".sefec0000 from "public" as "informix";

create sequence "informix".seruc00111 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00111 restart with 40004008;

revoke all on "informix".seruc00111 from "public" as "informix";

create sequence "informix".seruc00211 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00211 restart with 40000727;

revoke all on "informix".seruc00211 from "public" as "informix";

create sequence "informix".seruc00231 increment by 1 start with 60000000 maxvalue 9223372036854775807 minvalue 60000000 cache 20  order;
alter sequence "informix".seruc00231 restart with 60120281;

revoke all on "informix".seruc00231 from "public" as "informix";

create sequence "informix".seruc00511 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00511 restart with 40000008;

revoke all on "informix".seruc00511 from "public" as "informix";

create sequence "informix".seruc00531 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00531 restart with 40000387;

revoke all on "informix".seruc00531 from "public" as "informix";

create sequence "informix".seruc00611 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00611 restart with 40000155;

revoke all on "informix".seruc00611 from "public" as "informix";

create sequence "informix".seruc00631 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00631 restart with 40000989;

revoke all on "informix".seruc00631 from "public" as "informix";

create sequence "informix".seruc00711 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00711 restart with 40009672;

revoke all on "informix".seruc00711 from "public" as "informix";

create sequence "informix".seruc00731 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00731 restart with 40002021;

revoke all on "informix".seruc00731 from "public" as "informix";

create sequence "informix".seruc00811 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00811 restart with 40000024;

revoke all on "informix".seruc00811 from "public" as "informix";

create sequence "informix".seruc00831 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00831 restart with 40000517;

revoke all on "informix".seruc00831 from "public" as "informix";

create sequence "informix".seruc00911 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00911 restart with 40000034;

revoke all on "informix".seruc00911 from "public" as "informix";

create sequence "informix".seruc00931 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc00931 restart with 40000318;

revoke all on "informix".seruc00931 from "public" as "informix";

create sequence "informix".seruc01011 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01011 restart with 40000040;

revoke all on "informix".seruc01011 from "public" as "informix";

create sequence "informix".seruc01031 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01031 restart with 40000369;

revoke all on "informix".seruc01031 from "public" as "informix";

create sequence "informix".seruc01111 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01111 restart with 40000030;

revoke all on "informix".seruc01111 from "public" as "informix";

create sequence "informix".seruc01131 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01131 restart with 40000359;

revoke all on "informix".seruc01131 from "public" as "informix";

create sequence "informix".seruc01211 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01211 restart with 40000073;

revoke all on "informix".seruc01211 from "public" as "informix";

create sequence "informix".seruc01231 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01231 restart with 40000336;

revoke all on "informix".seruc01231 from "public" as "informix";

create sequence "informix".seruc01311 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01311 restart with 40000002;

revoke all on "informix".seruc01311 from "public" as "informix";

create sequence "informix".seruc01331 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01331 restart with 40000444;

revoke all on "informix".seruc01331 from "public" as "informix";

create sequence "informix".seruc01411 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01411 restart with 40000067;

revoke all on "informix".seruc01411 from "public" as "informix";

create sequence "informix".seruc01431 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01431 restart with 40000285;

revoke all on "informix".seruc01431 from "public" as "informix";

create sequence "informix".seruc01511 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01511 restart with 40000042;

revoke all on "informix".seruc01511 from "public" as "informix";

create sequence "informix".seruc01531 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01531 restart with 40000233;

revoke all on "informix".seruc01531 from "public" as "informix";

create sequence "informix".seruc01611 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01611 restart with 40000008;

revoke all on "informix".seruc01611 from "public" as "informix";

create sequence "informix".seruc01631 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01631 restart with 40000130;

revoke all on "informix".seruc01631 from "public" as "informix";

create sequence "informix".seruc01711 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01711 restart with 40000054;

revoke all on "informix".seruc01711 from "public" as "informix";

create sequence "informix".seruc01731 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01731 restart with 40000376;

revoke all on "informix".seruc01731 from "public" as "informix";

create sequence "informix".seruc01811 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01811 restart with 40000016;

revoke all on "informix".seruc01811 from "public" as "informix";

create sequence "informix".seruc01831 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01831 restart with 40000284;

revoke all on "informix".seruc01831 from "public" as "informix";

create sequence "informix".seruc01911 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01911 restart with 40000000;

revoke all on "informix".seruc01911 from "public" as "informix";

create sequence "informix".seruc01931 increment by 1 start with 40000000 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc01931 restart with 40000232;

revoke all on "informix".seruc01931 from "public" as "informix";

create sequence "informix".seruc02011 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02011 restart with 40000000;

revoke all on "informix".seruc02011 from "public" as "informix";

create sequence "informix".seruc02031 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02031 restart with 40000000;

revoke all on "informix".seruc02031 from "public" as "informix";

create sequence "informix".seruc02111 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02111 restart with 40000007;

revoke all on "informix".seruc02111 from "public" as "informix";

create sequence "informix".seruc02131 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02131 restart with 40000789;

revoke all on "informix".seruc02131 from "public" as "informix";

create sequence "informix".seruc02231 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02231 restart with 40000240;

revoke all on "informix".seruc02231 from "public" as "informix";

create sequence "informix".seruc02331 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02331 restart with 40000105;

revoke all on "informix".seruc02331 from "public" as "informix";

create sequence "informix".seruc02431 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02431 restart with 40000000;

revoke all on "informix".seruc02431 from "public" as "informix";

create sequence "informix".seruc02531 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02531 restart with 40000027;

revoke all on "informix".seruc02531 from "public" as "informix";

create sequence "informix".seruc02631 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02631 restart with 40000000;

revoke all on "informix".seruc02631 from "public" as "informix";

create sequence "informix".seruc02731 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02731 restart with 40000000;

revoke all on "informix".seruc02731 from "public" as "informix";

create sequence "informix".seruc02831 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02831 restart with 40000000;

revoke all on "informix".seruc02831 from "public" as "informix";

create sequence "informix".seruc02931 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc02931 restart with 40000000;

revoke all on "informix".seruc02931 from "public" as "informix";

create sequence "informix".seruc03031 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "informix".seruc03031 restart with 40000000;

revoke all on "informix".seruc03031 from "public" as "informix";

create sequence "informix".seblobdata0 increment by 1 start with 1 maxvalue 100000000 minvalue 1 cycle cache 20  order;
alter sequence "informix".seblobdata0 restart with 4821;

revoke all on "informix".seblobdata0 from "public" as "informix";

create sequence "informix".seform0004 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seform0004 restart with 311;

revoke all on "informix".seform0004 from "public" as "informix";

create sequence "informix".seform0005 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seform0005 restart with 197;

revoke all on "informix".seform0005 from "public" as "informix";

create sequence "informix".seform0007 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seform0007 restart with 532;

revoke all on "informix".seform0007 from "public" as "informix";

create sequence "conweb".sedt02 increment by 1 maxvalue 99999999 minvalue 389 cycle nocache  noorder;
alter sequence "conweb".sedt02 restart with 497;

revoke all on "conweb".sedt02 from "public" as "conweb";

create sequence "conweb".sedt03 increment by 1 maxvalue 99999999 minvalue 200 cycle nocache  noorder;
alter sequence "conweb".sedt03 restart with 263;

revoke all on "conweb".sedt03 from "public" as "conweb";

create sequence "conweb".sedt09 increment by 1 maxvalue 89999 minvalue 80884 cycle nocache  noorder;
alter sequence "conweb".sedt09 restart with 80945;

revoke all on "conweb".sedt09 from "public" as "conweb";

create sequence "conweb".sedt11 increment by 1 maxvalue 99999999 minvalue 256 cycle nocache  noorder;
alter sequence "conweb".sedt11 restart with 288;

revoke all on "conweb".sedt11 from "public" as "conweb";

create sequence "conweb".sedt68 increment by 1 maxvalue 99999999 minvalue 95 cycle nocache  noorder;
alter sequence "conweb".sedt68 restart with 127;

revoke all on "conweb".sedt68 from "public" as "conweb";

create sequence "conweb".sena02 increment by 1 maxvalue 89999 minvalue 80054 cycle nocache  noorder;
alter sequence "conweb".sena02 restart with 80268;

revoke all on "conweb".sena02 from "public" as "conweb";

create sequence "conweb".sena03 increment by 1 maxvalue 89999 minvalue 80111 cycle nocache  noorder;
alter sequence "conweb".sena03 restart with 80265;

revoke all on "conweb".sena03 from "public" as "conweb";

create sequence "conweb".sena09 increment by 1 maxvalue 89999 minvalue 80862 cycle nocache  noorder;
alter sequence "conweb".sena09 restart with 81151;

revoke all on "conweb".sena09 from "public" as "conweb";

create sequence "conweb".sena11 increment by 1 maxvalue 89999 minvalue 80123 cycle nocache  noorder;
alter sequence "conweb".sena11 restart with 80241;

revoke all on "conweb".sena11 from "public" as "conweb";

create sequence "conweb".sena18 increment by 1 maxvalue 89999 minvalue 80401 cycle nocache  noorder;
alter sequence "conweb".sena18 restart with 80773;

revoke all on "conweb".sena18 from "public" as "conweb";

create sequence "conweb".sena98 increment by 1 maxvalue 89999 minvalue 80962 cycle nocache  noorder;
alter sequence "conweb".sena98 restart with 81299;

revoke all on "conweb".sena98 from "public" as "conweb";

create sequence "conweb".serr02 increment by 1 maxvalue 99999 minvalue 54 cycle nocache  noorder;
alter sequence "conweb".serr02 restart with 350;

revoke all on "conweb".serr02 from "public" as "conweb";

create sequence "conweb".serr03 increment by 1 maxvalue 99999 minvalue 111 cycle nocache  noorder;
alter sequence "conweb".serr03 restart with 404;

revoke all on "conweb".serr03 from "public" as "conweb";

create sequence "conweb".serr09 increment by 1 maxvalue 99999999 minvalue 800 cycle nocache  noorder;
alter sequence "conweb".serr09 restart with 36610;

revoke all on "conweb".serr09 from "public" as "conweb";

create sequence "conweb".serr11 increment by 1 maxvalue 99999 minvalue 114 cycle nocache  noorder;
alter sequence "conweb".serr11 restart with 276;

revoke all on "conweb".serr11 from "public" as "conweb";

create sequence "conweb".serr18 increment by 1 maxvalue 99999 minvalue 398 cycle nocache  noorder;
alter sequence "conweb".serr18 restart with 1605;

revoke all on "conweb".serr18 from "public" as "conweb";

create sequence "conweb".serr98 increment by 1 maxvalue 99999999 minvalue 1555 cycle nocache  noorder;
alter sequence "conweb".serr98 restart with 1907;

revoke all on "conweb".serr98 from "public" as "conweb";

create sequence "conweb".seruc00001 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seruc00001 restart with 36023;

revoke all on "conweb".seruc00001 from "public" as "conweb";

create sequence "conweb".seruc0000 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seruc0000 restart with 61;

revoke all on "conweb".seruc0000 from "public" as "conweb";

create sequence "conweb".secod3520 increment by 1 maxvalue 9223372036854775807 minvalue 52 cache 20  order;
alter sequence "conweb".secod3520 restart with 334;

revoke all on "conweb".secod3520 from "public" as "conweb";

create sequence "solweb".sereqacceso increment by 1 start with 5000000 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".sereqacceso restart with 5000467;

revoke all on "solweb".sereqacceso from "public" as "solweb";

create sequence "conweb".secp00613 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".secp00613 restart with 10000037;

revoke all on "conweb".secp00613 from "public" as "conweb";

create sequence "conweb".secp00633 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".secp00633 restart with 10000070;

revoke all on "conweb".secp00633 from "public" as "conweb";

create sequence "conweb".secpf0816 increment by 1 start with 100000 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".secpf0816 restart with 101663;

revoke all on "conweb".secpf0816 from "public" as "conweb";

create sequence "conweb".secpf0815 increment by 1 start with 100000 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".secpf0815 restart with 100102;

revoke all on "conweb".secpf0815 from "public" as "conweb";

create sequence "conweb".set3289 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".set3289 restart with 19;

revoke all on "conweb".set3289 from "public" as "conweb";

create sequence "conweb".secod3500 increment by 1 maxvalue 9223372036854775807 minvalue 3490000 nocache  noorder;
alter sequence "conweb".secod3500 restart with 3490148;

revoke all on "conweb".secod3500 from "public" as "conweb";

create sequence "conweb".secod3540 increment by 1 maxvalue 9223372036854775807 minvalue 900 nocache  noorder;
alter sequence "conweb".secod3540 restart with 1003;

revoke all on "conweb".secod3540 from "public" as "conweb";

create sequence "conweb".seform3560 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".seform3560 restart with 165;

revoke all on "conweb".seform3560 from "public" as "conweb";

create sequence "conweb".secobnope increment by 1 maxvalue 999999999999999999 minvalue 644081 nocache  noorder;
alter sequence "conweb".secobnope restart with 666821;

revoke all on "conweb".secobnope from "public" as "conweb";

create sequence "conweb".secobnenv increment by 1 maxvalue 999999999999999999 minvalue 432453 nocache  noorder;
alter sequence "conweb".secobnenv restart with 434036;

revoke all on "conweb".secobnenv from "public" as "conweb";

create sequence "conweb".sef1650 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sef1650 restart with 118;

revoke all on "conweb".sef1650 from "public" as "conweb";

create sequence "conweb".sef1651 increment by 1 maxvalue 9223372036854775807 minvalue 1000000 cache 20  order;
alter sequence "conweb".sef1651 restart with 1000109;

revoke all on "conweb".sef1651 from "public" as "conweb";

create sequence "conweb".set3302 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".set3302 restart with 132;

revoke all on "conweb".set3302 from "public" as "conweb";

create sequence "solweb".seform0820 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seform0820 restart with 344;

revoke all on "solweb".seform0820 from "public" as "solweb";

create sequence "wcavalie".seform1648 increment by 1 start with 131 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".seform1648 restart with 1050;

revoke all on "wcavalie".seform1648 from "public" as "wcavalie";

create sequence "conweb".secp00113 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".secp00113 restart with 225041;

revoke all on "conweb".secp00113 from "public" as "conweb";

create sequence "conweb".secp01933 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".secp01933 restart with 50030;

revoke all on "conweb".secp01933 from "public" as "conweb";

create sequence "conweb".se3530 increment by 1 maxvalue 9223372036854775807 minvalue 103000 cache 20  order;
alter sequence "conweb".se3530 restart with 103025;

revoke all on "conweb".se3530 from "public" as "conweb";

create sequence "conweb".secod3530 increment by 1 maxvalue 9223372036854775807 minvalue 103000 cache 20  order;
alter sequence "conweb".secod3530 restart with 103133;

revoke all on "conweb".secod3530 from "public" as "conweb";

create sequence "solweb".secp01713 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".secp01713 restart with 6000024;

revoke all on "solweb".secp01713 from "public" as "solweb";

create sequence "solweb".secp01733 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".secp01733 restart with 6000024;

revoke all on "solweb".secp01733 from "public" as "solweb";

create sequence "solweb".secp00713 increment by 1 start with 6000000 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".secp00713 restart with 6000083;

revoke all on "solweb".secp00713 from "public" as "solweb";

create sequence "solweb".secp00733 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".secp00733 restart with 6000045;

revoke all on "solweb".secp00733 from "public" as "solweb";

create sequence "conweb".cod1692 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".cod1692 restart with 115;

revoke all on "conweb".cod1692 from "public" as "conweb";

create sequence "conweb".secp00233 increment by 1 start with 5600000 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".secp00233 restart with 5600274;

revoke all on "conweb".secp00233 from "public" as "conweb";

create sequence "conweb".set3287 increment by 1 start with 205 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".set3287 restart with 19;

revoke all on "conweb".set3287 from "public" as "conweb";

create sequence "wcavalie".sefec1661 increment by 1 maxvalue 999999999999999999 minvalue 100321 nocache  noorder;
alter sequence "wcavalie".sefec1661 restart with 101065;

revoke all on "wcavalie".sefec1661 from "public" as "wcavalie";

create sequence "wcavalie".sefecnpres increment by 1 maxvalue 999999999999999999 minvalue 2000 nocache  noorder;
alter sequence "wcavalie".sefecnpres restart with 2588;

revoke all on "wcavalie".sefecnpres from "public" as "wcavalie";

create sequence "wcavalie".sefecpter increment by 1 maxvalue 999999999999999999 minvalue 100402 nocache  noorder;
alter sequence "wcavalie".sefecpter restart with 101602;

revoke all on "wcavalie".sefecpter from "public" as "wcavalie";

create sequence "conweb".segemadettxt increment by 1 start with 1000 maxvalue 9223372036854775807 minvalue 1000 cache 20  order;
alter sequence "conweb".segemadettxt restart with 22427;

revoke all on "conweb".segemadettxt from "public" as "conweb";

create sequence "conweb".seform3595 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".seform3595 restart with 155;

revoke all on "conweb".seform3595 from "public" as "conweb";

create sequence "conweb".sena67 increment by 1 maxvalue 89999 minvalue 80001 cycle nocache  noorder;
alter sequence "conweb".sena67 restart with 80117;

revoke all on "conweb".sena67 from "public" as "conweb";

create sequence "conweb".serr67 increment by 1 maxvalue 99999 minvalue 90001 cycle nocache  noorder;
alter sequence "conweb".serr67 restart with 90202;

revoke all on "conweb".serr67 from "public" as "conweb";

create sequence "rmanriq1".secodconstrun increment by 1 maxvalue 99999999 minvalue 1 nocache  noorder;
alter sequence "rmanriq1".secodconstrun restart with 278490;

revoke all on "rmanriq1".secodconstrun from "public" as "rmanriq1";

create sequence "rmanriq1".senadtrtransp increment by 1 maxvalue 999999 minvalue 1 nocache  noorder;
alter sequence "rmanriq1".senadtrtransp restart with 417;

revoke all on "rmanriq1".senadtrtransp from "public" as "rmanriq1";

create sequence "conweb".set1975 increment by 1 start with 100000 maxvalue 9223372036854775807 minvalue 100000 cache 1000  order;
alter sequence "conweb".set1975 restart with 708164;

revoke all on "conweb".set1975 from "public" as "conweb";

create sequence "conweb".set1974 increment by 20000000 start with 100000 maxvalue 9223372036854775807 minvalue 100000 cache 20  order;
alter sequence "conweb".set1974 restart with 5921000000;

revoke all on "conweb".set1974 from "public" as "conweb";

create sequence "wcavalie".sefec5011 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sefec5011 restart with 691;

revoke all on "wcavalie".sefec5011 from "public" as "wcavalie";

create sequence "conweb".seccpelec increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seccpelec restart with 1981;

revoke all on "conweb".seccpelec from "public" as "conweb";

create sequence "wcavalie".seform1683 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".seform1683 restart with 409;

revoke all on "wcavalie".seform1683 from "public" as "wcavalie";

create sequence "wcavalie".sepresdecpag increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sepresdecpag restart with 170;

revoke all on "wcavalie".sepresdecpag from "public" as "wcavalie";

create sequence "wcavalie".sepagodecpag increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sepagodecpag restart with 85;

revoke all on "wcavalie".sepagodecpag from "public" as "wcavalie";

create sequence "conweb".sericardo2007 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sericardo2007 restart with 24;

revoke all on "conweb".sericardo2007 from "public" as "conweb";

create sequence "rmanriq1".seruc02511 increment by 1 maxvalue 9223372036854775807 minvalue 40000000 cache 20  order;
alter sequence "rmanriq1".seruc02511 restart with 40000025;

revoke all on "rmanriq1".seruc02511 from "public" as "rmanriq1";

create sequence "rmanriq1".secp02513 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "rmanriq1".secp02513 restart with 50022;

revoke all on "rmanriq1".secp02513 from "public" as "rmanriq1";

create sequence "rmanriq1".secp02533 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "rmanriq1".secp02533 restart with 70022;

revoke all on "rmanriq1".secp02533 from "public" as "rmanriq1";

create sequence "conweb".sericardo increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".sericardo restart with 24;

revoke all on "conweb".sericardo from "public" as "conweb";

create sequence "jvaldez".seblobdata1 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 1000  order;
alter sequence "jvaldez".seblobdata1 restart with 888245;

revoke all on "jvaldez".seblobdata1 from "public" as "jvaldez";

create sequence "wcavalie".sedt18 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedt18 restart with 78;

revoke all on "wcavalie".sedt18 from "public" as "wcavalie";

create sequence "wcavalie".sedecdet0000 increment by 1 maxvalue 999999999999999999 minvalue 2650 nocache  noorder;
alter sequence "wcavalie".sedecdet0000 restart with 352207;

revoke all on "wcavalie".sedecdet0000 from "public" as "wcavalie";

create sequence "erett".sedevf49990251 increment by 1 maxvalue 9999999 minvalue 1 nocache  order;
alter sequence "erett".sedevf49990251 restart with 21;

revoke all on "erett".sedevf49990251 from "public" as "erett";

create sequence "erett".sedevf49990253 increment by 1 maxvalue 9999999 minvalue 1 nocache  order;
alter sequence "erett".sedevf49990253 restart with 26;

revoke all on "erett".sedevf49990253 from "public" as "erett";

create sequence "wcavalie".sedecdet0621 increment by 1 maxvalue 999999999999999999 minvalue 100 nocache  noorder;
alter sequence "wcavalie".sedecdet0621 restart with 3201;

revoke all on "wcavalie".sedecdet0621 from "public" as "wcavalie";

create sequence "wcavalie".sedecdet0660 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet0660 restart with 99;

revoke all on "wcavalie".sedecdet0660 from "public" as "wcavalie";

create sequence "wcavalie".sedecdet0659 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet0659 restart with 23;

revoke all on "wcavalie".sedecdet0659 from "public" as "wcavalie";

create sequence "wcavalie".sedecdet0695 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet0695 restart with 66;

revoke all on "wcavalie".sedecdet0695 from "public" as "wcavalie";

create sequence "conweb".seform0051 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seform0051 restart with 424;

revoke all on "conweb".seform0051 from "public" as "conweb";

create sequence "wcavalie".sedecdet1609 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet1609 restart with 364;

revoke all on "wcavalie".sedecdet1609 from "public" as "wcavalie";

create sequence "wcavalie".sedecdet1690 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet1690 restart with 150;

revoke all on "wcavalie".sedecdet1690 from "public" as "wcavalie";

create sequence "wcavalie".sedecinft1776 increment by 1 maxvalue 999999999999999999 minvalue 175 nocache  noorder;
alter sequence "wcavalie".sedecinft1776 restart with 266;

revoke all on "wcavalie".sedecinft1776 from "public" as "wcavalie";

create sequence "wcavalie".sedecdet0625 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet0625 restart with 103;

revoke all on "wcavalie".sedecdet0625 from "public" as "wcavalie";

create sequence "wcavalie".sedecdet0626 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet0626 restart with 152;

revoke all on "wcavalie".sedecdet0626 from "public" as "wcavalie";

create sequence "erett".seform0052 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "erett".seform0052 restart with 382;

revoke all on "erett".seform0052 from "public" as "erett";

create sequence "wcavalie".sedecdet0697 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet0697 restart with 107;

revoke all on "wcavalie".sedecdet0697 from "public" as "wcavalie";

create sequence "conweb".sedecdetm increment by 1 maxvalue 999999999999999999 minvalue 107 nocache  noorder;
alter sequence "conweb".sedecdetm restart with 966;

revoke all on "conweb".sedecdetm from "public" as "conweb";

create sequence "conweb".sedecbol1660 increment by 1 maxvalue 999999999999999999 minvalue 3246 nocache  noorder;
alter sequence "conweb".sedecbol1660 restart with 3341;

revoke all on "conweb".sedecbol1660 from "public" as "conweb";

create sequence "erett".sevicotb increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "erett".sevicotb restart with 276;

revoke all on "erett".sevicotb from "public" as "erett";

create sequence "erett".sevicotpesq increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "erett".sevicotpesq restart with 224;

revoke all on "erett".sevicotpesq from "public" as "erett";

create sequence "rmanriq1".sedecdetr increment by 1 maxvalue 999999999999999999 minvalue 2479200 nocache  noorder;
alter sequence "rmanriq1".sedecdetr restart with 2491253;

revoke all on "rmanriq1".sedecdetr from "public" as "rmanriq1";

create sequence "wcavalie".sedecdet0693 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet0693 restart with 107;

revoke all on "wcavalie".sedecdet0693 from "public" as "wcavalie";

create sequence "wcavalie".sedecdet0648 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sedecdet0648 restart with 41;

revoke all on "wcavalie".sedecdet0648 from "public" as "wcavalie";

create sequence "wcavalie".secfect1975 increment by 1 maxvalue 999999999999999999 minvalue 646 nocache  noorder;
alter sequence "wcavalie".secfect1975 restart with 665;

revoke all on "wcavalie".secfect1975 from "public" as "wcavalie";

create sequence "conweb".sedecinff1692 increment by 1 maxvalue 999999999999999999 minvalue 100 nocache  noorder;
alter sequence "conweb".sedecinff1692 restart with 120;

revoke all on "conweb".sedecinff1692 from "public" as "conweb";

create sequence "solweb".sevicota increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sevicota restart with 73;

revoke all on "solweb".sevicota from "public" as "solweb";

create sequence "solweb".seform0050 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seform0050 restart with 92;

revoke all on "solweb".seform0050 from "public" as "solweb";

create sequence "vmendiet".seform1676 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seform1676 restart with 41;

revoke all on "vmendiet".seform1676 from "public" as "vmendiet";

create sequence "vmendiet".seform1620 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seform1620 restart with 20;

revoke all on "vmendiet".seform1620 from "public" as "vmendiet";

create sequence "vmendiet".seform1662 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seform1662 restart with 189;

revoke all on "vmendiet".seform1662 from "public" as "vmendiet";

create sequence "solweb".seccpelec2008 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2008 restart with 952;

revoke all on "solweb".seccpelec2008 from "public" as "solweb";

create sequence "solweb".seccpelec2009 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2009 restart with 447;

revoke all on "solweb".seccpelec2009 from "public" as "solweb";

create sequence "solweb".seccpelec2010 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2010 restart with 228;

revoke all on "solweb".seccpelec2010 from "public" as "solweb";

create sequence "solweb".seccpelec2011 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2011 restart with 441;

revoke all on "solweb".seccpelec2011 from "public" as "solweb";

create sequence "solweb".seccpelec2012 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2012 restart with 94;

revoke all on "solweb".seccpelec2012 from "public" as "solweb";

create sequence "solweb".seccpelec2013 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2013 restart with 69;

revoke all on "solweb".seccpelec2013 from "public" as "solweb";

create sequence "solweb".seccpelec2014 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2014 restart with 177;

revoke all on "solweb".seccpelec2014 from "public" as "solweb";

create sequence "solweb".seccpelec2015 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2015 restart with 489;

revoke all on "solweb".seccpelec2015 from "public" as "solweb";

create sequence "solweb".seccpelec2016 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2016 restart with 239;

revoke all on "solweb".seccpelec2016 from "public" as "solweb";

create sequence "solweb".seccpelec2017 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "solweb".seccpelec2017 restart with 36;

revoke all on "solweb".seccpelec2017 from "public" as "solweb";

create sequence "solweb".sedecdet0698 increment by 1 maxvalue 99999999 minvalue 1 cycle nocache  noorder;
alter sequence "solweb".sedecdet0698 restart with 90;

revoke all on "solweb".sedecdet0698 from "public" as "solweb";

create sequence "wcavalie".seform1686 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".seform1686 restart with 582;

revoke all on "wcavalie".seform1686 from "public" as "wcavalie";

create sequence "wcavalie".serepform1686 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".serepform1686 restart with 56;

revoke all on "wcavalie".serepform1686 from "public" as "wcavalie";

create sequence "vmendiet".seform increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seform restart with 21;

revoke all on "vmendiet".seform from "public" as "vmendiet";

create sequence "conweb".set3681ann increment by 1 maxvalue 9999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3681ann restart with 1;

revoke all on "conweb".set3681ann from "public" as "conweb";

create sequence "vmendiet".seformfrec increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seformfrec restart with 100159;

revoke all on "vmendiet".seformfrec from "public" as "vmendiet";

create sequence "vmendiet".seoperacion increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seoperacion restart with 1083590;

revoke all on "vmendiet".seoperacion from "public" as "vmendiet";

create sequence "vmendiet".serequerimiento increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".serequerimiento restart with 100114;

revoke all on "vmendiet".serequerimiento from "public" as "vmendiet";

create sequence "vmendiet".selogtra increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".selogtra restart with 316688;

revoke all on "vmendiet".selogtra from "public" as "vmendiet";

create sequence "vmendiet".seform0600 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0600 restart with 100017;

revoke all on "vmendiet".seform0600 from "public" as "vmendiet";

create sequence "vmendiet".seform0601 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0601 restart with 100017;

revoke all on "vmendiet".seform0601 from "public" as "vmendiet";

create sequence "vmendiet".seform0605 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0605 restart with 100017;

revoke all on "vmendiet".seform0605 from "public" as "vmendiet";

create sequence "vmendiet".seform0606 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0606 restart with 100017;

revoke all on "vmendiet".seform0606 from "public" as "vmendiet";

create sequence "vmendiet".seform0610 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0610 restart with 100017;

revoke all on "vmendiet".seform0610 from "public" as "vmendiet";

create sequence "vmendiet".seform0615 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0615 restart with 100017;

revoke all on "vmendiet".seform0615 from "public" as "vmendiet";

create sequence "vmendiet".seform0616 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0616 restart with 100017;

revoke all on "vmendiet".seform0616 from "public" as "vmendiet";

create sequence "vmendiet".seform0617 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0617 restart with 100017;

revoke all on "vmendiet".seform0617 from "public" as "vmendiet";

create sequence "vmendiet".seform0618 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0618 restart with 100017;

revoke all on "vmendiet".seform0618 from "public" as "vmendiet";

create sequence "vmendiet".seform0620 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0620 restart with 100017;

revoke all on "vmendiet".seform0620 from "public" as "vmendiet";

create sequence "vmendiet".seform0625 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0625 restart with 100017;

revoke all on "vmendiet".seform0625 from "public" as "vmendiet";

create sequence "vmendiet".seform0626 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0626 restart with 100017;

revoke all on "vmendiet".seform0626 from "public" as "vmendiet";

create sequence "vmendiet".seform0629 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0629 restart with 100017;

revoke all on "vmendiet".seform0629 from "public" as "vmendiet";

create sequence "vmendiet".seform0633 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0633 restart with 100017;

revoke all on "vmendiet".seform0633 from "public" as "vmendiet";

create sequence "vmendiet".seform0634 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0634 restart with 100017;

revoke all on "vmendiet".seform0634 from "public" as "vmendiet";

create sequence "vmendiet".seform0646 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0646 restart with 100017;

revoke all on "vmendiet".seform0646 from "public" as "vmendiet";

create sequence "vmendiet".seform0647 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0647 restart with 100017;

revoke all on "vmendiet".seform0647 from "public" as "vmendiet";

create sequence "vmendiet".seform0648 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0648 restart with 100017;

revoke all on "vmendiet".seform0648 from "public" as "vmendiet";

create sequence "vmendiet".seform0651 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0651 restart with 100017;

revoke all on "vmendiet".seform0651 from "public" as "vmendiet";

create sequence "vmendiet".seform0652 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0652 restart with 100017;

revoke all on "vmendiet".seform0652 from "public" as "vmendiet";

create sequence "vmendiet".seform0653 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0653 restart with 100017;

revoke all on "vmendiet".seform0653 from "public" as "vmendiet";

create sequence "vmendiet".seform0654 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0654 restart with 100017;

revoke all on "vmendiet".seform0654 from "public" as "vmendiet";

create sequence "vmendiet".seform0655 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0655 restart with 100017;

revoke all on "vmendiet".seform0655 from "public" as "vmendiet";

create sequence "vmendiet".seform0656 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0656 restart with 100017;

revoke all on "vmendiet".seform0656 from "public" as "vmendiet";

create sequence "vmendiet".seform0657 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0657 restart with 100017;

revoke all on "vmendiet".seform0657 from "public" as "vmendiet";

create sequence "vmendiet".seform0658 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0658 restart with 100017;

revoke all on "vmendiet".seform0658 from "public" as "vmendiet";

create sequence "vmendiet".seform0659 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0659 restart with 100017;

revoke all on "vmendiet".seform0659 from "public" as "vmendiet";

create sequence "vmendiet".seform0660 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0660 restart with 100017;

revoke all on "vmendiet".seform0660 from "public" as "vmendiet";

create sequence "vmendiet".seform0672 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0672 restart with 100017;

revoke all on "vmendiet".seform0672 from "public" as "vmendiet";

create sequence "vmendiet".seform0674 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0674 restart with 100017;

revoke all on "vmendiet".seform0674 from "public" as "vmendiet";

create sequence "vmendiet".seform0675 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0675 restart with 100017;

revoke all on "vmendiet".seform0675 from "public" as "vmendiet";

create sequence "vmendiet".seform0676 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0676 restart with 100017;

revoke all on "vmendiet".seform0676 from "public" as "vmendiet";

create sequence "vmendiet".seform0677 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0677 restart with 100017;

revoke all on "vmendiet".seform0677 from "public" as "vmendiet";

create sequence "vmendiet".seform0678 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0678 restart with 100017;

revoke all on "vmendiet".seform0678 from "public" as "vmendiet";

create sequence "vmendiet".seform0679 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0679 restart with 100017;

revoke all on "vmendiet".seform0679 from "public" as "vmendiet";

create sequence "vmendiet".seform0680 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0680 restart with 100017;

revoke all on "vmendiet".seform0680 from "public" as "vmendiet";

create sequence "vmendiet".seform0685 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0685 restart with 100017;

revoke all on "vmendiet".seform0685 from "public" as "vmendiet";

create sequence "vmendiet".seform0688 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0688 restart with 100017;

revoke all on "vmendiet".seform0688 from "public" as "vmendiet";

create sequence "vmendiet".seform0690 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0690 restart with 100017;

revoke all on "vmendiet".seform0690 from "public" as "vmendiet";

create sequence "vmendiet".seform0693 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0693 restart with 100017;

revoke all on "vmendiet".seform0693 from "public" as "vmendiet";

create sequence "vmendiet".seform0694 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0694 restart with 100017;

revoke all on "vmendiet".seform0694 from "public" as "vmendiet";

create sequence "vmendiet".seform0695 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0695 restart with 100017;

revoke all on "vmendiet".seform0695 from "public" as "vmendiet";

create sequence "vmendiet".seform0697 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0697 restart with 100017;

revoke all on "vmendiet".seform0697 from "public" as "vmendiet";

create sequence "vmendiet".seform0698 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform0698 restart with 100017;

revoke all on "vmendiet".seform0698 from "public" as "vmendiet";

create sequence "conweb".set3671 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3671 restart with 1;

revoke all on "conweb".set3671 from "public" as "conweb";

create sequence "conweb".set3671ann increment by 1 maxvalue 9999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3671ann restart with 314;

revoke all on "conweb".set3671ann from "public" as "conweb";

create sequence "conweb".set3673 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3673 restart with 116;

revoke all on "conweb".set3673 from "public" as "conweb";

create sequence "conweb".set3674 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3674 restart with 18;

revoke all on "conweb".set3674 from "public" as "conweb";

create sequence "conweb".set3674ann increment by 1 maxvalue 9999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3674ann restart with 1;

revoke all on "conweb".set3674ann from "public" as "conweb";

create sequence "conweb".set3678 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3678 restart with 19;

revoke all on "conweb".set3678 from "public" as "conweb";

create sequence "conweb".set3678ann increment by 1 maxvalue 9999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3678ann restart with 19;

revoke all on "conweb".set3678ann from "public" as "conweb";

create sequence "conweb".set3681 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3681 restart with 1;

revoke all on "conweb".set3681 from "public" as "conweb";

create sequence "conweb".set3684 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3684 restart with 3948;

revoke all on "conweb".set3684 from "public" as "conweb";

create sequence "conweb".sedevf1649nord increment by 1 maxvalue 99999999 minvalue 999999 nocache  noorder;
alter sequence "conweb".sedevf1649nord restart with 20000370;

revoke all on "conweb".sedevf1649nord from "public" as "conweb";

create sequence "jtaipe".sedecdet0661 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "jtaipe".sedecdet0661 restart with 282;

revoke all on "jtaipe".sedecdet0661 from "public" as "jtaipe";

create sequence "jtaipe".sedecdet0662 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "jtaipe".sedecdet0662 restart with 47;

revoke all on "jtaipe".sedecdet0662 from "public" as "jtaipe";

create sequence "solweb".searchregminen increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".searchregminen restart with 703;

revoke all on "solweb".searchregminen from "public" as "solweb";

create sequence "wcavalie".secod3545 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".secod3545 restart with 28;

revoke all on "wcavalie".secod3545 from "public" as "wcavalie";

create sequence "solweb".seomsustmerc increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seomsustmerc restart with 17;

revoke all on "solweb".seomsustmerc from "public" as "solweb";

create sequence "solweb".seform0003 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seform0003 restart with 528;

revoke all on "solweb".seform0003 from "public" as "solweb";

create sequence "solweb".seommaquinas increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seommaquinas restart with 17;

revoke all on "solweb".seommaquinas from "public" as "solweb";

create sequence "solweb".seform0008 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seform0008 restart with 458;

revoke all on "solweb".seform0008 from "public" as "solweb";

create sequence "solweb".seform0009 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seform0009 restart with 17;

revoke all on "solweb".seform0009 from "public" as "solweb";

create sequence "solweb".set3880 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "solweb".set3880 restart with 30;

revoke all on "solweb".set3880 from "public" as "solweb";

create sequence "conweb".set3870 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3870 restart with 124;

revoke all on "conweb".set3870 from "public" as "conweb";

create sequence "conweb".set3870ann increment by 1 maxvalue 999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3870ann restart with 17;

revoke all on "conweb".set3870ann from "public" as "conweb";

create sequence "conweb".set3871 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3871 restart with 17;

revoke all on "conweb".set3871 from "public" as "conweb";

create sequence "conweb".set3871ann increment by 1 maxvalue 999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3871ann restart with 17;

revoke all on "conweb".set3871ann from "public" as "conweb";

create sequence "conweb".set3875 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3875 restart with 17;

revoke all on "conweb".set3875 from "public" as "conweb";

create sequence "conweb".set3875ann increment by 1 maxvalue 999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3875ann restart with 17;

revoke all on "conweb".set3875ann from "public" as "conweb";

create sequence "conweb".set3878 increment by 1 maxvalue 99999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3878 restart with 17;

revoke all on "conweb".set3878 from "public" as "conweb";

create sequence "conweb".set3878ann increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3878ann restart with 17;

revoke all on "conweb".set3878ann from "public" as "conweb";

create sequence "conweb".set3876 increment by 1 maxvalue 999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3876 restart with 39;

revoke all on "conweb".set3876 from "public" as "conweb";

create sequence "solweb".seform0013 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seform0013 restart with 418;

revoke all on "solweb".seform0013 from "public" as "solweb";

create sequence "solweb".set3886 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "solweb".set3886 restart with 51;

revoke all on "solweb".set3886 from "public" as "solweb";

create sequence "conweb".set3861 increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set3861 restart with 71;

revoke all on "conweb".set3861 from "public" as "conweb";

create sequence "wcavalie".secod0686 increment by 1 maxvalue 999999999999999999 minvalue 1000 nocache  noorder;
alter sequence "wcavalie".secod0686 restart with 1074;

revoke all on "wcavalie".secod0686 from "public" as "wcavalie";

create sequence "vmendiet".seform1610 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seform1610 restart with 100028;

revoke all on "vmendiet".seform1610 from "public" as "vmendiet";

create sequence "wcavalie".seform1607 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".seform1607 restart with 79;

revoke all on "wcavalie".seform1607 from "public" as "wcavalie";

create sequence "vmendiet".sedecdet1611 increment by 1 maxvalue 9223372036854775807 minvalue 900000010 nocache  noorder;
alter sequence "vmendiet".sedecdet1611 restart with 900005602;

revoke all on "vmendiet".sedecdet1611 from "public" as "vmendiet";

create sequence "vmendiet".sedecdet1610 increment by 1 maxvalue 9223372036854775807 minvalue 200000000 nocache  noorder;
alter sequence "vmendiet".sedecdet1610 restart with 200001326;

revoke all on "vmendiet".sedecdet1610 from "public" as "vmendiet";

create sequence "vmendiet".sedecdet1662 increment by 1 maxvalue 9223372036854775807 minvalue 200000000 nocache  noorder;
alter sequence "vmendiet".sedecdet1662 restart with 200021918;

revoke all on "vmendiet".sedecdet1662 from "public" as "vmendiet";

create sequence "vmendiet".sedecdet1683 increment by 1 maxvalue 9223372036854775807 minvalue 200000000 nocache  noorder;
alter sequence "vmendiet".sedecdet1683 restart with 200007255;

revoke all on "vmendiet".sedecdet1683 from "public" as "vmendiet";

create sequence "vmendiet".sedecdet1672 increment by 1 maxvalue 9223372036854775807 minvalue 200000000 nocache  noorder;
alter sequence "vmendiet".sedecdet1672 restart with 200002467;

revoke all on "vmendiet".sedecdet1672 from "public" as "vmendiet";

create sequence "vmendiet".sedecdet1676 increment by 1 maxvalue 9223372036854775807 minvalue 200000000 nocache  noorder;
alter sequence "vmendiet".sedecdet1676 restart with 200005294;

revoke all on "vmendiet".sedecdet1676 from "public" as "vmendiet";

create sequence "vmendiet".sedecdet1620 increment by 1 maxvalue 9223372036854775807 minvalue 200000000 nocache  noorder;
alter sequence "vmendiet".sedecdet1620 restart with 200000832;

revoke all on "vmendiet".sedecdet1620 from "public" as "vmendiet";

create sequence "solweb".cod1697 increment by 1 maxvalue 99999999 minvalue 70000 cycle nocache  noorder;
alter sequence "solweb".cod1697 restart with 70203;

revoke all on "solweb".cod1697 from "public" as "solweb";

create sequence "solweb".cod0686 increment by 1 maxvalue 99999999 minvalue 99999 cycle nocache  noorder;
alter sequence "solweb".cod0686 restart with 100494;

revoke all on "solweb".cod0686 from "public" as "solweb";

create sequence "solweb".x001697 increment by 1 maxvalue 99999999 minvalue 99999 cycle nocache  noorder;
alter sequence "solweb".x001697 restart with 100015;

revoke all on "solweb".x001697 from "public" as "solweb";

create sequence "wcavalie".senovrecfex increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".senovrecfex restart with 1510;

revoke all on "wcavalie".senovrecfex from "public" as "wcavalie";

create sequence "vmendiet".sedecdet1688 increment by 1 maxvalue 9223372036854775807 minvalue 200000000 nocache  noorder;
alter sequence "vmendiet".sedecdet1688 restart with 200014583;

revoke all on "vmendiet".sedecdet1688 from "public" as "vmendiet";

create sequence "vmendiet".sedecdet1663 increment by 1 maxvalue 9223372036854775807 minvalue 200000000 nocache  noorder;
alter sequence "vmendiet".sedecdet1663 restart with 200003243;

revoke all on "vmendiet".sedecdet1663 from "public" as "vmendiet";

create sequence "conweb".seqf0201pdb increment by 1 maxvalue 99999999 minvalue 84350 nocache  noorder;
alter sequence "conweb".seqf0201pdb restart with 84587;

revoke all on "conweb".seqf0201pdb from "public" as "conweb";

create sequence "pchacali".sedecdet0601 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "pchacali".sedecdet0601 restart with 750000466;

revoke all on "pchacali".sedecdet0601 from "public" as "pchacali";

create sequence "pchacali".sedecdet0615 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "pchacali".sedecdet0615 restart with 750000156;

revoke all on "pchacali".sedecdet0615 from "public" as "pchacali";

create sequence "pchacali".sedecdet0616 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "pchacali".sedecdet0616 restart with 750004612;

revoke all on "pchacali".sedecdet0616 from "public" as "pchacali";

create sequence "pchacali".sedecinf1630 increment by 1 maxvalue 899999999 minvalue 88154910 nocache  noorder;
alter sequence "pchacali".sedecinf1630 restart with 88155032;

revoke all on "pchacali".sedecinf1630 from "public" as "pchacali";

create sequence "pchacali".sedecdet3530 increment by 1 maxvalue 899999999 minvalue 2000001 nocache  noorder;
alter sequence "pchacali".sedecdet3530 restart with 2000016;

revoke all on "pchacali".sedecdet3530 from "public" as "pchacali";

create sequence "rsandov1".sedecdet0686 increment by 1 maxvalue 899999999 minvalue 850000 nocache  noorder;
alter sequence "rsandov1".sedecdet0686 restart with 96126918;

revoke all on "rsandov1".sedecdet0686 from "public" as "rsandov1";

create sequence "rsandov1".seform1697 increment by 1 maxvalue 899999999 minvalue 100001 nocache  noorder;
alter sequence "rsandov1".seform1697 restart with 100296;

revoke all on "rsandov1".seform1697 from "public" as "rsandov1";

create sequence "despinoz".seidt3904 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3904 restart with 106;

revoke all on "despinoz".seidt3904 from "public" as "despinoz";

create sequence "despinoz".seidt3905 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3905 restart with 76;

revoke all on "despinoz".seidt3905 from "public" as "despinoz";

create sequence "despinoz".seidt3906 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3906 restart with 22;

revoke all on "despinoz".seidt3906 from "public" as "despinoz";

create sequence "despinoz".seidt3907 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3907 restart with 26;

revoke all on "despinoz".seidt3907 from "public" as "despinoz";

create sequence "despinoz".seidt3908 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3908 restart with 16;

revoke all on "despinoz".seidt3908 from "public" as "despinoz";

create sequence "despinoz".seidt3909 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3909 restart with 19;

revoke all on "despinoz".seidt3909 from "public" as "despinoz";

create sequence "despinoz".seidt3910 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3910 restart with 21;

revoke all on "despinoz".seidt3910 from "public" as "despinoz";

create sequence "despinoz".seidt3911 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3911 restart with 27;

revoke all on "despinoz".seidt3911 from "public" as "despinoz";

create sequence "despinoz".seidt3914 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3914 restart with 16;

revoke all on "despinoz".seidt3914 from "public" as "despinoz";

create sequence "despinoz".seidt3915 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3915 restart with 16;

revoke all on "despinoz".seidt3915 from "public" as "despinoz";

create sequence "despinoz".seidt3916 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3916 restart with 16;

revoke all on "despinoz".seidt3916 from "public" as "despinoz";

create sequence "despinoz".seidt3917 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3917 restart with 46;

revoke all on "despinoz".seidt3917 from "public" as "despinoz";

create sequence "despinoz".seidt3918 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3918 restart with 16;

revoke all on "despinoz".seidt3918 from "public" as "despinoz";

create sequence "despinoz".seidt3919 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3919 restart with 19;

revoke all on "despinoz".seidt3919 from "public" as "despinoz";

create sequence "despinoz".seidt3920 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "despinoz".seidt3920 restart with 29;

revoke all on "despinoz".seidt3920 from "public" as "despinoz";

create sequence "wcavalie".selibform0686 increment by 1 maxvalue 999999999999999999 minvalue 800000 nocache  noorder;
alter sequence "wcavalie".selibform0686 restart with 800044;

revoke all on "wcavalie".selibform0686 from "public" as "wcavalie";

create sequence "solweb".seenvio2009 increment by 1 maxvalue 99999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seenvio2009 restart with 23;

revoke all on "solweb".seenvio2009 from "public" as "solweb";

create sequence "eespino3".seform1664 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "eespino3".seform1664 restart with 100015;

revoke all on "eespino3".seform1664 from "public" as "eespino3";

create sequence "eespino3".seform1665 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "eespino3".seform1665 restart with 100015;

revoke all on "eespino3".seform1665 from "public" as "eespino3";

create sequence "eespino3".sedecdet1664 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "eespino3".sedecdet1664 restart with 100132;

revoke all on "eespino3".sedecdet1664 from "public" as "eespino3";

create sequence "eespino3".sedecdet1665 increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "eespino3".sedecdet1665 restart with 103851;

revoke all on "eespino3".sedecdet1665 from "public" as "eespino3";

create sequence "solweb".seidt3912 increment by 1 maxvalue 999999999999999999 minvalue 475 nocache  noorder;
alter sequence "solweb".seidt3912 restart with 501;

revoke all on "solweb".seidt3912 from "public" as "solweb";

create sequence "solweb".seidt3913 increment by 1 maxvalue 999999999999999999 minvalue 933 nocache  noorder;
alter sequence "solweb".seidt3913 restart with 965;

revoke all on "solweb".seidt3913 from "public" as "solweb";

create sequence "apastor".sedecdet0663 increment by 1 maxvalue 899999999 minvalue 700001 nocache  noorder;
alter sequence "apastor".sedecdet0663 restart with 700054;

revoke all on "apastor".sedecdet0663 from "public" as "apastor";

create sequence "apastor".sedecdet0664 increment by 1 maxvalue 899999999 minvalue 700001 nocache  noorder;
alter sequence "apastor".sedecdet0664 restart with 700021;

revoke all on "apastor".sedecdet0664 from "public" as "apastor";

create sequence "conweb".seprerescoa increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seprerescoa restart with 180;

revoke all on "conweb".seprerescoa from "public" as "conweb";

create sequence "wgalinde".seflj1 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "wgalinde".seflj1 restart with 19;

revoke all on "wgalinde".seflj1 from "public" as "wgalinde";

create sequence "wgalinde".seflj2 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "wgalinde".seflj2 restart with 1;

revoke all on "wgalinde".seflj2 from "public" as "wgalinde";

create sequence "wgalinde".seflj3 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "wgalinde".seflj3 restart with 1;

revoke all on "wgalinde".seflj3 from "public" as "wgalinde";

create sequence "wgalinde".seflj4 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "wgalinde".seflj4 restart with 1;

revoke all on "wgalinde".seflj4 from "public" as "wgalinde";

create sequence "wgalinde".seflj5 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "wgalinde".seflj5 restart with 1;

revoke all on "wgalinde".seflj5 from "public" as "wgalinde";

create sequence "wgalinde".seflj6 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "wgalinde".seflj6 restart with 1;

revoke all on "wgalinde".seflj6 from "public" as "wgalinde";

create sequence "wgalinde".seflj7 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "wgalinde".seflj7 restart with 1;

revoke all on "wgalinde".seflj7 from "public" as "wgalinde";

create sequence "lfernan3".seqenvmsj increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "lfernan3".seqenvmsj restart with 15;

revoke all on "lfernan3".seqenvmsj from "public" as "lfernan3";

create sequence "wcavalie".seseeidxml increment by 1 maxvalue 999999999999999999 minvalue 3 nocache  noorder;
alter sequence "wcavalie".seseeidxml restart with 211571;

revoke all on "wcavalie".seseeidxml from "public" as "wcavalie";

create sequence "apastor".sena07 increment by 1 maxvalue 89999 minvalue 80001 nocache  noorder;
alter sequence "apastor".sena07 restart with 80079;

revoke all on "apastor".sena07 from "public" as "apastor";

create sequence "apastor".sedt07 increment by 1 maxvalue 99999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedt07 restart with 15;

revoke all on "apastor".sedt07 from "public" as "apastor";

create sequence "apastor".serr07 increment by 1 maxvalue 99999 minvalue 1 nocache  noorder;
alter sequence "apastor".serr07 restart with 73;

revoke all on "apastor".serr07 from "public" as "apastor";

create sequence "johashi".secplepres increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "johashi".secplepres restart with 6000201;

revoke all on "johashi".secplepres from "public" as "johashi";

create sequence "johashi".secplearchivo increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 100  order;
alter sequence "johashi".secplearchivo restart with 2083;

revoke all on "johashi".secplearchivo from "public" as "johashi";

create sequence "johashi".secplecontrol increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "johashi".secplecontrol restart with 2763;

revoke all on "johashi".secplecontrol from "public" as "johashi";

create sequence "lfernan3".seqcorrdatosreg increment by 1 maxvalue 9999999999 minvalue 10000 nocache  noorder;
alter sequence "lfernan3".seqcorrdatosreg restart with 10219;

revoke all on "lfernan3".seqcorrdatosreg from "public" as "lfernan3";

create sequence "conweb".setarcre increment by 1 maxvalue 999999999 minvalue 100000 nocache  noorder;
alter sequence "conweb".setarcre restart with 100016;

revoke all on "conweb".setarcre from "public" as "conweb";

create sequence "conweb".secconsdni increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".secconsdni restart with 325;

revoke all on "conweb".secconsdni from "public" as "conweb";

create sequence "vmendiet".seautposcua increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "vmendiet".seautposcua restart with 100084;

revoke all on "vmendiet".seautposcua from "public" as "vmendiet";

create sequence "conweb".seq4320 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seq4320 restart with 15;

revoke all on "conweb".seq4320 from "public" as "conweb";

create sequence "conweb".set4320 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set4320 restart with 330;

revoke all on "conweb".set4320 from "public" as "conweb";

create sequence "conweb".seq5000 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seq5000 restart with 32;

revoke all on "conweb".seq5000 from "public" as "conweb";

create sequence "conweb".set5000 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set5000 restart with 112;

revoke all on "conweb".set5000 from "public" as "conweb";

create sequence "conweb".set5003 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set5003 restart with 35;

revoke all on "conweb".set5003 from "public" as "conweb";

create sequence "conweb".set4373 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set4373 restart with 4193;

revoke all on "conweb".set4373 from "public" as "conweb";

create sequence "conweb".set4374 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set4374 restart with 131;

revoke all on "conweb".set4374 from "public" as "conweb";

create sequence "conweb".set4321 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set4321 restart with 146;

revoke all on "conweb".set4321 from "public" as "conweb";

create sequence "conweb".serp0023 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".serp0023 restart with 417;

revoke all on "conweb".serp0023 from "public" as "conweb";

create sequence "mgabriel".searchopebanc increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "mgabriel".searchopebanc restart with 101460;

revoke all on "mgabriel".searchopebanc from "public" as "mgabriel";

create sequence "mgabriel".secontopebanc increment by 1 maxvalue 9223372036854775807 minvalue 100000 nocache  noorder;
alter sequence "mgabriel".secontopebanc restart with 101274;

revoke all on "mgabriel".secontopebanc from "public" as "mgabriel";

create sequence "mlimayll".sedecdet1666 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "mlimayll".sedecdet1666 restart with 354;

revoke all on "mlimayll".sedecdet1666 from "public" as "mlimayll";

create sequence "rsandov1".sedecdet0667 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "rsandov1".sedecdet0667 restart with 750000284;

revoke all on "rsandov1".sedecdet0667 from "public" as "rsandov1";

create sequence "rsandov1".sedecdet0668 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "rsandov1".sedecdet0668 restart with 750000021;

revoke all on "rsandov1".sedecdet0668 from "public" as "rsandov1";

create sequence "wcavalie".sefelogs increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wcavalie".sefelogs restart with 1049496;

revoke all on "wcavalie".sefelogs from "public" as "wcavalie";

create sequence "solweb".sert0071 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sert0071 restart with 13;

revoke all on "solweb".sert0071 from "public" as "solweb";

create sequence "solweb".serp0071 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0071 restart with 23;

revoke all on "solweb".serp0071 from "public" as "solweb";

create sequence "solweb".serp0011 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0011 restart with 44;

revoke all on "solweb".serp0011 from "public" as "solweb";

create sequence "solweb".serp0021 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0021 restart with 13;

revoke all on "solweb".serp0021 from "public" as "solweb";

create sequence "solweb".serp0051 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0051 restart with 13;

revoke all on "solweb".serp0051 from "public" as "solweb";

create sequence "solweb".serp0053 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0053 restart with 13;

revoke all on "solweb".serp0053 from "public" as "solweb";

create sequence "solweb".serp0061 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0061 restart with 13;

revoke all on "solweb".serp0061 from "public" as "solweb";

create sequence "solweb".serp0063 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0063 restart with 13;

revoke all on "solweb".serp0063 from "public" as "solweb";

create sequence "solweb".serp0073 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0073 restart with 13;

revoke all on "solweb".serp0073 from "public" as "solweb";

create sequence "solweb".serp0081 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0081 restart with 13;

revoke all on "solweb".serp0081 from "public" as "solweb";

create sequence "solweb".serp0083 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0083 restart with 13;

revoke all on "solweb".serp0083 from "public" as "solweb";

create sequence "solweb".serp0091 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0091 restart with 13;

revoke all on "solweb".serp0091 from "public" as "solweb";

create sequence "solweb".serp0093 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0093 restart with 13;

revoke all on "solweb".serp0093 from "public" as "solweb";

create sequence "solweb".serp0101 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0101 restart with 13;

revoke all on "solweb".serp0101 from "public" as "solweb";

create sequence "solweb".serp0103 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0103 restart with 13;

revoke all on "solweb".serp0103 from "public" as "solweb";

create sequence "solweb".serp0111 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0111 restart with 13;

revoke all on "solweb".serp0111 from "public" as "solweb";

create sequence "solweb".serp0113 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0113 restart with 13;

revoke all on "solweb".serp0113 from "public" as "solweb";

create sequence "solweb".serp0121 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0121 restart with 13;

revoke all on "solweb".serp0121 from "public" as "solweb";

create sequence "solweb".serp0123 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0123 restart with 13;

revoke all on "solweb".serp0123 from "public" as "solweb";

create sequence "solweb".serp0131 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0131 restart with 13;

revoke all on "solweb".serp0131 from "public" as "solweb";

create sequence "solweb".serp0133 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0133 restart with 13;

revoke all on "solweb".serp0133 from "public" as "solweb";

create sequence "solweb".serp0141 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0141 restart with 13;

revoke all on "solweb".serp0141 from "public" as "solweb";

create sequence "solweb".serp0143 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0143 restart with 13;

revoke all on "solweb".serp0143 from "public" as "solweb";

create sequence "solweb".serp0151 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0151 restart with 13;

revoke all on "solweb".serp0151 from "public" as "solweb";

create sequence "solweb".serp0153 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0153 restart with 13;

revoke all on "solweb".serp0153 from "public" as "solweb";

create sequence "solweb".serp0161 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0161 restart with 13;

revoke all on "solweb".serp0161 from "public" as "solweb";

create sequence "solweb".serp0163 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0163 restart with 13;

revoke all on "solweb".serp0163 from "public" as "solweb";

create sequence "solweb".serp0171 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0171 restart with 13;

revoke all on "solweb".serp0171 from "public" as "solweb";

create sequence "solweb".serp0173 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0173 restart with 13;

revoke all on "solweb".serp0173 from "public" as "solweb";

create sequence "solweb".serp0181 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0181 restart with 13;

revoke all on "solweb".serp0181 from "public" as "solweb";

create sequence "solweb".serp0183 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0183 restart with 13;

revoke all on "solweb".serp0183 from "public" as "solweb";

create sequence "solweb".serp0191 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0191 restart with 13;

revoke all on "solweb".serp0191 from "public" as "solweb";

create sequence "solweb".serp0193 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0193 restart with 13;

revoke all on "solweb".serp0193 from "public" as "solweb";

create sequence "solweb".serp0211 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0211 restart with 13;

revoke all on "solweb".serp0211 from "public" as "solweb";

create sequence "solweb".serp0213 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0213 restart with 13;

revoke all on "solweb".serp0213 from "public" as "solweb";

create sequence "solweb".serp0223 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0223 restart with 13;

revoke all on "solweb".serp0223 from "public" as "solweb";

create sequence "solweb".serp0251 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0251 restart with 13;

revoke all on "solweb".serp0251 from "public" as "solweb";

create sequence "solweb".serp0253 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".serp0253 restart with 13;

revoke all on "solweb".serp0253 from "public" as "solweb";

create sequence "conweb".seorpe4394_tram increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seorpe4394_tram restart with 84436;

revoke all on "conweb".seorpe4394_tram from "public" as "conweb";

create sequence "conweb".seorpe4394 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seorpe4394 restart with 66572;

revoke all on "conweb".seorpe4394 from "public" as "conweb";

create sequence "mgabriel".sepedidoproceso increment by 1 maxvalue 99999999999 minvalue 50000000000 nocache  noorder;
alter sequence "mgabriel".sepedidoproceso restart with 50000000264;

revoke all on "mgabriel".sepedidoproceso from "public" as "mgabriel";

create sequence "lrojas".seorpe4489 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "lrojas".seorpe4489 restart with 1821;

revoke all on "lrojas".seorpe4489 from "public" as "lrojas";

create sequence "conweb".seqenviomascorrptll increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seqenviomascorrptll restart with 155;

revoke all on "conweb".seqenviomascorrptll from "public" as "conweb";

create sequence "conweb".seqenviomasivocorr increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seqenviomasivocorr restart with 417;

revoke all on "conweb".seqenviomasivocorr from "public" as "conweb";

create sequence "conweb".seqarchcorrmasivo increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seqarchcorrmasivo restart with 12;

revoke all on "conweb".seqarchcorrmasivo from "public" as "conweb";

create sequence "apastor".sedecdet1661 increment by 1 maxvalue 99999999999 minvalue 100000000 nocache  noorder;
alter sequence "apastor".sedecdet1661 restart with 100000570;

revoke all on "apastor".sedecdet1661 from "public" as "apastor";

create sequence "conweb".sewsccsiaf01 increment by 1 maxvalue 899999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sewsccsiaf01 restart with 288;

revoke all on "conweb".sewsccsiaf01 from "public" as "conweb";

create sequence "conweb".sewsccsiaf02 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sewsccsiaf02 restart with 165504;

revoke all on "conweb".sewsccsiaf02 from "public" as "conweb";

create sequence "apastor".sedecdet1607 increment by 1 maxvalue 99999999999 minvalue 100000000 nocache  noorder;
alter sequence "apastor".sedecdet1607 restart with 100000314;

revoke all on "apastor".sedecdet1607 from "public" as "apastor";

create sequence "solweb".searchdtrtransp increment by 1 start with 1450 maxvalue 9223372036854775807 minvalue 1450 nocache  order;
alter sequence "solweb".searchdtrtransp restart with 1965;

revoke all on "solweb".searchdtrtransp from "public" as "solweb";

create sequence "mlimayll".cod0000 increment by 1 maxvalue 9223372036854775807 minvalue 200 nocache  noorder;
alter sequence "mlimayll".cod0000 restart with 213;

revoke all on "mlimayll".cod0000 from "public" as "mlimayll";

create sequence "mlimayll".cod1648 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "mlimayll".cod1648 restart with 42;

revoke all on "mlimayll".cod1648 from "public" as "mlimayll";

create sequence "mlimayll".se1696 increment by 1 maxvalue 9223372036854775807 minvalue 100 nocache  noorder;
alter sequence "mlimayll".se1696 restart with 117;

revoke all on "mlimayll".se1696 from "public" as "mlimayll";

create sequence "conweb".seorpe4469 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seorpe4469 restart with 12;

revoke all on "conweb".seorpe4469 from "public" as "conweb";

create sequence "lvenegas".sewapt1602 increment by 1 maxvalue 899999 minvalue 100001 nocache  noorder;
alter sequence "lvenegas".sewapt1602 restart with 100015;

revoke all on "lvenegas".sewapt1602 from "public" as "lvenegas";

create sequence "lluquego".seorpe439x increment by 1 maxvalue 999999999999999999 minvalue 15032846 nocache  noorder;
alter sequence "lluquego".seorpe439x restart with 15032858;

revoke all on "lluquego".seorpe439x from "public" as "lluquego";

create sequence "mvenero".secanvirconsolsqs increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "mvenero".secanvirconsolsqs restart with 132;

revoke all on "mvenero".secanvirconsolsqs from "public" as "mvenero";

create sequence "mvenero".secantelefonicosqs increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "mvenero".secantelefonicosqs restart with 40;

revoke all on "mvenero".secantelefonicosqs from "public" as "mvenero";

create sequence "mvenero".seoficiofisicosqs increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "mvenero".seoficiofisicosqs restart with 12;

revoke all on "mvenero".seoficiofisicosqs from "public" as "mvenero";

create sequence "mvenero".seoficiovirtualsqs increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "mvenero".seoficiovirtualsqs restart with 6;

revoke all on "mvenero".seoficiovirtualsqs from "public" as "mvenero";

create sequence "mvenero".seinformefisicosqs increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "mvenero".seinformefisicosqs restart with 12;

revoke all on "mvenero".seinformefisicosqs from "public" as "mvenero";

create sequence "mvenero".seinformevirtualsqs increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "mvenero".seinformevirtualsqs restart with 38;

revoke all on "mvenero".seinformevirtualsqs from "public" as "mvenero";

create sequence "apastor".sedecdet0633 increment by 1 start with 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0633 restart with 98;

revoke all on "apastor".sedecdet0633 from "public" as "apastor";

create sequence "conweb".set4676 increment by 1 maxvalue 999999999999999999 minvalue 1000000 nocache  noorder;
alter sequence "conweb".set4676 restart with 1090756;

revoke all on "conweb".set4676 from "public" as "conweb";

create sequence "lluquego".seorpexxx increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "lluquego".seorpexxx restart with 12;

revoke all on "lluquego".seorpexxx from "public" as "lluquego";

create sequence "lluquego".seorpe4395 increment by 1 maxvalue 999999999999999999 minvalue 20021861 nocache  noorder;
alter sequence "lluquego".seorpe4395 restart with 21272329;

revoke all on "lluquego".seorpe4395 from "public" as "lluquego";

create sequence "apastor".sedecdet0600 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0600 restart with 15;

revoke all on "apastor".sedecdet0600 from "public" as "apastor";

create sequence "apastor".sedecdet0610 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0610 restart with 13;

revoke all on "apastor".sedecdet0610 from "public" as "apastor";

create sequence "apastor".sedecdet0617 increment by 1 start with 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0617 restart with 133;

revoke all on "apastor".sedecdet0617 from "public" as "apastor";

create sequence "apastor".sedecdet0618 increment by 1 start with 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0618 restart with 38;

revoke all on "apastor".sedecdet0618 from "public" as "apastor";

create sequence "apastor".sedecdet0634 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0634 restart with 20;

revoke all on "apastor".sedecdet0634 from "public" as "apastor";

create sequence "apastor".sedecdet0646 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0646 restart with 12;

revoke all on "apastor".sedecdet0646 from "public" as "apastor";

create sequence "apastor".sedecdet0647 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0647 restart with 12;

revoke all on "apastor".sedecdet0647 from "public" as "apastor";

create sequence "apastor".sedecdet0651 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0651 restart with 12;

revoke all on "apastor".sedecdet0651 from "public" as "apastor";

create sequence "apastor".sedecdet0652 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0652 restart with 12;

revoke all on "apastor".sedecdet0652 from "public" as "apastor";

create sequence "apastor".sedecdet0653 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0653 restart with 16;

revoke all on "apastor".sedecdet0653 from "public" as "apastor";

create sequence "apastor".sedecdet0654 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0654 restart with 24;

revoke all on "apastor".sedecdet0654 from "public" as "apastor";

create sequence "apastor".sedecdet0655 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0655 restart with 12;

revoke all on "apastor".sedecdet0655 from "public" as "apastor";

create sequence "apastor".sedecdet0656 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0656 restart with 12;

revoke all on "apastor".sedecdet0656 from "public" as "apastor";

create sequence "apastor".sedecdet0657 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0657 restart with 12;

revoke all on "apastor".sedecdet0657 from "public" as "apastor";

create sequence "apastor".sedecdet0658 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0658 restart with 12;

revoke all on "apastor".sedecdet0658 from "public" as "apastor";

create sequence "apastor".sedecdet0672 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0672 restart with 13;

revoke all on "apastor".sedecdet0672 from "public" as "apastor";

create sequence "apastor".sedecdet0674 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0674 restart with 12;

revoke all on "apastor".sedecdet0674 from "public" as "apastor";

create sequence "apastor".sedecdet0675 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0675 restart with 12;

revoke all on "apastor".sedecdet0675 from "public" as "apastor";

create sequence "apastor".sedecdet0676 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0676 restart with 13;

revoke all on "apastor".sedecdet0676 from "public" as "apastor";

create sequence "apastor".sedecdet0677 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0677 restart with 12;

revoke all on "apastor".sedecdet0677 from "public" as "apastor";

create sequence "apastor".sedecdet0678 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0678 restart with 12;

revoke all on "apastor".sedecdet0678 from "public" as "apastor";

create sequence "apastor".sedecdet0679 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0679 restart with 12;

revoke all on "apastor".sedecdet0679 from "public" as "apastor";

create sequence "apastor".sedecdet0680 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0680 restart with 12;

revoke all on "apastor".sedecdet0680 from "public" as "apastor";

create sequence "apastor".sedecdet0694 increment by 1 maxvalue 99999999999 minvalue 1 nocache  noorder;
alter sequence "apastor".sedecdet0694 restart with 12;

revoke all on "apastor".sedecdet0694 from "public" as "apastor";

create sequence "conweb".sescadt4692 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sescadt4692 restart with 6419;

revoke all on "conweb".sescadt4692 from "public" as "conweb";

create sequence "solweb".seorpe4398 increment by 1 start with 10215061 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".seorpe4398 restart with 13010093;

revoke all on "solweb".seorpe4398 from "public" as "solweb";

create sequence "conweb".sesolindt4710 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sesolindt4710 restart with 87;

revoke all on "conweb".sesolindt4710 from "public" as "conweb";

create sequence "bcillian".sedecdet0669 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "bcillian".sedecdet0669 restart with 750000247;

revoke all on "bcillian".sedecdet0669 from "public" as "bcillian";

create sequence "bcillian".sedecdet0670 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "bcillian".sedecdet0670 restart with 750000011;

revoke all on "bcillian".sedecdet0670 from "public" as "bcillian";

create sequence "conweb".seregimminform1698 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seregimminform1698 restart with 62;

revoke all on "conweb".seregimminform1698 from "public" as "conweb";

create sequence "apastor".sena38 increment by 1 maxvalue 99999 minvalue 1 nocache  noorder;
alter sequence "apastor".sena38 restart with 25;

revoke all on "apastor".sena38 from "public" as "apastor";

create sequence "apastor".serr38 increment by 1 maxvalue 99999 minvalue 1 nocache  noorder;
alter sequence "apastor".serr38 restart with 141;

revoke all on "apastor".serr38 from "public" as "apastor";

create sequence "conweb".seorpe4430 increment by 1 maxvalue 999999999999999999 minvalue 10000 nocache  noorder;
alter sequence "conweb".seorpe4430 restart with 11721;

revoke all on "conweb".seorpe4430 from "public" as "conweb";

create sequence "conweb".seorpe4735 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seorpe4735 restart with 77;

revoke all on "conweb".seorpe4735 from "public" as "conweb";

create sequence "fsantosl".seregimminform1699 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "fsantosl".seregimminform1699 restart with 47;

revoke all on "fsantosl".seregimminform1699 from "public" as "fsantosl";

create sequence "fsantosl".seregimminform1699p increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "fsantosl".seregimminform1699p restart with 6;

revoke all on "fsantosl".seregimminform1699p from "public" as "fsantosl";

create sequence "rsandov1".sedecdet0699 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "rsandov1".sedecdet0699 restart with 750000050;

revoke all on "rsandov1".sedecdet0699 from "public" as "rsandov1";

create sequence "solweb".sequence_lote_temporal increment by 1200 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sequence_lote_temporal restart with 69711;

revoke all on "solweb".sequence_lote_temporal from "public" as "solweb";

create sequence "solweb".sequence_lote increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sequence_lote restart with 2665;

revoke all on "solweb".sequence_lote from "public" as "solweb";

create sequence "conweb".seorpe4691 increment by 1 maxvalue 999999999999999999 minvalue 404 nocache  noorder;
alter sequence "conweb".seorpe4691 restart with 1428;

revoke all on "conweb".seorpe4691 from "public" as "conweb";

create sequence "solweb".set4828 increment by 1 maxvalue 9999999 minvalue 1 nocache  noorder;
alter sequence "solweb".set4828 restart with 91;

revoke all on "solweb".set4828 from "public" as "solweb";

create sequence "solweb".requerimiento increment by 1 maxvalue 999999 minvalue 1 cycle nocache  order;
alter sequence "solweb".requerimiento restart with 12;

revoke all on "solweb".requerimiento from "public" as "solweb";

create sequence "solweb".instancia increment by 1 maxvalue 999999 minvalue 1 cycle nocache  order;
alter sequence "solweb".instancia restart with 80465;

revoke all on "solweb".instancia from "public" as "solweb";

create sequence "conweb".seorpe4435 increment by 1 maxvalue 999999999999999999 minvalue 1000 nocache  noorder;
alter sequence "conweb".seorpe4435 restart with 1173;

revoke all on "conweb".seorpe4435 from "public" as "conweb";

create sequence "conweb".setxxxx increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".setxxxx restart with 124111;

revoke all on "conweb".setxxxx from "public" as "conweb";

create sequence "conweb".set4888 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set4888 restart with 769;

revoke all on "conweb".set4888 from "public" as "conweb";

create sequence "vmendiet".senotvali increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "vmendiet".senotvali restart with 1288340;

revoke all on "vmendiet".senotvali from "public" as "vmendiet";

create sequence "izarate".secanvirsinsolsqs increment by 1 maxvalue 1099999 minvalue 1001000 nocache  noorder;
alter sequence "izarate".secanvirsinsolsqs restart with 1001642;

revoke all on "izarate".secanvirsinsolsqs from "public" as "izarate";

create sequence "mgabriel".sedecdet0681 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "mgabriel".sedecdet0681 restart with 750000107;

revoke all on "mgabriel".sedecdet0681 from "public" as "mgabriel";

create sequence "mgabriel".sedecdet0682 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "mgabriel".sedecdet0682 restart with 750000052;

revoke all on "mgabriel".sedecdet0682 from "public" as "mgabriel";

create sequence "conweb".set4768 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  order;
alter sequence "conweb".set4768 restart with 1247;

revoke all on "conweb".set4768 from "public" as "conweb";

create sequence "lvenegas".sedevf49990233 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "lvenegas".sedevf49990233 restart with 4;

revoke all on "lvenegas".sedevf49990233 from "public" as "lvenegas";

create sequence "eespino3".serp0233 increment by 1 maxvalue 999999999999999999 minvalue 1 cycle nocache  noorder;
alter sequence "eespino3".serp0233 restart with 100000;

revoke all on "eespino3".serp0233 from "public" as "eespino3";

create sequence "conweb".msj4888 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".msj4888 restart with 445;

revoke all on "conweb".msj4888 from "public" as "conweb";

create sequence "solweb".seorpe5002 increment by 1 start with 0 maxvalue 9223372036854775807 minvalue 0 cache 20  order;
alter sequence "solweb".seorpe5002 restart with 836;

revoke all on "solweb".seorpe5002 from "public" as "solweb";

create sequence "jmaza".sedepvali increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "jmaza".sedepvali restart with 140614;

revoke all on "jmaza".sedepvali from "public" as "jmaza";

create sequence "conweb".set5020 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set5020 restart with 274;

revoke all on "conweb".set5020 from "public" as "conweb";

create sequence "qn91".sesicobfsolic increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "qn91".sesicobfsolic restart with 2613;

revoke all on "qn91".sesicobfsolic from "public" as "qn91";

create sequence "qn91".sesicobfhistsolic increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "qn91".sesicobfhistsolic restart with 3714;

revoke all on "qn91".sesicobfhistsolic from "public" as "qn91";

create sequence "conweb".sesicobfconst increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sesicobfconst restart with 78;

revoke all on "conweb".sesicobfconst from "public" as "conweb";

create sequence "qn91".sesicobfsolvalcarga increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "qn91".sesicobfsolvalcarga restart with 6931;

revoke all on "qn91".sesicobfsolvalcarga from "public" as "qn91";

create sequence "qn91".sesicobfsolcarga increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "qn91".sesicobfsolcarga restart with 1912;

revoke all on "qn91".sesicobfsolcarga from "public" as "qn91";

create sequence "qn91".sesicobfsoldetcarga increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "qn91".sesicobfsoldetcarga restart with 3;

revoke all on "qn91".sesicobfsoldetcarga from "public" as "qn91";

create sequence "qn91".sesicobfarccarga increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "qn91".sesicobfarccarga restart with 1577;

revoke all on "qn91".sesicobfarccarga from "public" as "qn91";

create sequence "qn91".sesicobfarccontrol increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "qn91".sesicobfarccontrol restart with 1363;

revoke all on "qn91".sesicobfarccontrol from "public" as "qn91";

create sequence "qm22".sesicobfasign increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qm22".sesicobfasign restart with 83;

revoke all on "qm22".sesicobfasign from "public" as "qm22";

create sequence "qm22".sesicobfcalreq increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qm22".sesicobfcalreq restart with 76;

revoke all on "qm22".sesicobfcalreq from "public" as "qm22";

create sequence "conweb".sertps increment by 1 start with 32768 maxvalue 9223372036854775807 minvalue 32768 nocache  order;
alter sequence "conweb".sertps restart with 67174;

revoke all on "conweb".sertps from "public" as "conweb";

create sequence "conweb".sesicobfcalifica increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sesicobfcalifica restart with 52;

revoke all on "conweb".sesicobfcalifica from "public" as "conweb";

create sequence "rarroyo".secp02713 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "rarroyo".secp02713 restart with 50002;

revoke all on "rarroyo".secp02713 from "public" as "rarroyo";

create sequence "rarroyo".seruc02711 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "rarroyo".seruc02711 restart with 40000032;

revoke all on "rarroyo".seruc02711 from "public" as "rarroyo";

create sequence "rarroyo".secp02733 increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "rarroyo".secp02733 restart with 100002;

revoke all on "rarroyo".secp02733 from "public" as "rarroyo";

create sequence "cneyra".set4852 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "cneyra".set4852 restart with 133;

revoke all on "cneyra".set4852 from "public" as "cneyra";

create sequence "mgabriel".senovtx001 increment by 1 maxvalue 899999999 minvalue 1000 nocache  noorder;
alter sequence "mgabriel".senovtx001 restart with 1017;

revoke all on "mgabriel".senovtx001 from "public" as "mgabriel";

create sequence "solweb".sq_guia_rem_confir increment by 1 start with 1 maxvalue 1000000000 minvalue 1 cycle nocache  order;
alter sequence "solweb".sq_guia_rem_confir restart with 345;

revoke all on "solweb".sq_guia_rem_confir from "public" as "solweb";

create sequence "qn91".secorsicobf01 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf01 restart with 1;

revoke all on "qn91".secorsicobf01 from "public" as "qn91";

create sequence "qn91".secorsicobf02 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf02 restart with 1;

revoke all on "qn91".secorsicobf02 from "public" as "qn91";

create sequence "qn91".secorsicobf03 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf03 restart with 18;

revoke all on "qn91".secorsicobf03 from "public" as "qn91";

create sequence "qn91".secorsicobf04 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf04 restart with 29;

revoke all on "qn91".secorsicobf04 from "public" as "qn91";

create sequence "qn91".secorsicobf05 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf05 restart with 33;

revoke all on "qn91".secorsicobf05 from "public" as "qn91";

create sequence "lvenegas".cod3550 increment by 1 maxvalue 999999999999999999 minvalue 885000020 nocache  noorder;
alter sequence "lvenegas".cod3550 restart with 885000049;

revoke all on "lvenegas".cod3550 from "public" as "lvenegas";

create sequence "lvenegas".cod3500 increment by 1 maxvalue 999999999999999999 minvalue 1050450 nocache  noorder;
alter sequence "lvenegas".cod3500 restart with 1050487;

revoke all on "lvenegas".cod3500 from "public" as "lvenegas";

create sequence "conweb".seenvio increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seenvio restart with 83;

revoke all on "conweb".seenvio from "public" as "conweb";

create sequence "qn91".secorsicobf06 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf06 restart with 45;

revoke all on "qn91".secorsicobf06 from "public" as "qn91";

create sequence "qn91".secorsicobf13 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf13 restart with 78;

revoke all on "qn91".secorsicobf13 from "public" as "qn91";

create sequence "qn91".secorsicobf07 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf07 restart with 1412;

revoke all on "qn91".secorsicobf07 from "public" as "qn91";

create sequence "qn91".secorsicobf08 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf08 restart with 1030;

revoke all on "qn91".secorsicobf08 from "public" as "qn91";

create sequence "qn91".secorsicobf09 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf09 restart with 72548;

revoke all on "qn91".secorsicobf09 from "public" as "qn91";

create sequence "qn91".secorsicobf10 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf10 restart with 28;

revoke all on "qn91".secorsicobf10 from "public" as "qn91";

create sequence "qn91".secorsicobf11 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf11 restart with 88837;

revoke all on "qn91".secorsicobf11 from "public" as "qn91";

create sequence "qn91".secorsicobf12 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".secorsicobf12 restart with 7929;

revoke all on "qn91".secorsicobf12 from "public" as "qn91";

create sequence "icapunay".sesisapredio increment by 1 start with 329 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisapredio restart with 376;

revoke all on "icapunay".sesisapredio from "public" as "icapunay";

create sequence "icapunay".sesisapagopred increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisapagopred restart with 32;

revoke all on "icapunay".sesisapagopred from "public" as "icapunay";

create sequence "icapunay".sesisapredsum increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisapredsum restart with 40;

revoke all on "icapunay".sesisapredsum from "public" as "icapunay";

create sequence "icapunay".sesisapredinst increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisapredinst restart with 44;

revoke all on "icapunay".sesisapredinst from "public" as "icapunay";

create sequence "icapunay".sesisaderecpre increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisaderecpre restart with 44;

revoke all on "icapunay".sesisaderecpre from "public" as "icapunay";

create sequence "icapunay".sesisatasapre increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisatasapre restart with 34;

revoke all on "icapunay".sesisatasapre from "public" as "icapunay";

create sequence "icapunay".sesisanotapre increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisanotapre restart with 34;

revoke all on "icapunay".sesisanotapre from "public" as "icapunay";

create sequence "icapunay".sesisalicepre increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisalicepre restart with 32;

revoke all on "icapunay".sesisalicepre from "public" as "icapunay";

create sequence "icapunay".sesisaarrenpre increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisaarrenpre restart with 32;

revoke all on "icapunay".sesisaarrenpre from "public" as "icapunay";

create sequence "icapunay".sesisapiso increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisapiso restart with 185;

revoke all on "icapunay".sesisapiso from "public" as "icapunay";

create sequence "icapunay".sesisadireccion increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "icapunay".sesisadireccion restart with 37;

revoke all on "icapunay".sesisadireccion from "public" as "icapunay";

create sequence "mtomayll".sedecdet0683 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "mtomayll".sedecdet0683 restart with 750000375;

revoke all on "mtomayll".sedecdet0683 from "public" as "mtomayll";

create sequence "mtomayll".sedecdet0684 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "mtomayll".sedecdet0684 restart with 750000032;

revoke all on "mtomayll".sedecdet0684 from "public" as "mtomayll";

create sequence "conweb".sedecint0683 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "conweb".sedecint0683 restart with 750000031;

revoke all on "conweb".sedecint0683 from "public" as "conweb";

create sequence "conweb".seq_2mps increment by 1 start with 1 maxvalue 30 minvalue 0 cache 10  order;
alter sequence "conweb".seq_2mps restart with 30;

revoke all on "conweb".seq_2mps from "public" as "conweb";

create sequence "informix".sedecdet1674 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".sedecdet1674 restart with 75;

revoke all on "informix".sedecdet1674 from "public" as "informix";

create sequence "qn91".sesicobfrenov2014 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn91".sesicobfrenov2014 restart with 84;

revoke all on "qn91".sesicobfrenov2014 from "public" as "qn91";

create sequence "solweb".sedecinf1605 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "solweb".sedecinf1605 restart with 268;

revoke all on "solweb".sedecinf1605 from "public" as "solweb";

create sequence "conweb".codi437 increment by 1 maxvalue 999999999999999999 minvalue 500008 nocache  noorder;
alter sequence "conweb".codi437 restart with 500752;

revoke all on "conweb".codi437 from "public" as "conweb";

create sequence "conweb".cod5030 increment by 1 maxvalue 999999999999999999 minvalue 8010 nocache  noorder;
alter sequence "conweb".cod5030 restart with 8059;

revoke all on "conweb".cod5030 from "public" as "conweb";

create sequence "icapunay".sedenuncia increment by 1 maxvalue 999999999999999999 minvalue 50000 nocache  noorder;
alter sequence "icapunay".sedenuncia restart with 60923;

revoke all on "icapunay".sedenuncia from "public" as "icapunay";

create sequence "wgalinde".sesolspot increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wgalinde".sesolspot restart with 75;

revoke all on "wgalinde".sesolspot from "public" as "wgalinde";

create sequence "solweb".searcpro5525 increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "solweb".searcpro5525 restart with 37;

revoke all on "solweb".searcpro5525 from "public" as "solweb";

create sequence "conweb".setpreg increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".setpreg restart with 51;

revoke all on "conweb".setpreg from "public" as "conweb";

create sequence "conweb".seqtrahog increment by 1 start with 1 maxvalue 9999999 minvalue 1 cache 20  order;
alter sequence "conweb".seqtrahog restart with 1536;

revoke all on "conweb".seqtrahog from "public" as "conweb";

create sequence "conweb".sesigart5207 increment by 1 start with 1 maxvalue 999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5207 restart with 32;

revoke all on "conweb".sesigart5207 from "public" as "conweb";

create sequence "conweb".sesigart5198 increment by 1 start with 1 maxvalue 99999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5198 restart with 30;

revoke all on "conweb".sesigart5198 from "public" as "conweb";

create sequence "conweb".sesigart5447 increment by 1 start with 1 maxvalue 99999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5447 restart with 95;

revoke all on "conweb".sesigart5447 from "public" as "conweb";

create sequence "conweb".sesigart5183 increment by 1 start with 1 maxvalue 99999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5183 restart with 28;

revoke all on "conweb".sesigart5183 from "public" as "conweb";

create sequence "conweb".sesigart5456 increment by 1 start with 1 maxvalue 99999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5456 restart with 64;

revoke all on "conweb".sesigart5456 from "public" as "conweb";

create sequence "conweb".sesigart5210 increment by 1 maxvalue 99999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5210 restart with 481550;

revoke all on "conweb".sesigart5210 from "public" as "conweb";

create sequence "conweb".sesigart5194 increment by 1 start with 1 maxvalue 99999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5194 restart with 117;

revoke all on "conweb".sesigart5194 from "public" as "conweb";

create sequence "conweb".sesigart5192 increment by 1 start with 1 maxvalue 999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5192 restart with 134;

revoke all on "conweb".sesigart5192 from "public" as "conweb";

create sequence "conweb".sesigart5173 increment by 1 start with 1 maxvalue 9999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5173 restart with 77;

revoke all on "conweb".sesigart5173 from "public" as "conweb";

create sequence "conweb".sesigart5169 increment by 1 maxvalue 99999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5169 restart with 101;

revoke all on "conweb".sesigart5169 from "public" as "conweb";

create sequence "conweb".sesigart5166 increment by 1 maxvalue 9999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5166 restart with 4;

revoke all on "conweb".sesigart5166 from "public" as "conweb";

create sequence "conweb".sesigart5163 increment by 1 maxvalue 9999999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5163 restart with 145;

revoke all on "conweb".sesigart5163 from "public" as "conweb";

create sequence "conweb".sesigart5158 increment by 1 start with 1 maxvalue 9999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5158 restart with 73;

revoke all on "conweb".sesigart5158 from "public" as "conweb";

create sequence "conweb".sesigart5156 increment by 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5156 restart with 55777;

revoke all on "conweb".sesigart5156 from "public" as "conweb";

create sequence "conweb".sesigart5155 increment by 1 maxvalue 9999999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5155 restart with 20358;

revoke all on "conweb".sesigart5155 from "public" as "conweb";

create sequence "conweb".sesigart5153 increment by 1 start with 1 maxvalue 9999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5153 restart with 72;

revoke all on "conweb".sesigart5153 from "public" as "conweb";

create sequence "conweb".sesigart5152 increment by 1 maxvalue 99999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5152 restart with 138;

revoke all on "conweb".sesigart5152 from "public" as "conweb";

create sequence "conweb".sesigart5151 increment by 1 maxvalue 9999999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5151 restart with 179;

revoke all on "conweb".sesigart5151 from "public" as "conweb";

create sequence "conweb".sesigart5175 increment by 1 start with 1 maxvalue 9999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5175 restart with 157;

revoke all on "conweb".sesigart5175 from "public" as "conweb";

create sequence "conweb".sesigart5176 increment by 1 start with 1 maxvalue 9999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5176 restart with 143;

revoke all on "conweb".sesigart5176 from "public" as "conweb";

create sequence "conweb".sesigart5179 increment by 1 start with 1 maxvalue 9999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5179 restart with 82;

revoke all on "conweb".sesigart5179 from "public" as "conweb";

create sequence "conweb".sesigart5213 increment by 1 start with 1 maxvalue 99999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5213 restart with 42;

revoke all on "conweb".sesigart5213 from "public" as "conweb";

create sequence "conweb".sesigart5215 increment by 1 start with 1 maxvalue 999999999999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5215 restart with 110;

revoke all on "conweb".sesigart5215 from "public" as "conweb";

create sequence "conweb".sesigart5460 increment by 1 start with 1 maxvalue 99999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5460 restart with 47;

revoke all on "conweb".sesigart5460 from "public" as "conweb";

create sequence "conweb".sesigart5453 increment by 1 start with 1 maxvalue 999999999999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5453 restart with 99;

revoke all on "conweb".sesigart5453 from "public" as "conweb";

create sequence "conweb".sesigart5459 increment by 1 start with 1 maxvalue 999999999999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5459 restart with 36;

revoke all on "conweb".sesigart5459 from "public" as "conweb";

create sequence "conweb".sesigart5220 increment by 1 maxvalue 999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5220 restart with 8576;

revoke all on "conweb".sesigart5220 from "public" as "conweb";

create sequence "conweb".sesigart5219 increment by 1 maxvalue 999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5219 restart with 1438;

revoke all on "conweb".sesigart5219 from "public" as "conweb";

create sequence "conweb".sesigart5218 increment by 1 maxvalue 999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5218 restart with 119;

revoke all on "conweb".sesigart5218 from "public" as "conweb";

create sequence "conweb".sesigart5217 increment by 1 maxvalue 999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5217 restart with 32;

revoke all on "conweb".sesigart5217 from "public" as "conweb";

create sequence "conweb".sesigart5216 increment by 1 start with 1 maxvalue 999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5216 restart with 34;

revoke all on "conweb".sesigart5216 from "public" as "conweb";

create sequence "conweb".sesigart5222 increment by 1 start with 1 maxvalue 999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5222 restart with 31;

revoke all on "conweb".sesigart5222 from "public" as "conweb";

create sequence "conweb".sesigart5159 increment by 1 start with 1 maxvalue 9999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5159 restart with 90;

revoke all on "conweb".sesigart5159 from "public" as "conweb";

create sequence "conweb".sesigart5209 increment by 1 start with 1 maxvalue 999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5209 restart with 84;

revoke all on "conweb".sesigart5209 from "public" as "conweb";

create sequence "conweb".sesigart5187 increment by 1 start with 1 maxvalue 999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5187 restart with 28;

revoke all on "conweb".sesigart5187 from "public" as "conweb";

create sequence "conweb".seq_frmpvindh increment by 1 start with 1 maxvalue 9999999 minvalue 1 cache 20  order;
alter sequence "conweb".seq_frmpvindh restart with 235;

revoke all on "conweb".seq_frmpvindh from "public" as "conweb";

create sequence "informix".secontincpe increment by 1 maxvalue 1000000 minvalue 1 nocache  noorder;
alter sequence "informix".secontincpe restart with 13523;

revoke all on "informix".secontincpe from "public" as "informix";

create sequence "conweb".sepersonafb increment by 1 start with 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sepersonafb restart with 28;

revoke all on "conweb".sepersonafb from "public" as "conweb";

create sequence "conweb".seavisos increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seavisos restart with 1726;

revoke all on "conweb".seavisos from "public" as "conweb";

create sequence "mtomayll".sedecdet0691 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "mtomayll".sedecdet0691 restart with 750000356;

revoke all on "mtomayll".sedecdet0691 from "public" as "mtomayll";

create sequence "eyataco".secdae9713 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "eyataco".secdae9713 restart with 27;

revoke all on "eyataco".secdae9713 from "public" as "eyataco";

create sequence "eyataco".secdae5741 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "eyataco".secdae5741 restart with 21395;

revoke all on "eyataco".secdae5741 from "public" as "eyataco";

create sequence "conweb".sesigelexped increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".sesigelexped restart with 1413;

revoke all on "conweb".sesigelexped from "public" as "conweb";

create sequence "conweb".sesigeletap increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sesigeletap restart with 769;

revoke all on "conweb".sesigeletap from "public" as "conweb";

create sequence "conweb".sesigeldocext increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".sesigeldocext restart with 68483;

revoke all on "conweb".sesigeldocext from "public" as "conweb";

create sequence "eyataco".secsaedt5836 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "eyataco".secsaedt5836 restart with 156;

revoke all on "eyataco".secsaedt5836 from "public" as "eyataco";

create sequence "kaviles".sedecdet0692 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "kaviles".sedecdet0692 restart with 750000035;

revoke all on "kaviles".sedecdet0692 from "public" as "kaviles";

create sequence "conweb".separticipcp increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".separticipcp restart with 20364;

revoke all on "conweb".separticipcp from "public" as "conweb";

create sequence "conweb".semovimcp increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".semovimcp restart with 782;

revoke all on "conweb".semovimcp from "public" as "conweb";

create sequence "conweb".sedatocp increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sedatocp restart with 4215;

revoke all on "conweb".sedatocp from "public" as "conweb";

create sequence "conweb".seprocpers increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seprocpers restart with 72039;

revoke all on "conweb".seprocpers from "public" as "conweb";

create sequence "conweb".sedirec increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sedirec restart with 592;

revoke all on "conweb".sedirec from "public" as "conweb";

create sequence "qn84".sesicobfhistasign increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn84".sesicobfhistasign restart with 27;

revoke all on "qn84".sesicobfhistasign from "public" as "qn84";

create sequence "conweb".sesigelarch increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".sesigelarch restart with 41;

revoke all on "conweb".sesigelarch from "public" as "conweb";

create sequence "conweb".seq_licencia increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seq_licencia restart with 27;

revoke all on "conweb".seq_licencia from "public" as "conweb";

create sequence "conweb".seq_solicitud increment by 1 maxvalue 999999999999999999 minvalue 555555 nocache  noorder;
alter sequence "conweb".seq_solicitud restart with 555581;

revoke all on "conweb".seq_solicitud from "public" as "conweb";

create sequence "qn87".seqexpedientepr increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn87".seqexpedientepr restart with 4358;

revoke all on "qn87".seqexpedientepr from "public" as "qn87";

create sequence "conweb".sesigelsolinfo increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".sesigelsolinfo restart with 38;

revoke all on "conweb".sesigelsolinfo from "public" as "conweb";

create sequence "conweb".sesigelarchcarg increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".sesigelarchcarg restart with 49;

revoke all on "conweb".sesigelarchcarg from "public" as "conweb";

create sequence "conweb".sesigeltarea increment by 1 maxvalue 9223372036854775807 minvalue 1 nocache  noorder;
alter sequence "conweb".sesigeltarea restart with 26;

revoke all on "conweb".sesigeltarea from "public" as "conweb";

create sequence "solweb".se5768dir increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "solweb".se5768dir restart with 70006276;

revoke all on "solweb".se5768dir from "public" as "solweb";

create sequence "solweb".se5769hdir increment by 1 start with 70000000 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "solweb".se5769hdir restart with 70004645;

revoke all on "solweb".se5769hdir from "public" as "solweb";

create sequence "solweb".sesigelsolcf increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sesigelsolcf restart with 43;

revoke all on "solweb".sesigelsolcf from "public" as "solweb";

create sequence "solweb".sesigelcf increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sesigelcf restart with 88;

revoke all on "solweb".sesigelcf from "public" as "solweb";

create sequence "solweb".sesigelmovcf increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sesigelmovcf restart with 221;

revoke all on "solweb".sesigelmovcf from "public" as "solweb";

create sequence "solweb".sesigelnotifcf increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sesigelnotifcf restart with 461286;

revoke all on "solweb".sesigelnotifcf from "public" as "solweb";

create sequence "solweb".sesigelsupervcf increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sesigelsupervcf restart with 63;

revoke all on "solweb".sesigelsupervcf from "public" as "solweb";

create sequence "eyataco".secfdt5510 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "eyataco".secfdt5510 restart with 37771;

revoke all on "eyataco".secfdt5510 from "public" as "eyataco";

create sequence "eyataco".secpdfxxxx increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "eyataco".secpdfxxxx restart with 32;

revoke all on "eyataco".secpdfxxxx from "public" as "eyataco";

create sequence "eyataco".secbucxxxx increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "eyataco".secbucxxxx restart with 552;

revoke all on "eyataco".secbucxxxx from "public" as "eyataco";

create sequence "informix".se6032ped increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "informix".se6032ped restart with 32;

revoke all on "informix".se6032ped from "public" as "informix";

create sequence "conweb".seauditoriaxxxx increment by 1 start with 1 maxvalue 999999999999999999 minvalue 0 nocache  noorder;
alter sequence "conweb".seauditoriaxxxx restart with 30;

revoke all on "conweb".seauditoriaxxxx from "public" as "conweb";

create sequence "mtomayll".sedecint0099 increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "mtomayll".sedecint0099 restart with 2563;

revoke all on "mtomayll".sedecint0099 from "public" as "mtomayll";

create sequence "solweb".se6238operadorpv increment by 1 start with 1 maxvalue 999 minvalue 1 cache 10  order;
alter sequence "solweb".se6238operadorpv restart with 180;

revoke all on "solweb".se6238operadorpv from "public" as "solweb";

create sequence "cepele".se6236envarccompv increment by 1 start with 1 maxvalue 9999999999 minvalue 1 cache 10  order;
alter sequence "cepele".se6236envarccompv restart with 1116;

revoke all on "cepele".se6236envarccompv from "public" as "cepele";

create sequence "solweb".se6243emistarj increment by 1 start with 1 maxvalue 99 minvalue 1 cache 10  order;
alter sequence "solweb".se6243emistarj restart with 26;

revoke all on "solweb".se6243emistarj from "public" as "solweb";

create sequence "wgalinde".seauditoria6194 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wgalinde".seauditoria6194 restart with 25;

revoke all on "wgalinde".seauditoria6194 from "public" as "wgalinde";

create sequence "kaviles".sedecdet1673 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "kaviles".sedecdet1673 restart with 750000166;

revoke all on "kaviles".sedecdet1673 from "public" as "kaviles";

create sequence "kaviles".sedecdet1675 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "kaviles".sedecdet1675 restart with 750000114;

revoke all on "kaviles".sedecdet1675 from "public" as "kaviles";

create sequence "conweb".test_seq increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".test_seq restart with 28;

revoke all on "conweb".test_seq from "public" as "conweb";

create sequence "conweb".test_seq2 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".test_seq2 restart with 24;

revoke all on "conweb".test_seq2 from "public" as "conweb";

create sequence "conweb".test_seq3 increment by 1 start with 1 maxvalue 100 minvalue 0 cache 20  order;
alter sequence "conweb".test_seq3 restart with 24;

revoke all on "conweb".test_seq3 from "public" as "conweb";

create sequence "conweb".test_seq4 increment by 1 start with 1 maxvalue 100 minvalue 1 cache 10  order;
alter sequence "conweb".test_seq4 restart with 24;

revoke all on "conweb".test_seq4 from "public" as "conweb";

create sequence "wgalinde".sett6231reconsiderac increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wgalinde".sett6231reconsiderac restart with 24;

revoke all on "wgalinde".sett6231reconsiderac from "public" as "wgalinde";

create sequence "wgalinde".set6231reconsiderac increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wgalinde".set6231reconsiderac restart with 411;

revoke all on "wgalinde".set6231reconsiderac from "public" as "wgalinde";

create sequence "wgalinde".set10identificarecon increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wgalinde".set10identificarecon restart with 36;

revoke all on "wgalinde".set10identificarecon from "public" as "wgalinde";

create sequence "wgalinde".set10transarecon increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "wgalinde".set10transarecon restart with 36;

revoke all on "wgalinde".set10transarecon from "public" as "wgalinde";

create sequence "informix".seorpe4458 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seorpe4458 restart with 31;

revoke all on "informix".seorpe4458 from "public" as "informix";

create sequence "informix".seorpe4459 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seorpe4459 restart with 1082;

revoke all on "informix".seorpe4459 from "public" as "informix";

create sequence "informix".seorpe4468 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seorpe4468 restart with 5471;

revoke all on "informix".seorpe4468 from "public" as "informix";

create sequence "informix".seorpe4471 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seorpe4471 restart with 547;

revoke all on "informix".seorpe4471 from "public" as "informix";

create sequence "informix".seorpe4474 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seorpe4474 restart with 564;

revoke all on "informix".seorpe4474 from "public" as "informix";

create sequence "informix".seorpe4476 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seorpe4476 restart with 3000272;

revoke all on "informix".seorpe4476 from "public" as "informix";

create sequence "informix".seorpe4476cir increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seorpe4476cir restart with 1078;

revoke all on "informix".seorpe4476cir from "public" as "informix";

create sequence "informix".secabsolicitud001 increment by 1 start with 1 maxvalue 999999999999999999 minvalue 0 nocache  noorder;
alter sequence "informix".secabsolicitud001 restart with 139;

revoke all on "informix".secabsolicitud001 from "public" as "informix";

create sequence "informix".sercorsolicitudes increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".sercorsolicitudes restart with 351;

revoke all on "informix".sercorsolicitudes from "public" as "informix";

create sequence "informix".sedatadjcausal001 increment by 1 start with 1 maxvalue 999999999999999999 minvalue 0 nocache  noorder;
alter sequence "informix".sedatadjcausal001 restart with 148;

revoke all on "informix".sedatadjcausal001 from "public" as "informix";

create sequence "informix".sehistosoldes001 increment by 1 start with 1 maxvalue 999999999999999999 minvalue 0 nocache  noorder;
alter sequence "informix".sehistosoldes001 restart with 269;

revoke all on "informix".sehistosoldes001 from "public" as "informix";

create sequence "informix".seorpe4470 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "informix".seorpe4470 restart with 344;

revoke all on "informix".seorpe4470 from "public" as "informix";

create sequence "conweb".sefatca increment by 1 maxvalue 99999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sefatca restart with 103;

revoke all on "conweb".sefatca from "public" as "conweb";

create sequence "conweb".secontrol increment by 1 start with 1 maxvalue 9999999 minvalue 1 cache 20  order;
alter sequence "conweb".secontrol restart with 92;

revoke all on "conweb".secontrol from "public" as "conweb";

create sequence "mvenero".seqnotifproceso increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "mvenero".seqnotifproceso restart with 12;

revoke all on "mvenero".seqnotifproceso from "public" as "mvenero";

create sequence "mvenero".seqnotifplantilla increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "mvenero".seqnotifplantilla restart with 10;

revoke all on "mvenero".seqnotifplantilla from "public" as "mvenero";

create sequence "mvenero".seqnotifpedido increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "mvenero".seqnotifpedido restart with 2531;

revoke all on "mvenero".seqnotifpedido from "public" as "mvenero";

create sequence "conweb".sedecint0701 increment by 1 maxvalue 999999999 minvalue 5000000 nocache  noorder;
alter sequence "conweb".sedecint0701 restart with 5000020;

revoke all on "conweb".sedecint0701 from "public" as "conweb";

create sequence "solweb".sebajaoficio increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "solweb".sebajaoficio restart with 363;

revoke all on "solweb".sebajaoficio from "public" as "solweb";

create sequence "conweb".seaudconscpews increment by 1 maxvalue 99999999 minvalue 1 nocache  noorder;
alter sequence "conweb".seaudconscpews restart with 68;

revoke all on "conweb".seaudconscpews from "public" as "conweb";

create sequence "conweb".sedecdet0701 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "conweb".sedecdet0701 restart with 750000522;

revoke all on "conweb".sedecdet0701 from "public" as "conweb";

create sequence "solweb".se6402nbe increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "solweb".se6402nbe restart with 26;

revoke all on "solweb".se6402nbe from "public" as "solweb";

create sequence "informix".sedecdet0621e increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "informix".sedecdet0621e restart with 21;

revoke all on "informix".sedecdet0621e from "public" as "informix";

create sequence "solweb".set5793bien increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "solweb".set5793bien restart with 899;

revoke all on "solweb".set5793bien from "public" as "solweb";

create sequence "solweb".set5802itembien increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "solweb".set5802itembien restart with 1768;

revoke all on "solweb".set5802itembien from "public" as "solweb";

create sequence "qn84".sesicobfrenov2015 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn84".sesicobfrenov2015 restart with 100;

revoke all on "qn84".sesicobfrenov2015 from "public" as "qn84";

create sequence "qn84".sesicobfrenov2016 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn84".sesicobfrenov2016 restart with 17;

revoke all on "qn84".sesicobfrenov2016 from "public" as "qn84";

create sequence "qn84".sesicobfrenov2017 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn84".sesicobfrenov2017 restart with 17;

revoke all on "qn84".sesicobfrenov2017 from "public" as "qn84";

create sequence "qn84".sesicobfrenov2018 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "qn84".sesicobfrenov2018 restart with 17;

revoke all on "qn84".sesicobfrenov2018 from "public" as "qn84";

create sequence "kaviles".sedeclaracion increment by 1 start with 110000001 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "kaviles".sedeclaracion restart with 110795907;

revoke all on "kaviles".sedeclaracion from "public" as "kaviles";

create sequence "kaviles".secuponera increment by 1 start with 210000001 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "kaviles".secuponera restart with 210792681;

revoke all on "kaviles".secuponera from "public" as "kaviles";

create sequence "conweb".set6493 increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".set6493 restart with 148;

revoke all on "conweb".set6493 from "public" as "conweb";

create sequence "conweb".sedecinf1670 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sedecinf1670 restart with 159;

revoke all on "conweb".sedecinf1670 from "public" as "conweb";

create sequence "kaviles".testing11 increment by 1 maxvalue 999999999999999999 minvalue 100 nocache  noorder;
alter sequence "kaviles".testing11 restart with 126;

revoke all on "kaviles".testing11 from "public" as "kaviles";

create sequence "conweb".sesorteo increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sesorteo restart with 22;

revoke all on "conweb".sesorteo from "public" as "conweb";

create sequence "conweb".segrupopremio increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".segrupopremio restart with 17;

revoke all on "conweb".segrupopremio from "public" as "conweb";

create sequence "conweb".sepremio increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sepremio restart with 17;

revoke all on "conweb".sepremio from "public" as "conweb";

create sequence "conweb".sehistorial increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sehistorial restart with 17;

revoke all on "conweb".sehistorial from "public" as "conweb";

create sequence "informix".se6029pddp increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "informix".se6029pddp restart with 274;

revoke all on "informix".se6029pddp from "public" as "informix";

create sequence "informix".se6033pae increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "informix".se6033pae restart with 302;

revoke all on "informix".se6033pae from "public" as "informix";

create sequence "informix".se6039ipd increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "informix".se6039ipd restart with 7361;

revoke all on "informix".se6039ipd from "public" as "informix";

create sequence "conweb".seidconsdon increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidconsdon restart with 222;

revoke all on "conweb".seidconsdon from "public" as "conweb";

create sequence "conweb".seidaplidon increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidaplidon restart with 224;

revoke all on "conweb".seidaplidon from "public" as "conweb";

create sequence "conweb".seiddetdon increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seiddetdon restart with 27965;

revoke all on "conweb".seiddetdon from "public" as "conweb";

create sequence "conweb".selcpostu increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".selcpostu restart with 291;

revoke all on "conweb".selcpostu from "public" as "conweb";

create sequence "solweb".seqevexpvirtual increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevexpvirtual restart with 6421;

revoke all on "solweb".seqevexpvirtual from "public" as "solweb";

create sequence "solweb".seqevobs increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevobs restart with 265;

revoke all on "solweb".seqevobs from "public" as "solweb";

create sequence "solweb".seqevpedrep increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevpedrep restart with 487;

revoke all on "solweb".seqevpedrep from "public" as "solweb";

create sequence "solweb".seqevplanti increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevplanti restart with 596;

revoke all on "solweb".seqevplanti from "public" as "solweb";

create sequence "solweb".seqevrepdoc increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevrepdoc restart with 4351;

revoke all on "solweb".seqevrepdoc from "public" as "solweb";

create sequence "solweb".seqevrepexp increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevrepexp restart with 453;

revoke all on "solweb".seqevrepexp from "public" as "solweb";

create sequence "solweb".seqevrepped increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevrepped restart with 427;

revoke all on "solweb".seqevrepped from "public" as "solweb";

create sequence "solweb".seqevrequerim increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevrequerim restart with 453;

revoke all on "solweb".seqevrequerim from "public" as "solweb";

create sequence "solweb".seqevrespons increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevrespons restart with 6529;

revoke all on "solweb".seqevrespons from "public" as "solweb";

create sequence "solweb".seqevseguim increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevseguim restart with 30495;

revoke all on "solweb".seqevseguim from "public" as "solweb";

create sequence "conweb".set6571percepcion increment by 1 start with 1 maxvalue 99999 minvalue 1 cycle nocache  order;
alter sequence "conweb".set6571percepcion restart with 71;

revoke all on "conweb".set6571percepcion from "public" as "conweb";

create sequence "solweb".seqevdocum increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevdocum restart with 12700;

revoke all on "solweb".seqevdocum from "public" as "solweb";

create sequence "conweb".seaduanasrem increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".seaduanasrem restart with 163;

revoke all on "conweb".seaduanasrem from "public" as "conweb";

create sequence "conweb".setributosintrem increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".setributosintrem restart with 389;

revoke all on "conweb".setributosintrem from "public" as "conweb";

create sequence "conweb".seprocessinterem increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".seprocessinterem restart with 123;

revoke all on "conweb".seprocessinterem from "public" as "conweb";

create sequence "conweb".seordenvisarem increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".seordenvisarem restart with 439;

revoke all on "conweb".seordenvisarem from "public" as "conweb";

create sequence "conweb".set5791acta increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".set5791acta restart with 7128;

revoke all on "conweb".set5791acta from "public" as "conweb";

create sequence "conweb".set5795convoca increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".set5795convoca restart with 769;

revoke all on "conweb".set5795convoca from "public" as "conweb";

create sequence "conweb".set5792asiper increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".set5792asiper restart with 32;

revoke all on "conweb".set5792asiper from "public" as "conweb";

create sequence "conweb".set5808perito increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".set5808perito restart with 929;

revoke all on "conweb".set5808perito from "public" as "conweb";

create sequence "conweb".set5794bienmov increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "conweb".set5794bienmov restart with 3525;

revoke all on "conweb".set5794bienmov from "public" as "conweb";

create sequence "solweb".set5805obsliq increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "solweb".set5805obsliq restart with 79;

revoke all on "solweb".set5805obsliq from "public" as "solweb";

create sequence "conweb".sedecinf1614 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sedecinf1614 restart with 98;

revoke all on "conweb".sedecinf1614 from "public" as "conweb";

create sequence "conweb".seidcanobt increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidcanobt restart with 21298;

revoke all on "conweb".seidcanobt from "public" as "conweb";

create sequence "conweb".seidcretra increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidcretra restart with 104;

revoke all on "conweb".seidcretra from "public" as "conweb";

create sequence "conweb".seiddesmanual increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seiddesmanual restart with 33;

revoke all on "conweb".seiddesmanual from "public" as "conweb";

create sequence "fmestas".sedecinf1679 increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "fmestas".sedecinf1679 restart with 117;

revoke all on "fmestas".sedecinf1679 from "public" as "fmestas";

create sequence "solweb".sercdepecentral increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "solweb".sercdepecentral restart with 808;

revoke all on "solweb".sercdepecentral from "public" as "solweb";

create sequence "conweb".sehistverifsecp increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sehistverifsecp restart with 176;

revoke all on "conweb".sehistverifsecp from "public" as "conweb";

create sequence "conweb".serestverifsecp increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".serestverifsecp restart with 183;

revoke all on "conweb".serestverifsecp from "public" as "conweb";

create sequence "conweb".sehistarchsecp increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sehistarchsecp restart with 17;

revoke all on "conweb".sehistarchsecp from "public" as "conweb";

create sequence "vmendiet".seobltriaeid increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seobltriaeid restart with 536;

revoke all on "vmendiet".seobltriaeid from "public" as "vmendiet";

create sequence "vmendiet".seobltriae increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seobltriae restart with 111;

revoke all on "vmendiet".seobltriae from "public" as "vmendiet";

create sequence "vmendiet".seliqimpaeid increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seliqimpaeid restart with 18;

revoke all on "vmendiet".seliqimpaeid from "public" as "vmendiet";

create sequence "kaviles".sespredio increment by 1 start with 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "kaviles".sespredio restart with 33247;

revoke all on "kaviles".sespredio from "public" as "kaviles";

create sequence "kaviles".secvpr increment by 1 start with 21 maxvalue 999999999999999999 minvalue 21 nocache  noorder;
alter sequence "kaviles".secvpr restart with 41;

revoke all on "kaviles".secvpr from "public" as "kaviles";

create sequence "mvenero".seqnotifresponsable increment by 1 maxvalue 999999999999999999 minvalue 26 nocache  noorder;
alter sequence "mvenero".seqnotifresponsable restart with 376;

revoke all on "mvenero".seqnotifresponsable from "public" as "mvenero";

create sequence "kaviles".sedecdet0702 increment by 1 maxvalue 899999999 minvalue 750000001 nocache  noorder;
alter sequence "kaviles".sedecdet0702 restart with 750000105;

revoke all on "kaviles".sedecdet0702 from "public" as "kaviles";

create sequence "conweb".secanpresencialsqs increment by 1 start with 100913413 maxvalue 999999999 minvalue 100913413 cycle nocache  order;
alter sequence "conweb".secanpresencialsqs restart with 100913471;

revoke all on "conweb".secanpresencialsqs from "public" as "conweb";

create sequence "conweb".sedecint0015 increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sedecint0015 restart with 52;

revoke all on "conweb".sedecint0015 from "public" as "conweb";

create sequence "kaviles".secomprob increment by 1 start with 1000 maxvalue 9223372036854775807 minvalue 1 cache 20  noorder;
alter sequence "kaviles".secomprob restart with 1044;

revoke all on "kaviles".secomprob from "public" as "kaviles";

create sequence "conweb".sesigart5174 increment by 1 start with 1 maxvalue 9999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5174 restart with 48;

revoke all on "conweb".sesigart5174 from "public" as "conweb";

create sequence "conweb".sesigart5178 increment by 1 start with 1 maxvalue 999999999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5178 restart with 15097;

revoke all on "conweb".sesigart5178 from "public" as "conweb";

create sequence "conweb".sesigart5177 increment by 1 start with 1 maxvalue 999999999999999 minvalue 1 cycle nocache  order;
alter sequence "conweb".sesigart5177 restart with 2279;

revoke all on "conweb".sesigart5177 from "public" as "conweb";

create sequence "vmendiet".seqform1694id increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seqform1694id restart with 45;

revoke all on "vmendiet".seqform1694id from "public" as "vmendiet";

create sequence "vmendiet".seqform1694 increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seqform1694 restart with 103;

revoke all on "vmendiet".seqform1694 from "public" as "vmendiet";

create sequence "solweb".seqevdetplanti increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevdetplanti restart with 5378;

revoke all on "solweb".seqevdetplanti from "public" as "solweb";

create sequence "solweb".set7011condiciondomi increment by 1 start with 1 maxvalue 9999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".set7011condiciondomi restart with 561;

revoke all on "solweb".set7011condiciondomi from "public" as "solweb";

create sequence "solweb".set7013hisconddomi increment by 1 start with 1 maxvalue 9999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".set7013hisconddomi restart with 572;

revoke all on "solweb".set7013hisconddomi from "public" as "solweb";

create sequence "solweb".set7012arrendador increment by 1 start with 1 maxvalue 9999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".set7012arrendador restart with 362;

revoke all on "solweb".set7012arrendador from "public" as "solweb";

create sequence "solweb".set7009preconddomi increment by 1 start with 1 maxvalue 9999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".set7009preconddomi restart with 283;

revoke all on "solweb".set7009preconddomi from "public" as "solweb";

create sequence "solweb".set7010prearrendador increment by 1 start with 1 maxvalue 9999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".set7010prearrendador restart with 84;

revoke all on "solweb".set7010prearrendador from "public" as "solweb";

create sequence "conweb".sqqz91cargat increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sqqz91cargat restart with 72;

revoke all on "conweb".sqqz91cargat from "public" as "conweb";

create sequence "conweb".sqqz91liquid increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sqqz91liquid restart with 21115;

revoke all on "conweb".sqqz91liquid from "public" as "conweb";

create sequence "conweb".sqqz91detalle increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sqqz91detalle restart with 546200;

revoke all on "conweb".sqqz91detalle from "public" as "conweb";

create sequence "vmendiet".seq1692 increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "vmendiet".seq1692 restart with 39;

revoke all on "vmendiet".seq1692 from "public" as "vmendiet";

create sequence "jmendiet".set7163indriesgo increment by 1 start with 1 maxvalue 9999999999999 minvalue 0 nocache  noorder;
alter sequence "jmendiet".set7163indriesgo restart with 1010;

revoke all on "jmendiet".set7163indriesgo from "public" as "jmendiet";

create sequence "conweb".seidconscir increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidconscir restart with 262;

revoke all on "conweb".seidconscir from "public" as "conweb";

create sequence "conweb".seidsustento increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidsustento restart with 175126;

revoke all on "conweb".seidsustento from "public" as "conweb";

create sequence "conweb".seiddocadj increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seiddocadj restart with 548;

revoke all on "conweb".seiddocadj from "public" as "conweb";

create sequence "eyataco".secjsoxxx increment by 1 maxvalue 999999999999999999 minvalue 1 nocache  noorder;
alter sequence "eyataco".secjsoxxx restart with 17;

revoke all on "eyataco".secjsoxxx from "public" as "eyataco";

create sequence "conweb".seidevalsustento increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidevalsustento restart with 155;

revoke all on "conweb".seidevalsustento from "public" as "conweb";

create sequence "conweb".seidpedidolf increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidpedidolf restart with 65;

revoke all on "conweb".seidpedidolf from "public" as "conweb";

create sequence "solweb".seqevdocadi increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevdocadi restart with 177;

revoke all on "solweb".seqevdocadi from "public" as "solweb";

create sequence "solweb".set5802itembientributos increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "solweb".set5802itembientributos restart with 3434;

revoke all on "solweb".set5802itembientributos from "public" as "solweb";

create sequence "solweb".set5802itembienaduana increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "solweb".set5802itembienaduana restart with 35;

revoke all on "solweb".set5802itembienaduana from "public" as "solweb";

create sequence "conweb".seidestevaluacion increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".seidestevaluacion restart with 136;

revoke all on "conweb".seidestevaluacion from "public" as "conweb";

create sequence "solweb".set5806oferlote increment by 1 start with 1190 maxvalue 9999999999999 minvalue 1190 cache 10  order;
alter sequence "solweb".set5806oferlote restart with 1231;

revoke all on "solweb".set5806oferlote from "public" as "solweb";

create sequence "conweb".sesigart5208 increment by 1 start with 1 maxvalue 9999999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigart5208 restart with 4;

revoke all on "conweb".sesigart5208 from "public" as "conweb";

create sequence "conweb".sesigarp increment by 1 start with 1 maxvalue 99 minvalue 0 nocache  noorder;
alter sequence "conweb".sesigarp restart with 14;

revoke all on "conweb".sesigarp from "public" as "conweb";

create sequence "conweb".sedescargainfo increment by 1 start with 1 maxvalue 99999999999 minvalue 0 nocache  noorder;
alter sequence "conweb".sedescargainfo restart with 4;

revoke all on "conweb".sedescargainfo from "public" as "conweb";

create sequence "conweb".seqmoddev increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "conweb".seqmoddev restart with 7;

revoke all on "conweb".seqmoddev from "public" as "conweb";

create sequence "conweb".sec_codigolibros increment by 1 maxvalue 999999 minvalue 1 cache 20  order;
alter sequence "conweb".sec_codigolibros restart with 4;

revoke all on "conweb".sec_codigolibros from "public" as "conweb";

create sequence "solweb".seqevrepimp increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevrepimp restart with 225;

revoke all on "solweb".seqevrepimp from "public" as "solweb";

create sequence "solweb".seqevsegrepi increment by 1 start with 1 maxvalue 999999999999999 minvalue 0 nocache  noorder;
alter sequence "solweb".seqevsegrepi restart with 65;

revoke all on "solweb".seqevsegrepi from "public" as "solweb";

create sequence "mtomayll".sena57 increment by 1 maxvalue 89999 minvalue 80001 nocache  noorder;
alter sequence "mtomayll".sena57 restart with 80003;

revoke all on "mtomayll".sena57 from "public" as "mtomayll";

create sequence "mtomayll".serr57 increment by 1 maxvalue 99999 minvalue 1 nocache  noorder;
alter sequence "mtomayll".serr57 restart with 3;

revoke all on "mtomayll".serr57 from "public" as "mtomayll";

create sequence "solweb".secourierdepecentral increment by 1 start with 1 maxvalue 9999999999999 minvalue 1 cache 10  order;
alter sequence "solweb".secourierdepecentral restart with 35;

revoke all on "solweb".secourierdepecentral from "public" as "solweb";

create sequence "conweb".sedecdet0704 increment by 1 maxvalue 999999999 minvalue 1 nocache  noorder;
alter sequence "conweb".sedecdet0704 restart with 1;

revoke all on "conweb".sedecdet0704 from "public" as "conweb";

create sequence "conweb".sefv1670codsecacc increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecacc restart with 49;

revoke all on "conweb".sefv1670codsecacc from "public" as "conweb";

create sequence "conweb".sefv1670codsecaso increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecaso restart with 23;

revoke all on "conweb".sefv1670codsecaso from "public" as "conweb";

create sequence "conweb".sefv1670codseccredoto increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codseccredoto restart with 34;

revoke all on "conweb".sefv1670codseccredoto from "public" as "conweb";

create sequence "conweb".sefv1670codseccredres increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codseccredres restart with 1;

revoke all on "conweb".sefv1670codseccredres from "public" as "conweb";

create sequence "conweb".sefv1670numdecla increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670numdecla restart with 97;

revoke all on "conweb".sefv1670numdecla from "public" as "conweb";

create sequence "conweb".sefv1670codsecdep increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecdep restart with 59;

revoke all on "conweb".sefv1670codsecdep from "public" as "conweb";

create sequence "conweb".sefv1670codsecdin increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecdin restart with 81;

revoke all on "conweb".sefv1670codsecdin from "public" as "conweb";

create sequence "conweb".sefv1670codsecfid increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecfid restart with 38;

revoke all on "conweb".sefv1670codsecfid from "public" as "conweb";

create sequence "conweb".sefv1670codsecfon increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecfon restart with 40;

revoke all on "conweb".sefv1670codsecfon from "public" as "conweb";

create sequence "conweb".sefv1670codsecpar increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecpar restart with 51;

revoke all on "conweb".sefv1670codsecpar from "public" as "conweb";

create sequence "conweb".sefv1670codsecpre increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecpre restart with 57;

revoke all on "conweb".sefv1670codsecpre from "public" as "conweb";

create sequence "conweb".sefv1670codsectar increment by 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsectar restart with 21;

revoke all on "conweb".sefv1670codsectar from "public" as "conweb";

create sequence "conweb".sefv1670codsecveh increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codsecveh restart with 46;

revoke all on "conweb".sefv1670codsecveh from "public" as "conweb";

create sequence "conweb".sefv1670codpartempext increment by 1 start with 1 maxvalue 9223372036854775807 minvalue 1 cache 20  order;
alter sequence "conweb".sefv1670codpartempext restart with 4;

revoke all on "conweb".sefv1670codpartempext from "public" as "conweb";


create synonym "eyataco".se5768dir_1 for "solweb".se5768dir;

create procedure "conweb".gengemaseq()
returning integer;

DEFINE secuencia integer;

select SEGEMADETTXT.nextval INTO secuencia
from DUAL;

return secuencia;
end procedure;

CREATE FUNCTION "solweb".genavisoseq()
RETURNING integer;

DEFINE secuencia integer;

LET secuencia = SET4320.nextval;

return secuencia;
end function;

CREATE FUNCTION "conweb".mrst69_genmensajeseq()
RETURNING integer;

DEFINE secuencia integer;

LET secuencia = SET4373.nextval;

return secuencia;
end function;

CREATE FUNCTION "conweb".mrst69_genconstanciaseq()
RETURNING integer;

DEFINE secuencia integer;

LET secuencia = SET4321.nextval;

return secuencia;
end function;

CREATE PROCEDURE "eyataco".sgs43_seq_notifped()
     RETURNING INTEGER;
{******************************************************************}
{
Descripcion    Retorna el nextval de la secuencia seqnotifpedido.
Parametros de Entrada
~~~~~~~~~~~~~~~~~~~~~
        Ninguna.
Parametros de Salida
~~~~~~~~~~~~~~~~~~~~
        li_secuencia        NEXTVAL de la secuencia. 
}

DEFINE li_secuencia integer;

SET OPTIMIZATION LOW;

SELECT seqnotifpedido.nextval INTO li_secuencia from DUAL;

RETURN li_secuencia;

END PROCEDURE;

CREATE PROCEDURE "solweb".obtener_num_dir()
RETURNING INTEGER;
{*************************************************************************}

{**Creacion: Ysrael Nuñez: 09 Mayo 2016
   Objetivo: Obtener el secuencial de la tabla T5768DIRNORGEO

       Parametros.-
       Entrada:
                 Ninguno

       Salida:
                 li_num_dir: Número secuencial generado de la tabla T5768DIRNORGEO
**}

DEFINE li_num_dir INTEGER;

        SELECT SE5768DIR.NEXTVAL INTO li_num_dir
          FROM dual;

        RETURN li_num_dir;

END PROCEDURE;

CREATE PROCEDURE "solweb".obtener_sec_t7163()
RETURNING INTEGER;
{*************************************************************************}

{**Creacion: Ysrael Nuñez: 02 Junio 2016
   Objetivo: Obtener el secuencial de la tabla t7163indriesgo

       Parametros.-
       Entrada:
                 Ninguno

       Salida:
                 li_num_correl: Número secuencial generado de la tabla t7163indriesgo
**}

DEFINE li_num_correl INTEGER;

        SELECT set7163indriesgo.NEXTVAL INTO li_num_correl
      FROM dual;

    RETURN li_num_correl;

END PROCEDURE;

CREATE PROCEDURE "conweb".spseidsustento()
     RETURNING INTEGER;
{******************************************************************}
{
Descripcion    Retorna el nextval de la secuencia SEIDSUSTENTO.
Parametros de Entrada
~~~~~~~~~~~~~~~~~~~~~
        Ninguna.
Parametros de Salida
~~~~~~~~~~~~~~~~~~~~
        li_secuencia        NEXTVAL de la secuencia. 
}

DEFINE li_secuencia integer;

SET OPTIMIZATION LOW;

SELECT SEIDSUSTENTO.nextval INTO li_secuencia FROM dual;

RETURN li_secuencia;

END PROCEDURE;

CREATE PROCEDURE "rarroyo".spseidevalsustento()
     RETURNING INTEGER;
{******************************************************************}
{
Descripcion    Retorna el nextval de la secuencia SEIDEVALSUSTENTO.
Parametros de Entrada
~~~~~~~~~~~~~~~~~~~~~
        Ninguna.
Parametros de Salida
~~~~~~~~~~~~~~~~~~~~
        li_secuencia        NEXTVAL de la secuencia.
}

DEFINE li_secuencia integer;

SET OPTIMIZATION LOW;

SELECT SEIDEVALSUSTENTO.nextval INTO li_secuencia FROM dual;

RETURN li_secuencia;

END PROCEDURE;

CREATE PROCEDURE "rarroyo".spseidpedidolf()
     RETURNING INTEGER;
{******************************************************************}
{
Descripcion    Retorna el nextval de la secuencia SEIDPEDIDOLF.
Parametros de Entrada
~~~~~~~~~~~~~~~~~~~~~
        Ninguna.
Parametros de Salida
~~~~~~~~~~~~~~~~~~~~
        li_secuencia        NEXTVAL de la secuencia.
}

DEFINE li_secuencia integer;

SET OPTIMIZATION LOW;

SELECT SEIDPEDIDOLF.nextval INTO li_secuencia FROM dual;

RETURN li_secuencia;

END PROCEDURE;


create procedure "conweb".spactualizaseq()
define valorsecuencia bigint;
define req varchar(228);
select nvl(max(cod_seq_calendario*1),0)+1 into valorsecuencia from bdsigar:t5198calendartrans;
let req = 'alter sequence sesigart5198 restart with '||valorsecuencia||' increment by 1 maxvalue 99999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_seq_barras*1),0)+1 into valorsecuencia from bdsigar:t5210etiquetatrans;
let req = 'alter sequence sesigart5210 restart with '||valorsecuencia||' increment by 1 maxvalue 99999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(num_turno*1),0)+1 into valorsecuencia from bdsigar:t5166turnodig;
let req = 'alter sequence sesigart5166 restart with '||valorsecuencia||' increment by 1 maxvalue 9999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_sesion*1),0)+1 into valorsecuencia from bdsigar:t5163sesiondig;
let req = 'alter sequence sesigart5163 restart with '||valorsecuencia||' increment by 1 maxvalue 9999999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_loteproceso*1),0)+1 into valorsecuencia from bdsigar:t5156loteproceso;
let req = 'alter sequence sesigart5156 restart with '||valorsecuencia||' increment by 1 maxvalue 999999999999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_incdig*1),0)+1 into valorsecuencia from bdsigar:t5169inciddig;
let req = 'alter sequence sesigart5169 restart with '||valorsecuencia||' increment by 1 maxvalue 99999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_tarjetacalibr*1),0)+1 into valorsecuencia from bdsigar:t5155tarjetacalibr;
let req = 'alter sequence sesigart5155 restart with '||valorsecuencia||' increment by 1 maxvalue 9999999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_confdig*1),0)+1 into valorsecuencia from bdsigar:t5152confdig;
let req = 'alter sequence sesigart5152 restart with '||valorsecuencia||' increment by 1 maxvalue 99999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_plantilla*1),0)+1 into valorsecuencia from bdsigar:t5151plantilla;
let req = 'alter sequence sesigart5151 restart with '||valorsecuencia||' increment by 1 maxvalue 9999999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_seq_ambi*1),0)+1 into valorsecuencia from bdsigar:t5217ambiente;
let req = 'alter sequence sesigart5217 restart with '||valorsecuencia||' increment by 1 maxvalue 999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_seq_estan*1),0)+1 into valorsecuencia from bdsigar:t5218estante;
let req = 'alter sequence sesigart5218 restart with '||valorsecuencia||' increment by 1 maxvalue 999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_seq_cuer*1),0)+1 into valorsecuencia from bdsigar:t5219cuerpo;
let req = 'alter sequence sesigart5219 restart with '||valorsecuencia||' increment by 1 maxvalue 999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
select nvl(max(cod_seq_niv*1),0)+1 into valorsecuencia from bdsigar:t5220nivel;
let req = 'alter sequence sesigart5220 restart with '||valorsecuencia||' increment by 1 maxvalue 999999 minvalue 0 nocycle nocache noorder;';
execute immediate req;
end procedure;


grant  execute on function "conweb".gengemaseq () to "fmestas" as "conweb";
grant  execute on function "conweb".gengemaseq () to "public" as "conweb";
grant  execute on function "conweb".gengemaseq () to "rarroyo" as "conweb";
grant  execute on function "solweb".genavisoseq () to "public" as "solweb";
grant  execute on function "conweb".mrst69_genmensajeseq () to "public" as "conweb";
grant  execute on function "conweb".mrst69_genconstanciaseq () to "public" as "conweb";
grant  execute on function "eyataco".sgs43_seq_notifped () to "public" as "eyataco";
grant  execute on function "conweb".spseidsustento () to "public" as "conweb";
revoke  execute on function "conweb".obtener_num_dir () from public as "solweb";
revoke  execute on function "conweb".obtener_sec_t7163 () from public as "solweb";
revoke  execute on procedure "conweb".spactualizaseq () from public as "conweb";
revoke  execute on function "conweb".spseidevalsustento () from public as "rarroyo";
revoke  execute on function "conweb".spseidpedidolf () from public as "rarroyo";

revoke usage on language SPL from public ;

grant usage on language SPL to public ;


grant select on "informix".seform0845 to "usbdseq" as "informix";
grant select on "informix".seform0845 to "usiacons" as "informix";
grant select on "informix".seform3596 to "public" as "informix";
grant select on "informix".set3260 to "public" as "informix";
grant select on "informix".set3261 to "public" as "informix";
grant select on "informix".set3262 to "public" as "informix";
grant select on "informix".set3263 to "public" as "informix";
grant select on "informix".sedevf49990011 to "public" as "informix";
grant select on "informix".sedevf49990021 to "public" as "informix";
grant select on "informix".sedevf49990023 to "public" as "informix";
grant select on "informix".sedevf49990051 to "public" as "informix";
grant select on "informix".sedevf49990053 to "public" as "informix";
grant select on "informix".sedevf49990061 to "public" as "informix";
grant select on "informix".sedevf49990063 to "public" as "informix";
grant select on "informix".sedevf49990071 to "public" as "informix";
grant select on "informix".sedevf49990073 to "public" as "informix";
grant select on "informix".sedevf49990081 to "public" as "informix";
grant select on "informix".sedevf49990083 to "public" as "informix";
grant select on "informix".sedevf49990091 to "public" as "informix";
grant select on "informix".sedevf49990093 to "public" as "informix";
grant select on "informix".sedevf49990101 to "public" as "informix";
grant select on "informix".sedevf49990103 to "public" as "informix";
grant select on "informix".sedevf49990111 to "public" as "informix";
grant select on "informix".sedevf49990113 to "public" as "informix";
grant select on "informix".sedevf49990121 to "public" as "informix";
grant select on "informix".sedevf49990123 to "public" as "informix";
grant select on "informix".sedevf49990131 to "public" as "informix";
grant select on "informix".sedevf49990133 to "public" as "informix";
grant select on "informix".sedevf49990141 to "public" as "informix";
grant select on "informix".sedevf49990143 to "public" as "informix";
grant select on "informix".sedevf49990151 to "public" as "informix";
grant select on "informix".sedevf49990153 to "public" as "informix";
grant select on "informix".sedevf49990161 to "public" as "informix";
grant select on "informix".sedevf49990163 to "public" as "informix";
grant select on "informix".sedevf49990171 to "public" as "informix";
grant select on "informix".sedevf49990173 to "public" as "informix";
grant select on "informix".sedevf49990181 to "public" as "informix";
grant select on "informix".sedevf49990183 to "public" as "informix";
grant select on "informix".sedevf49990191 to "public" as "informix";
grant select on "informix".sedevf49990193 to "public" as "informix";
grant select on "informix".sedevf49990211 to "public" as "informix";
grant select on "informix".sedevf49990213 to "public" as "informix";
grant select on "informix".sedevf4999lote to "public" as "informix";
grant select on "informix".sedevf4999corr to "public" as "informix";
grant select on "informix".sedevf49990223 to "public" as "informix";
grant select on "informix".seruc00111 to "usbdseq" as "informix";
grant select on "informix".seruc00211 to "usbdseq" as "informix";
grant select on "informix".seruc00231 to "usbdseq" as "informix";
grant select on "informix".seruc00511 to "usbdseq" as "informix";
grant select on "informix".seruc00531 to "usbdseq" as "informix";
grant select on "informix".seruc00611 to "usbdseq" as "informix";
grant select on "informix".seruc00631 to "usbdseq" as "informix";
grant select on "informix".seruc00711 to "usbdseq" as "informix";
grant select on "informix".seruc00731 to "usbdseq" as "informix";
grant select on "informix".seruc00811 to "usbdseq" as "informix";
grant select on "informix".seruc00831 to "usbdseq" as "informix";
grant select on "informix".seruc00911 to "usbdseq" as "informix";
grant select on "informix".seruc00931 to "usbdseq" as "informix";
grant select on "informix".seruc01011 to "usbdseq" as "informix";
grant select on "informix".seruc01031 to "usbdseq" as "informix";
grant select on "informix".seruc01111 to "usbdseq" as "informix";
grant select on "informix".seruc01131 to "usbdseq" as "informix";
grant select on "informix".seruc01211 to "usbdseq" as "informix";
grant select on "informix".seruc01231 to "usbdseq" as "informix";
grant select on "informix".seruc01311 to "usbdseq" as "informix";
grant select on "informix".seruc01331 to "usbdseq" as "informix";
grant select on "informix".seruc01411 to "usbdseq" as "informix";
grant select on "informix".seruc01431 to "usbdseq" as "informix";
grant select on "informix".seruc01511 to "usbdseq" as "informix";
grant select on "informix".seruc01531 to "usbdseq" as "informix";
grant select on "informix".seruc01611 to "usbdseq" as "informix";
grant select on "informix".seruc01631 to "usbdseq" as "informix";
grant select on "informix".seruc01711 to "usbdseq" as "informix";
grant select on "informix".seruc01731 to "usbdseq" as "informix";
grant select on "informix".seruc01811 to "usbdseq" as "informix";
grant select on "informix".seruc01831 to "usbdseq" as "informix";
grant select on "informix".seruc01911 to "usbdseq" as "informix";
grant select on "informix".seruc01931 to "usbdseq" as "informix";
grant select on "informix".seruc02011 to "usbdseq" as "informix";
grant select on "informix".seruc02031 to "usbdseq" as "informix";
grant select on "informix".seruc02111 to "usbdseq" as "informix";
grant select on "informix".seruc02131 to "usbdseq" as "informix";
grant select on "informix".seruc02231 to "usbdseq" as "informix";
grant select on "informix".seruc02331 to "usbdseq" as "informix";
grant select on "informix".seruc02431 to "usbdseq" as "informix";
grant select on "informix".seruc02531 to "usbdseq" as "informix";
grant select on "informix".seruc02631 to "usbdseq" as "informix";
grant select on "informix".seruc02731 to "usbdseq" as "informix";
grant select on "informix".seruc02831 to "usbdseq" as "informix";
grant select on "informix".seruc02931 to "usbdseq" as "informix";
grant select on "informix".seruc03031 to "usbdseq" as "informix";
grant select on "informix".seblobdata0 to "public" as "informix";
grant select on "informix".seform0004 to "public" as "informix";
grant select on "informix".seform0005 to "public" as "informix";
grant select on "informix".seform0007 to "public" as "informix";
grant select on "conweb".sedt02 to "public" as "conweb";
grant select on "conweb".sedt03 to "public" as "conweb";
grant select on "conweb".sedt09 to "public" as "conweb";
grant select on "conweb".sedt11 to "public" as "conweb";
grant select on "conweb".sedt68 to "public" as "conweb";
grant select on "conweb".sena02 to "public" as "conweb";
grant select on "conweb".sena03 to "public" as "conweb";
grant select on "conweb".sena09 to "public" as "conweb";
grant select on "conweb".sena11 to "public" as "conweb";
grant select on "conweb".sena18 to "public" as "conweb";
grant select on "conweb".sena98 to "public" as "conweb";
grant select on "conweb".serr02 to "public" as "conweb";
grant select on "conweb".serr03 to "public" as "conweb";
grant select on "conweb".serr09 to "public" as "conweb";
grant select on "conweb".serr11 to "public" as "conweb";
grant select on "conweb".serr18 to "public" as "conweb";
grant select on "conweb".serr98 to "public" as "conweb";
grant select on "conweb".seruc00001 to "public" as "conweb";
grant select on "conweb".seruc0000 to "public" as "conweb";
grant select on "conweb".secod3520 to "public" as "conweb";
grant select on "solweb".sereqacceso to "public" as "solweb";
grant select on "conweb".secp00613 to "public" as "conweb";
grant select on "conweb".secp00633 to "public" as "conweb";
grant select on "conweb".secpf0816 to "public" as "conweb";
grant select on "conweb".secpf0815 to "public" as "conweb";
grant select on "conweb".set3289 to "public" as "conweb";
grant select on "conweb".secod3500 to "usbdseq" as "conweb";
grant select on "conweb".secod3540 to "public" as "conweb";
grant select on "conweb".secobnope to "public" as "conweb";
grant select on "conweb".secobnenv to "public" as "conweb";
grant select on "conweb".sef1650 to "public" as "conweb";
grant select on "conweb".sef1651 to "public" as "conweb";
grant select on "conweb".set3302 to "public" as "conweb";
grant select on "solweb".seform0820 to "public" as "solweb";
grant select on "wcavalie".seform1648 to "public" as "wcavalie";
grant select on "conweb".secp00113 to "public" as "conweb";
grant select on "conweb".secp01933 to "public" as "conweb";
grant select on "conweb".se3530 to "public" as "conweb";
grant select on "conweb".secod3530 to "public" as "conweb";
grant select on "solweb".secp01713 to "public" as "solweb";
grant select on "solweb".secp01733 to "public" as "solweb";
grant select on "solweb".secp00713 to "public" as "solweb";
grant select on "solweb".secp00733 to "public" as "solweb";
grant select on "conweb".cod1692 to "public" as "conweb";
grant select on "conweb".secp00233 to "public" as "conweb";
grant select on "conweb".set3287 to "public" as "conweb";
grant select on "wcavalie".sefec1661 to "public" as "wcavalie";
grant select on "wcavalie".sefecnpres to "public" as "wcavalie";
grant select on "wcavalie".sefecpter to "public" as "wcavalie";
grant select on "conweb".segemadettxt to "asanche1" as "conweb";
grant select on "conweb".segemadettxt to "jsantill" as "conweb";
grant select on "conweb".segemadettxt to "public" as "conweb";
grant select on "conweb".seform3595 to "public" as "conweb";
grant select on "conweb".sena67 to "public" as "conweb";
grant select on "conweb".serr67 to "public" as "conweb";
grant select on "rmanriq1".secodconstrun to "public" as "rmanriq1";
grant select on "rmanriq1".senadtrtransp to "public" as "rmanriq1";
grant select on "conweb".set1975 to "public" as "conweb";
grant select on "conweb".set1974 to "public" as "conweb";
grant select on "wcavalie".sefec5011 to "public" as "wcavalie";
grant select on "conweb".seccpelec to "public" as "conweb";
grant select on "wcavalie".seform1683 to "public" as "wcavalie";
grant select on "wcavalie".sepresdecpag to "public" as "wcavalie";
grant select on "wcavalie".sepagodecpag to "public" as "wcavalie";
grant select on "conweb".sericardo2007 to "public" as "conweb";
grant select on "rmanriq1".seruc02511 to "public" as "rmanriq1";
grant select on "rmanriq1".seruc02511 to "usbdseq" as "rmanriq1";
grant select on "rmanriq1".secp02513 to "public" as "rmanriq1";
grant select on "rmanriq1".secp02513 to "usbdseq" as "rmanriq1";
grant select on "rmanriq1".secp02533 to "public" as "rmanriq1";
grant select on "rmanriq1".secp02533 to "usbdseq" as "rmanriq1";
grant select on "conweb".sericardo to "public" as "conweb";
grant select on "jvaldez".seblobdata1 to "public" as "jvaldez";
grant select on "wcavalie".sedt18 to "public" as "wcavalie";
grant select on "wcavalie".sedecdet0000 to "public" as "wcavalie";
grant select on "erett".sedevf49990251 to "public" as "erett";
grant select on "erett".sedevf49990253 to "public" as "erett";
grant select on "wcavalie".sedecdet0621 to "public" as "wcavalie";
grant select on "wcavalie".sedecdet0660 to "public" as "wcavalie";
grant select on "wcavalie".sedecdet0659 to "public" as "wcavalie";
grant select on "wcavalie".sedecdet0695 to "public" as "wcavalie";
grant select on "conweb".seform0051 to "public" as "conweb";
grant select on "wcavalie".sedecdet1609 to "public" as "wcavalie";
grant select on "wcavalie".sedecdet1690 to "public" as "wcavalie";
grant select on "wcavalie".sedecinft1776 to "public" as "wcavalie";
grant select on "wcavalie".sedecdet0625 to "public" as "wcavalie";
grant select on "wcavalie".sedecdet0626 to "public" as "wcavalie";
grant select on "erett".seform0052 to "public" as "erett";
grant select on "wcavalie".sedecdet0697 to "public" as "wcavalie";
grant select on "conweb".sedecdetm to "public" as "conweb";
grant select on "conweb".sedecbol1660 to "public" as "conweb";
grant select on "erett".sevicotb to "public" as "erett";
grant select on "erett".sevicotpesq to "public" as "erett";
grant select on "rmanriq1".sedecdetr to "public" as "rmanriq1";
grant select on "wcavalie".sedecdet0693 to "public" as "wcavalie";
grant select on "wcavalie".sedecdet0648 to "public" as "wcavalie";
grant select on "wcavalie".secfect1975 to "public" as "wcavalie";
grant select on "conweb".sedecinff1692 to "public" as "conweb";
grant select on "solweb".sevicota to "public" as "solweb";
grant select on "solweb".seform0050 to "public" as "solweb";
grant select on "vmendiet".seform1676 to "public" as "vmendiet";
grant select on "vmendiet".seform1620 to "public" as "vmendiet";
grant select on "vmendiet".seform1662 to "public" as "vmendiet";
grant select on "solweb".seccpelec2008 to "public" as "solweb";
grant select on "solweb".seccpelec2009 to "public" as "solweb";
grant select on "solweb".seccpelec2010 to "public" as "solweb";
grant select on "solweb".seccpelec2011 to "public" as "solweb";
grant select on "solweb".seccpelec2012 to "public" as "solweb";
grant select on "solweb".seccpelec2013 to "public" as "solweb";
grant select on "solweb".seccpelec2014 to "public" as "solweb";
grant select on "solweb".seccpelec2015 to "public" as "solweb";
grant select on "solweb".seccpelec2016 to "public" as "solweb";
grant select on "solweb".seccpelec2017 to "public" as "solweb";
grant select on "solweb".sedecdet0698 to "public" as "solweb";
grant select on "wcavalie".seform1686 to "public" as "wcavalie";
grant select on "wcavalie".serepform1686 to "public" as "wcavalie";
grant select on "vmendiet".seform to "public" as "vmendiet";
grant select on "conweb".set3681ann to "public" as "conweb";
grant select on "vmendiet".seformfrec to "public" as "vmendiet";
grant select on "vmendiet".seoperacion to "public" as "vmendiet";
grant select on "vmendiet".serequerimiento to "public" as "vmendiet";
grant select on "vmendiet".selogtra to "public" as "vmendiet";
grant select on "vmendiet".seform0600 to "public" as "vmendiet";
grant select on "vmendiet".seform0601 to "public" as "vmendiet";
grant select on "vmendiet".seform0605 to "public" as "vmendiet";
grant select on "vmendiet".seform0606 to "public" as "vmendiet";
grant select on "vmendiet".seform0610 to "public" as "vmendiet";
grant select on "vmendiet".seform0615 to "public" as "vmendiet";
grant select on "vmendiet".seform0616 to "public" as "vmendiet";
grant select on "vmendiet".seform0617 to "public" as "vmendiet";
grant select on "vmendiet".seform0618 to "public" as "vmendiet";
grant select on "vmendiet".seform0620 to "public" as "vmendiet";
grant select on "vmendiet".seform0625 to "public" as "vmendiet";
grant select on "vmendiet".seform0626 to "public" as "vmendiet";
grant select on "vmendiet".seform0629 to "public" as "vmendiet";
grant select on "vmendiet".seform0633 to "public" as "vmendiet";
grant select on "vmendiet".seform0634 to "public" as "vmendiet";
grant select on "vmendiet".seform0646 to "public" as "vmendiet";
grant select on "vmendiet".seform0647 to "public" as "vmendiet";
grant select on "vmendiet".seform0648 to "public" as "vmendiet";
grant select on "vmendiet".seform0651 to "public" as "vmendiet";
grant select on "vmendiet".seform0652 to "public" as "vmendiet";
grant select on "vmendiet".seform0653 to "public" as "vmendiet";
grant select on "vmendiet".seform0654 to "public" as "vmendiet";
grant select on "vmendiet".seform0655 to "public" as "vmendiet";
grant select on "vmendiet".seform0656 to "public" as "vmendiet";
grant select on "vmendiet".seform0657 to "public" as "vmendiet";
grant select on "vmendiet".seform0658 to "public" as "vmendiet";
grant select on "vmendiet".seform0659 to "public" as "vmendiet";
grant select on "vmendiet".seform0660 to "public" as "vmendiet";
grant select on "vmendiet".seform0672 to "public" as "vmendiet";
grant select on "vmendiet".seform0674 to "public" as "vmendiet";
grant select on "vmendiet".seform0675 to "public" as "vmendiet";
grant select on "vmendiet".seform0676 to "public" as "vmendiet";
grant select on "vmendiet".seform0677 to "public" as "vmendiet";
grant select on "vmendiet".seform0678 to "public" as "vmendiet";
grant select on "vmendiet".seform0679 to "public" as "vmendiet";
grant select on "vmendiet".seform0680 to "public" as "vmendiet";
grant select on "vmendiet".seform0685 to "public" as "vmendiet";
grant select on "vmendiet".seform0688 to "public" as "vmendiet";
grant select on "vmendiet".seform0690 to "public" as "vmendiet";
grant select on "vmendiet".seform0693 to "public" as "vmendiet";
grant select on "vmendiet".seform0694 to "public" as "vmendiet";
grant select on "vmendiet".seform0695 to "public" as "vmendiet";
grant select on "vmendiet".seform0697 to "public" as "vmendiet";
grant select on "vmendiet".seform0698 to "public" as "vmendiet";
grant select on "conweb".set3671 to "public" as "conweb";
grant select on "conweb".set3671ann to "public" as "conweb";
grant select on "conweb".set3673 to "public" as "conweb";
grant select on "conweb".set3674 to "public" as "conweb";
grant select on "conweb".set3674ann to "public" as "conweb";
grant select on "conweb".set3678 to "public" as "conweb";
grant select on "conweb".set3678ann to "public" as "conweb";
grant select on "conweb".set3681 to "public" as "conweb";
grant select on "conweb".set3684 to "public" as "conweb";
grant select on "conweb".sedevf1649nord to "public" as "conweb";
grant select on "jtaipe".sedecdet0661 to "public" as "jtaipe";
grant select on "jtaipe".sedecdet0662 to "public" as "jtaipe";
grant select on "solweb".searchregminen to "public" as "solweb";
grant select on "wcavalie".secod3545 to "public" as "wcavalie";
grant select on "solweb".seomsustmerc to "public" as "solweb";
grant select on "solweb".seform0003 to "public" as "solweb";
grant select on "solweb".seommaquinas to "public" as "solweb";
grant select on "solweb".seform0008 to "public" as "solweb";
grant select on "solweb".seform0009 to "public" as "solweb";
grant select on "solweb".set3880 to "public" as "solweb";
grant select on "conweb".set3870 to "public" as "conweb";
grant select on "conweb".set3870ann to "public" as "conweb";
grant select on "conweb".set3871 to "public" as "conweb";
grant select on "conweb".set3871ann to "public" as "conweb";
grant select on "conweb".set3875 to "public" as "conweb";
grant select on "conweb".set3875ann to "public" as "conweb";
grant select on "conweb".set3878 to "public" as "conweb";
grant select on "conweb".set3878ann to "public" as "conweb";
grant select on "conweb".set3876 to "public" as "conweb";
grant select on "solweb".seform0013 to "public" as "solweb";
grant select on "solweb".set3886 to "public" as "solweb";
grant select on "conweb".set3861 to "public" as "conweb";
grant select on "wcavalie".secod0686 to "public" as "wcavalie";
grant select on "vmendiet".seform1610 to "public" as "vmendiet";
grant select on "wcavalie".seform1607 to "public" as "wcavalie";
grant select on "vmendiet".sedecdet1611 to "public" as "vmendiet";
grant select on "vmendiet".sedecdet1610 to "public" as "vmendiet";
grant select on "vmendiet".sedecdet1662 to "public" as "vmendiet";
grant select on "vmendiet".sedecdet1683 to "public" as "vmendiet";
grant select on "vmendiet".sedecdet1672 to "public" as "vmendiet";
grant select on "vmendiet".sedecdet1676 to "public" as "vmendiet";
grant select on "vmendiet".sedecdet1620 to "public" as "vmendiet";
grant select on "solweb".cod1697 to "public" as "solweb";
grant select on "solweb".cod0686 to "public" as "solweb";
grant select on "solweb".x001697 to "public" as "solweb";
grant select on "wcavalie".senovrecfex to "public" as "wcavalie";
grant select on "vmendiet".sedecdet1688 to "public" as "vmendiet";
grant select on "vmendiet".sedecdet1663 to "public" as "vmendiet";
grant select on "conweb".seqf0201pdb to "public" as "conweb";
grant select on "pchacali".sedecdet0601 to "public" as "pchacali";
grant select on "pchacali".sedecdet0615 to "public" as "pchacali";
grant select on "pchacali".sedecdet0616 to "public" as "pchacali";
grant select on "pchacali".sedecinf1630 to "public" as "pchacali";
grant select on "pchacali".sedecdet3530 to "public" as "pchacali";
grant select on "rsandov1".sedecdet0686 to "public" as "rsandov1";
grant select on "rsandov1".seform1697 to "public" as "rsandov1";
grant select on "despinoz".seidt3904 to "public" as "despinoz";
grant select on "despinoz".seidt3905 to "public" as "despinoz";
grant select on "despinoz".seidt3906 to "public" as "despinoz";
grant select on "despinoz".seidt3907 to "public" as "despinoz";
grant select on "despinoz".seidt3908 to "public" as "despinoz";
grant select on "despinoz".seidt3909 to "public" as "despinoz";
grant select on "despinoz".seidt3910 to "public" as "despinoz";
grant select on "despinoz".seidt3911 to "public" as "despinoz";
grant select on "despinoz".seidt3914 to "public" as "despinoz";
grant select on "despinoz".seidt3915 to "public" as "despinoz";
grant select on "despinoz".seidt3916 to "public" as "despinoz";
grant select on "despinoz".seidt3917 to "public" as "despinoz";
grant select on "despinoz".seidt3918 to "public" as "despinoz";
grant select on "despinoz".seidt3919 to "public" as "despinoz";
grant select on "despinoz".seidt3920 to "public" as "despinoz";
grant select on "wcavalie".selibform0686 to "public" as "wcavalie";
grant select on "eespino3".seform1664 to "public" as "eespino3";
grant select on "eespino3".seform1665 to "public" as "eespino3";
grant select on "eespino3".sedecdet1664 to "public" as "eespino3";
grant select on "eespino3".sedecdet1664 to "usbbdseq" as "eespino3";
grant select on "eespino3".sedecdet1665 to "public" as "eespino3";
grant select on "eespino3".sedecdet1665 to "usbbdseq" as "eespino3";
grant select on "solweb".seidt3912 to "public" as "solweb";
grant select on "solweb".seidt3913 to "public" as "solweb";
grant select on "apastor".sedecdet0663 to "public" as "apastor";
grant select on "apastor".sedecdet0664 to "public" as "apastor";
grant select on "wgalinde".seflj1 to "public" as "wgalinde";
grant select on "wgalinde".seflj2 to "public" as "wgalinde";
grant select on "wgalinde".seflj3 to "public" as "wgalinde";
grant select on "wgalinde".seflj4 to "public" as "wgalinde";
grant select on "wgalinde".seflj5 to "public" as "wgalinde";
grant select on "wgalinde".seflj6 to "public" as "wgalinde";
grant select on "wgalinde".seflj7 to "public" as "wgalinde";
grant select on "lfernan3".seqenvmsj to "public" as "lfernan3";
grant select on "wcavalie".seseeidxml to "public" as "wcavalie";
grant select on "apastor".sena07 to "public" as "apastor";
grant select on "apastor".sedt07 to "public" as "apastor";
grant select on "apastor".serr07 to "public" as "apastor";
grant select on "johashi".secplepres to "conweb" as "johashi";
grant alter on "johashi".secplepres to "conweb" as "johashi";
grant select on "johashi".secplepres to "public" as "johashi";
grant select on "johashi".secplearchivo to "public" as "johashi";
grant select on "johashi".secplecontrol to "public" as "johashi";
grant select on "lfernan3".seqcorrdatosreg to "public" as "lfernan3";
grant select on "conweb".setarcre to "public" as "conweb";
grant select on "conweb".secconsdni to "public" as "conweb";
grant select on "vmendiet".seautposcua to "public" as "vmendiet";
grant select on "conweb".seq4320 to "public" as "conweb";
grant select on "conweb".set4320 to "public" as "conweb";
grant select on "conweb".seq5000 to "public" as "conweb";
grant select on "conweb".set5000 to "public" as "conweb";
grant select on "conweb".set5003 to "public" as "conweb";
grant select on "conweb".set4373 to "public" as "conweb";
grant select on "conweb".set4374 to "public" as "conweb";
grant select on "conweb".set4321 to "public" as "conweb";
grant select on "conweb".serp0023 to "public" as "conweb";
grant select on "mgabriel".searchopebanc to "public" as "mgabriel";
grant select on "mgabriel".secontopebanc to "public" as "mgabriel";
grant select on "mlimayll".sedecdet1666 to "public" as "mlimayll";
grant select on "rsandov1".sedecdet0667 to "public" as "rsandov1";
grant select on "rsandov1".sedecdet0668 to "public" as "rsandov1";
grant select on "wcavalie".sefelogs to "public" as "wcavalie";
grant select on "solweb".sert0071 to "public" as "solweb";
grant select on "solweb".serp0071 to "public" as "solweb";
grant select on "solweb".serp0011 to "public" as "solweb";
grant select on "solweb".serp0021 to "public" as "solweb";
grant select on "solweb".serp0051 to "public" as "solweb";
grant select on "solweb".serp0053 to "public" as "solweb";
grant select on "solweb".serp0061 to "public" as "solweb";
grant select on "solweb".serp0063 to "public" as "solweb";
grant select on "solweb".serp0073 to "public" as "solweb";
grant select on "solweb".serp0081 to "public" as "solweb";
grant select on "solweb".serp0083 to "public" as "solweb";
grant select on "solweb".serp0091 to "public" as "solweb";
grant select on "solweb".serp0093 to "public" as "solweb";
grant select on "solweb".serp0101 to "public" as "solweb";
grant select on "solweb".serp0103 to "public" as "solweb";
grant select on "solweb".serp0111 to "public" as "solweb";
grant select on "solweb".serp0113 to "public" as "solweb";
grant select on "solweb".serp0121 to "public" as "solweb";
grant select on "solweb".serp0123 to "public" as "solweb";
grant select on "solweb".serp0131 to "public" as "solweb";
grant select on "solweb".serp0133 to "public" as "solweb";
grant select on "solweb".serp0141 to "public" as "solweb";
grant select on "solweb".serp0143 to "public" as "solweb";
grant select on "solweb".serp0151 to "public" as "solweb";
grant select on "solweb".serp0153 to "public" as "solweb";
grant select on "solweb".serp0161 to "public" as "solweb";
grant select on "solweb".serp0163 to "public" as "solweb";
grant select on "solweb".serp0171 to "public" as "solweb";
grant select on "solweb".serp0173 to "public" as "solweb";
grant select on "solweb".serp0181 to "public" as "solweb";
grant select on "solweb".serp0183 to "public" as "solweb";
grant select on "solweb".serp0191 to "public" as "solweb";
grant select on "solweb".serp0193 to "public" as "solweb";
grant select on "solweb".serp0211 to "public" as "solweb";
grant select on "solweb".serp0213 to "public" as "solweb";
grant select on "solweb".serp0223 to "public" as "solweb";
grant select on "solweb".serp0251 to "public" as "solweb";
grant select on "solweb".serp0253 to "public" as "solweb";
grant select on "conweb".seorpe4394_tram to "public" as "conweb";
grant select on "conweb".seorpe4394 to "public" as "conweb";
grant select on "mgabriel".sepedidoproceso to "public" as "mgabriel";
grant select on "lrojas".seorpe4489 to "olaos" as "lrojas";
grant alter on "lrojas".seorpe4489 to "olaos" as "lrojas";
grant select on "lrojas".seorpe4489 to "public" as "lrojas";
grant select on "conweb".seqenviomascorrptll to "public" as "conweb";
grant select on "conweb".seqenviomasivocorr to "public" as "conweb";
grant select on "conweb".seqarchcorrmasivo to "public" as "conweb";
grant select on "apastor".sedecdet1661 to "public" as "apastor";
grant select on "conweb".sewsccsiaf01 to "public" as "conweb";
grant select on "conweb".sewsccsiaf02 to "public" as "conweb";
grant select on "apastor".sedecdet1607 to "public" as "apastor";
grant select on "solweb".searchdtrtransp to "public" as "solweb";
grant select on "mlimayll".cod0000 to "public" as "mlimayll";
grant select on "mlimayll".cod1648 to "public" as "mlimayll";
grant select on "mlimayll".cod1648 to "usbbdseq" as "mlimayll";
grant select on "mlimayll".se1696 to "public" as "mlimayll";
grant select on "mlimayll".se1696 to "usbbdseq" as "mlimayll";
grant select on "conweb".seorpe4469 to "public" as "conweb";
grant select on "lvenegas".sewapt1602 to "public" as "lvenegas";
grant select on "lluquego".seorpe439x to "public" as "lluquego";
grant select on "mvenero".secanvirconsolsqs to "public" as "mvenero";
grant select on "mvenero".secantelefonicosqs to "public" as "mvenero";
grant select on "mvenero".seoficiofisicosqs to "public" as "mvenero";
grant select on "mvenero".seoficiovirtualsqs to "public" as "mvenero";
grant select on "mvenero".seinformefisicosqs to "public" as "mvenero";
grant select on "mvenero".seinformevirtualsqs to "public" as "mvenero";
grant select on "apastor".sedecdet0633 to "public" as "apastor";
grant select on "conweb".set4676 to "public" as "conweb";
grant select on "lluquego".seorpexxx to "public" as "lluquego";
grant select on "lluquego".seorpe4395 to "public" as "lluquego";
grant select on "apastor".sedecdet0600 to "public" as "apastor";
grant select on "apastor".sedecdet0610 to "public" as "apastor";
grant select on "apastor".sedecdet0617 to "public" as "apastor";
grant select on "apastor".sedecdet0618 to "public" as "apastor";
grant select on "apastor".sedecdet0634 to "public" as "apastor";
grant select on "apastor".sedecdet0646 to "public" as "apastor";
grant select on "apastor".sedecdet0647 to "public" as "apastor";
grant select on "apastor".sedecdet0651 to "public" as "apastor";
grant select on "apastor".sedecdet0652 to "public" as "apastor";
grant select on "apastor".sedecdet0653 to "public" as "apastor";
grant select on "apastor".sedecdet0654 to "public" as "apastor";
grant select on "apastor".sedecdet0655 to "public" as "apastor";
grant select on "apastor".sedecdet0656 to "public" as "apastor";
grant select on "apastor".sedecdet0657 to "public" as "apastor";
grant select on "apastor".sedecdet0658 to "public" as "apastor";
grant select on "apastor".sedecdet0672 to "public" as "apastor";
grant select on "apastor".sedecdet0674 to "public" as "apastor";
grant select on "apastor".sedecdet0675 to "public" as "apastor";
grant select on "apastor".sedecdet0676 to "public" as "apastor";
grant select on "apastor".sedecdet0677 to "public" as "apastor";
grant select on "apastor".sedecdet0678 to "public" as "apastor";
grant select on "apastor".sedecdet0679 to "public" as "apastor";
grant select on "apastor".sedecdet0680 to "public" as "apastor";
grant select on "apastor".sedecdet0694 to "public" as "apastor";
grant select on "conweb".sescadt4692 to "public" as "conweb";
grant select on "conweb".sesolindt4710 to "public" as "conweb";
grant select on "bcillian".sedecdet0669 to "public" as "bcillian";
grant select on "bcillian".sedecdet0670 to "public" as "bcillian";
grant select on "conweb".seregimminform1698 to "public" as "conweb";
grant select on "apastor".sena38 to "public" as "apastor";
grant select on "apastor".serr38 to "public" as "apastor";
grant select on "conweb".seorpe4430 to "public" as "conweb";
grant select on "conweb".seorpe4735 to "public" as "conweb";
grant select on "fsantosl".seregimminform1699 to "public" as "fsantosl";
grant select on "fsantosl".seregimminform1699p to "public" as "fsantosl";
grant select on "solweb".sequence_lote_temporal to "public" as "solweb";
grant select on "solweb".sequence_lote to "public" as "solweb";
grant select on "conweb".seorpe4691 to "public" as "conweb";
grant select on "solweb".set4828 to "public" as "solweb";
grant select on "solweb".requerimiento to "public" as "solweb";
grant select on "solweb".instancia to "public" as "solweb";
grant select on "conweb".seorpe4435 to "public" as "conweb";
grant select on "conweb".setxxxx to "public" as "conweb";
grant select on "conweb".set4888 to "public" as "conweb";
grant select on "vmendiet".senotvali to "public" as "vmendiet";
grant select on "izarate".secanvirsinsolsqs to "public" as "izarate";
grant select on "mgabriel".sedecdet0681 to "public" as "mgabriel";
grant select on "mgabriel".sedecdet0682 to "public" as "mgabriel";
grant select on "conweb".set4768 to "public" as "conweb";
grant select on "lvenegas".sedevf49990233 to "public" as "lvenegas";
grant select on "eespino3".serp0233 to "public" as "eespino3";
grant select on "conweb".msj4888 to "public" as "conweb";
grant select on "solweb".seorpe5002 to "public" as "solweb";
grant select on "jmaza".sedepvali to "public" as "jmaza";
grant select on "conweb".set5020 to "public" as "conweb";
grant select on "qn91".sesicobfsolic to "public" as "qn91";
grant select on "qn91".sesicobfhistsolic to "public" as "qn91";
grant select on "conweb".sesicobfconst to "public" as "conweb";
grant select on "qn91".sesicobfsolvalcarga to "public" as "qn91";
grant select on "qn91".sesicobfsolcarga to "public" as "qn91";
grant select on "qn91".sesicobfsoldetcarga to "public" as "qn91";
grant select on "qn91".sesicobfarccarga to "public" as "qn91";
grant select on "qn91".sesicobfarccontrol to "public" as "qn91";
grant select on "qm22".sesicobfasign to "public" as "qm22";
grant select on "qm22".sesicobfcalreq to "public" as "qm22";
grant select on "conweb".sertps to "public" as "conweb";
grant select on "conweb".sesicobfcalifica to "public" as "conweb";
grant select on "rarroyo".secp02713 to "public" as "rarroyo";
grant select on "rarroyo".seruc02711 to "public" as "rarroyo";
grant select on "rarroyo".secp02733 to "public" as "rarroyo";
grant select on "cneyra".set4852 to "public" as "cneyra";
grant select on "mgabriel".senovtx001 to "public" as "mgabriel";
grant select on "solweb".sq_guia_rem_confir to "public" as "solweb";
grant select on "qn91".secorsicobf01 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf01 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf02 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf02 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf03 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf03 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf04 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf04 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf05 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf05 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf06 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf06 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf07 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf07 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf08 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf08 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf09 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf09 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf10 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf10 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf11 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf11 to "uswconsu" as "qn91";
grant select on "qn91".secorsicobf12 to "usbdseq" as "qn91";
grant select on "qn91".secorsicobf12 to "uswconsu" as "qn91";
grant select on "icapunay".sesisapredio to "public" as "icapunay";
grant select on "icapunay".sesisapagopred to "public" as "icapunay";
grant select on "icapunay".sesisapredsum to "public" as "icapunay";
grant select on "icapunay".sesisapredinst to "public" as "icapunay";
grant select on "icapunay".sesisaderecpre to "public" as "icapunay";
grant select on "icapunay".sesisatasapre to "public" as "icapunay";
grant select on "icapunay".sesisanotapre to "public" as "icapunay";
grant select on "icapunay".sesisalicepre to "public" as "icapunay";
grant select on "icapunay".sesisaarrenpre to "public" as "icapunay";
grant select on "icapunay".sesisapiso to "public" as "icapunay";
grant select on "icapunay".sesisadireccion to "public" as "icapunay";
grant select on "mtomayll".sedecdet0684 to "public" as "mtomayll";
grant select on "conweb".sedecint0683 to "public" as "conweb";
grant select on "informix".sedecdet1674 to "public" as "informix";
grant select on "qn91".sesicobfrenov2014 to "usbdseq" as "qn91";
grant select on "qn91".sesicobfrenov2014 to "uswconsu" as "qn91";
grant select on "solweb".sedecinf1605 to "public" as "solweb";
grant select on "wgalinde".sesolspot to "public" as "wgalinde";
grant select on "solweb".searcpro5525 to "public" as "solweb";
grant select on "conweb".setpreg to "public" as "conweb";
grant select on "conweb".sesigart5207 to "solweb" as "conweb";
grant select on "conweb".sesigart5207 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5207 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5198 to "solweb" as "conweb";
grant select on "conweb".sesigart5198 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5198 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5447 to "solweb" as "conweb";
grant select on "conweb".sesigart5447 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5447 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5183 to "solweb" as "conweb";
grant select on "conweb".sesigart5183 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5183 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5456 to "solweb" as "conweb";
grant select on "conweb".sesigart5456 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5456 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5210 to "solweb" as "conweb";
grant select on "conweb".sesigart5210 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5210 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5194 to "solweb" as "conweb";
grant select on "conweb".sesigart5194 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5194 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5192 to "solweb" as "conweb";
grant select on "conweb".sesigart5192 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5192 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5173 to "solweb" as "conweb";
grant select on "conweb".sesigart5173 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5173 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5169 to "solweb" as "conweb";
grant select on "conweb".sesigart5169 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5169 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5166 to "solweb" as "conweb";
grant select on "conweb".sesigart5166 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5166 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5163 to "solweb" as "conweb";
grant select on "conweb".sesigart5163 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5163 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5158 to "solweb" as "conweb";
grant select on "conweb".sesigart5158 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5158 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5156 to "solweb" as "conweb";
grant select on "conweb".sesigart5156 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5156 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5155 to "solweb" as "conweb";
grant select on "conweb".sesigart5155 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5155 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5153 to "solweb" as "conweb";
grant select on "conweb".sesigart5153 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5153 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5152 to "solweb" as "conweb";
grant select on "conweb".sesigart5152 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5152 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5151 to "solweb" as "conweb";
grant select on "conweb".sesigart5151 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5151 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5175 to "solweb" as "conweb";
grant select on "conweb".sesigart5175 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5175 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5176 to "solweb" as "conweb";
grant select on "conweb".sesigart5176 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5176 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5179 to "solweb" as "conweb";
grant select on "conweb".sesigart5179 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5179 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5213 to "solweb" as "conweb";
grant select on "conweb".sesigart5213 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5213 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5215 to "solweb" as "conweb";
grant select on "conweb".sesigart5215 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5215 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5460 to "solweb" as "conweb";
grant select on "conweb".sesigart5460 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5460 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5453 to "solweb" as "conweb";
grant select on "conweb".sesigart5453 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5453 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5459 to "solweb" as "conweb";
grant select on "conweb".sesigart5459 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5459 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5220 to "solweb" as "conweb";
grant select on "conweb".sesigart5220 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5220 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5219 to "solweb" as "conweb";
grant select on "conweb".sesigart5219 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5219 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5218 to "solweb" as "conweb";
grant select on "conweb".sesigart5218 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5218 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5217 to "solweb" as "conweb";
grant select on "conweb".sesigart5217 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5217 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5216 to "solweb" as "conweb";
grant select on "conweb".sesigart5216 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5216 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5222 to "solweb" as "conweb";
grant select on "conweb".sesigart5222 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5222 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5159 to "solweb" as "conweb";
grant select on "conweb".sesigart5159 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5159 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5209 to "solweb" as "conweb";
grant select on "conweb".sesigart5209 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5209 to "uswconsu" as "conweb";
grant select on "conweb".sesigart5187 to "solweb" as "conweb";
grant select on "conweb".sesigart5187 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5187 to "uswconsu" as "conweb";
grant select on "conweb".seq_frmpvindh to "public" as "conweb";
grant select on "informix".secontincpe to "public" as "informix";
grant select on "conweb".seavisos to "public" as "conweb";
grant select on "mtomayll".sedecdet0691 to "public" as "mtomayll";
grant select on "eyataco".secdae9713 to "public" as "eyataco";
grant select on "eyataco".secdae9713 to "uswconsu" as "eyataco";
grant alter on "eyataco".secdae9713 to "uswconsu" as "eyataco";
grant select on "eyataco".secdae9713 to "uswsigti" as "eyataco";
grant alter on "eyataco".secdae9713 to "uswsigti" as "eyataco";
grant select on "eyataco".secdae5741 to "public" as "eyataco";
grant select on "eyataco".secdae5741 to "uswconsu" as "eyataco";
grant alter on "eyataco".secdae5741 to "uswconsu" as "eyataco";
grant select on "eyataco".secdae5741 to "uswsigti" as "eyataco";
grant alter on "eyataco".secdae5741 to "uswsigti" as "eyataco";
grant select on "conweb".sesigelexped to "public" as "conweb";
grant select on "conweb".sesigeletap to "public" as "conweb";
grant select on "conweb".sesigeldocext to "public" as "conweb";
grant select on "eyataco".secsaedt5836 to "public" as "eyataco";
grant select on "eyataco".secsaedt5836 to "uswconsu" as "eyataco";
grant alter on "eyataco".secsaedt5836 to "uswconsu" as "eyataco";
grant select on "eyataco".secsaedt5836 to "uswsigti" as "eyataco";
grant alter on "eyataco".secsaedt5836 to "uswsigti" as "eyataco";
grant select on "kaviles".sedecdet0692 to "public" as "kaviles";
grant select on "conweb".separticipcp to "public" as "conweb";
grant select on "conweb".semovimcp to "public" as "conweb";
grant select on "conweb".sedatocp to "public" as "conweb";
grant select on "qn84".sesicobfhistasign to "usbdseq" as "qn84";
grant select on "qn84".sesicobfhistasign to "uswconsu" as "qn84";
grant select on "conweb".sesigelarch to "public" as "conweb";
grant select on "conweb".seq_licencia to "public" as "conweb";
grant select on "conweb".seq_solicitud to "public" as "conweb";
grant select on "qn87".seqexpedientepr to "usbdseq" as "qn87";
grant select on "qn87".seqexpedientepr to "uswconsu" as "qn87";
grant select on "conweb".sesigelsolinfo to "public" as "conweb";
grant select on "conweb".sesigelarchcarg to "public" as "conweb";
grant select on "conweb".sesigeltarea to "public" as "conweb";
grant select on "solweb".se5768dir to "wgalinde" as "solweb";
grant select on "solweb".sesigelsolcf to "uswconsu" as "solweb";
grant select on "solweb".sesigelcf to "uswconsu" as "solweb";
grant select on "solweb".sesigelmovcf to "uswconsu" as "solweb";
grant select on "solweb".sesigelnotifcf to "uswconsu" as "solweb";
grant select on "solweb".sesigelsupervcf to "uswconsu" as "solweb";
grant select on "eyataco".secfdt5510 to "public" as "eyataco";
grant select on "eyataco".secfdt5510 to "uswconsu" as "eyataco";
grant alter on "eyataco".secfdt5510 to "uswconsu" as "eyataco";
grant select on "eyataco".secfdt5510 to "uswsigti" as "eyataco";
grant alter on "eyataco".secfdt5510 to "uswsigti" as "eyataco";
grant select on "eyataco".secpdfxxxx to "public" as "eyataco";
grant select on "eyataco".secpdfxxxx to "uswconsu" as "eyataco";
grant alter on "eyataco".secpdfxxxx to "uswconsu" as "eyataco";
grant select on "eyataco".secpdfxxxx to "uswsigti" as "eyataco";
grant alter on "eyataco".secpdfxxxx to "uswsigti" as "eyataco";
grant select on "eyataco".secbucxxxx to "public" as "eyataco";
grant select on "eyataco".secbucxxxx to "uswconsu" as "eyataco";
grant alter on "eyataco".secbucxxxx to "uswconsu" as "eyataco";
grant select on "eyataco".secbucxxxx to "uswsigti" as "eyataco";
grant alter on "eyataco".secbucxxxx to "uswsigti" as "eyataco";
grant select on "conweb".seauditoriaxxxx to "public" as "conweb";
grant select on "mtomayll".sedecint0099 to "public" as "mtomayll";
grant select on "solweb".se6238operadorpv to "public" as "solweb";
grant select on "cepele".se6236envarccompv to "public" as "cepele";
grant select on "solweb".se6243emistarj to "public" as "solweb";
grant select on "wgalinde".seauditoria6194 to "conweb" as "wgalinde";
grant select on "wgalinde".seauditoria6194 to "public" as "wgalinde";
grant select on "kaviles".sedecdet1673 to "public" as "kaviles";
grant select on "kaviles".sedecdet1675 to "public" as "kaviles";
grant select on "conweb".test_seq to "public" as "conweb";
grant select on "conweb".test_seq2 to "public" as "conweb";
grant select on "conweb".test_seq3 to "public" as "conweb";
grant select on "conweb".test_seq4 to "public" as "conweb";
grant select on "wgalinde".sett6231reconsiderac to "public" as "wgalinde";
grant select on "wgalinde".set6231reconsiderac to "public" as "wgalinde";
grant select on "wgalinde".set10identificarecon to "public" as "wgalinde";
grant select on "wgalinde".set10transarecon to "public" as "wgalinde";
grant select on "informix".seorpe4458 to "public" as "informix";
grant select on "informix".seorpe4459 to "public" as "informix";
grant select on "informix".seorpe4468 to "public" as "informix";
grant select on "informix".seorpe4471 to "public" as "informix";
grant select on "informix".seorpe4474 to "public" as "informix";
grant select on "informix".seorpe4476 to "public" as "informix";
grant select on "informix".seorpe4476cir to "public" as "informix";
grant select on "informix".secabsolicitud001 to "public" as "informix";
grant select on "informix".sercorsolicitudes to "public" as "informix";
grant select on "informix".sedatadjcausal001 to "public" as "informix";
grant select on "informix".sehistosoldes001 to "public" as "informix";
grant select on "conweb".sefatca to "public" as "conweb";
grant select on "conweb".secontrol to "public" as "conweb";
grant select on "mvenero".seqnotifproceso to "public" as "mvenero";
grant select on "mvenero".seqnotifplantilla to "public" as "mvenero";
grant select on "mvenero".seqnotifpedido to "public" as "mvenero";
grant select on "conweb".sedecint0701 to "uswconsu" as "conweb";
grant select on "conweb".sedecint0701 to "uswsigti" as "conweb";
grant alter on "conweb".sedecint0701 to "uswsigti" as "conweb";
grant select on "solweb".sebajaoficio to "conweb" as "solweb";
grant alter on "solweb".sebajaoficio to "conweb" as "solweb";
grant select on "solweb".sebajaoficio to "uswconsu" as "solweb";
grant select on "solweb".sebajaoficio to "uswsigti" as "solweb";
grant alter on "solweb".sebajaoficio to "uswsigti" as "solweb";
grant select on "conweb".seaudconscpews to "public" as "conweb";
grant select on "conweb".sedecdet0701 to "public" as "conweb";
grant select on "solweb".se6402nbe to "public" as "solweb";
grant select on "informix".sedecdet0621e to "public" as "informix";
grant select on "solweb".set5793bien to "public" as "solweb";
grant select on "solweb".set5802itembien to "public" as "solweb";
grant select on "qn84".sesicobfrenov2015 to "usbdseq" as "qn84";
grant select on "qn84".sesicobfrenov2015 to "uswconsu" as "qn84";
grant select on "qn84".sesicobfrenov2016 to "usbdseq" as "qn84";
grant select on "qn84".sesicobfrenov2016 to "uswconsu" as "qn84";
grant select on "qn84".sesicobfrenov2017 to "usbdseq" as "qn84";
grant select on "qn84".sesicobfrenov2017 to "uswconsu" as "qn84";
grant select on "qn84".sesicobfrenov2018 to "usbdseq" as "qn84";
grant select on "qn84".sesicobfrenov2018 to "uswconsu" as "qn84";
grant select on "kaviles".sedeclaracion to "public" as "kaviles";
grant select on "kaviles".secuponera to "public" as "kaviles";
grant select on "conweb".set6493 to "public" as "conweb";
grant select on "kaviles".testing11 to "public" as "kaviles";
grant select on "conweb".sesorteo to "public" as "conweb";
grant alter on "conweb".sesorteo to "public" as "conweb";
grant select on "conweb".segrupopremio to "public" as "conweb";
grant alter on "conweb".segrupopremio to "public" as "conweb";
grant select on "conweb".sepremio to "public" as "conweb";
grant alter on "conweb".sepremio to "public" as "conweb";
grant select on "conweb".sehistorial to "public" as "conweb";
grant alter on "conweb".sehistorial to "public" as "conweb";
grant select on "informix".se6029pddp to "public" as "informix";
grant select on "informix".se6033pae to "public" as "informix";
grant select on "informix".se6039ipd to "public" as "informix";
grant select on "conweb".selcpostu to "usbdseq" as "conweb";
grant select on "conweb".selcpostu to "uswconsu" as "conweb";
grant select on "solweb".seqevexpvirtual to "public" as "solweb";
grant select on "solweb".seqevobs to "public" as "solweb";
grant select on "solweb".seqevpedrep to "public" as "solweb";
grant select on "solweb".seqevplanti to "public" as "solweb";
grant select on "solweb".seqevrepdoc to "public" as "solweb";
grant select on "solweb".seqevrepexp to "public" as "solweb";
grant select on "solweb".seqevrepped to "public" as "solweb";
grant select on "solweb".seqevrequerim to "public" as "solweb";
grant select on "solweb".seqevrespons to "public" as "solweb";
grant select on "solweb".seqevseguim to "public" as "solweb";
grant select on "conweb".set6571percepcion to "public" as "conweb";
grant select on "solweb".seqevdocum to "public" as "solweb";
grant select on "conweb".seaduanasrem to "public" as "conweb";
grant select on "conweb".setributosintrem to "public" as "conweb";
grant select on "conweb".seprocessinterem to "public" as "conweb";
grant select on "conweb".seordenvisarem to "public" as "conweb";
grant select on "conweb".set5791acta to "public" as "conweb";
grant select on "conweb".set5795convoca to "public" as "conweb";
grant select on "conweb".set5792asiper to "public" as "conweb";
grant select on "conweb".set5808perito to "public" as "conweb";
grant select on "conweb".set5794bienmov to "public" as "conweb";
grant select on "solweb".set5805obsliq to "uswconsu" as "solweb";
grant select on "solweb".sercdepecentral to "public" as "solweb";
grant select on "conweb".sehistverifsecp to "public" as "conweb";
grant select on "conweb".serestverifsecp to "public" as "conweb";
grant select on "conweb".sehistarchsecp to "public" as "conweb";
grant select on "vmendiet".seobltriaeid to "public" as "vmendiet";
grant select on "vmendiet".seobltriae to "public" as "vmendiet";
grant select on "vmendiet".seliqimpaeid to "public" as "vmendiet";
grant select on "kaviles".sespredio to "conweb" as "kaviles";
grant select on "kaviles".sespredio to "icapunay" as "kaviles";
grant select on "kaviles".sespredio to "informix" as "kaviles";
grant select on "kaviles".sespredio to "solweb" as "kaviles";
grant select on "kaviles".sespredio to "usbdseq" as "kaviles";
grant select on "kaviles".sespredio to "uswconsu" as "kaviles";
grant select on "kaviles".secvpr to "conweb" as "kaviles";
grant select on "kaviles".secvpr to "icapunay" as "kaviles";
grant select on "kaviles".secvpr to "informix" as "kaviles";
grant select on "kaviles".secvpr to "solweb" as "kaviles";
grant select on "kaviles".secvpr to "usbdseq" as "kaviles";
grant select on "kaviles".secvpr to "uswconsu" as "kaviles";
grant select on "mvenero".seqnotifresponsable to "public" as "mvenero";
grant select on "kaviles".sedecdet0702 to "public" as "kaviles";
grant select on "conweb".secanpresencialsqs to "public" as "conweb";
grant select on "conweb".sedecint0015 to "public" as "conweb";
grant select on "kaviles".secomprob to "public" as "kaviles";
grant select on "conweb".sesigart5174 to "public" as "conweb";
grant select on "conweb".sesigart5178 to "public" as "conweb";
grant select on "conweb".sesigart5177 to "public" as "conweb";
grant select on "vmendiet".seqform1694id to "public" as "vmendiet";
grant select on "vmendiet".seqform1694 to "public" as "vmendiet";
grant select on "solweb".seqevdetplanti to "public" as "solweb";
grant select on "solweb".set7011condiciondomi to "public" as "solweb";
grant select on "solweb".set7013hisconddomi to "public" as "solweb";
grant select on "solweb".set7012arrendador to "public" as "solweb";
grant select on "solweb".set7009preconddomi to "public" as "solweb";
grant select on "solweb".set7010prearrendador to "public" as "solweb";
grant select on "vmendiet".seq1692 to "public" as "vmendiet";
grant select on "jmendiet".set7163indriesgo to "public" as "jmendiet";
grant select on "conweb".seidconscir to "public" as "conweb";
grant select on "conweb".seidsustento to "public" as "conweb";
grant select on "conweb".seiddocadj to "public" as "conweb";
grant select on "eyataco".secjsoxxx to "public" as "eyataco";
grant select on "eyataco".secjsoxxx to "uswconsu" as "eyataco";
grant alter on "eyataco".secjsoxxx to "uswconsu" as "eyataco";
grant select on "eyataco".secjsoxxx to "uswsigti" as "eyataco";
grant alter on "eyataco".secjsoxxx to "uswsigti" as "eyataco";
grant select on "solweb".seqevdocadi to "public" as "solweb";
grant select on "solweb".set5802itembientributos to "public" as "solweb";
grant select on "solweb".set5802itembienaduana to "public" as "solweb";
grant select on "solweb".set5806oferlote to "public" as "solweb";
grant select on "conweb".sesigart5208 to "usbdseq" as "conweb";
grant select on "conweb".sesigart5208 to "uswconsu" as "conweb";
grant select on "conweb".sesigarp to "public" as "conweb";
grant select on "conweb".sedescargainfo to "public" as "conweb";
grant select on "solweb".seqevrepimp to "public" as "solweb";
grant select on "solweb".seqevsegrepi to "public" as "solweb";
grant select on "mtomayll".sena57 to "public" as "mtomayll";
grant select on "mtomayll".serr57 to "public" as "mtomayll";
grant select on "solweb".secourierdepecentral to "conweb" as "solweb";
grant select on "solweb".secourierdepecentral to "uswconsu" as "solweb";
grant select on "conweb".sedecdet0704 to "public" as "conweb";
create unique index "informix".pbcattbl_idx on "informix".pbcattbl 
    (pbt_tnam,pbt_ownr) using btree ;
create unique index "informix".pbccol_idx on "informix".pbcatcol 
    (pbc_tnam,pbc_ownr,pbc_cnam) using btree ;
create unique index "informix".pbcatfmt_idx on "informix".pbcatfmt 
    (pbf_name) using btree ;
create unique index "informix".pbcatvld_idx on "informix".pbcatvld 
    (pbv_name) using btree ;
create unique index "informix".pbcatedt_idx on "informix".pbcatedt 
    (pbe_name,pbe_seqn) using btree ;
create unique index "qn91".inpkt5126 on "qn91".t5118transportista 
    (cod_transportista) using btree ;
alter table "qn91".t5118transportista add constraint primary 
    key (cod_transportista) constraint "qn91".pk_t5118  ;
create unique index "qn91".inpkt5123 on "qn91".t5117empextranjera 
    (cod_empresa) using btree ;
alter table "qn91".t5117empextranjera add constraint primary 
    key (cod_empresa) constraint "qn91".pk_t5117  ;
create unique index "qn91".inpkt5122 on "qn91".t5116orgnotifica 
    (cod_organizacion) using btree ;
alter table "qn91".t5116orgnotifica add constraint primary key 
    (cod_organizacion) constraint "qn91".pk_t5116  ;
create unique index "qn91".inpkt5135 on "qn91".t5132movestauto 
    (num_movestauto) using btree ;
alter table "qn91".t5132movestauto add constraint primary key 
    (num_movestauto) constraint "qn91".pk_t5132  ;
create unique index "qn91".inpkt5134 on "qn91".t5133stockpresen 
    (num_stock) using btree ;
alter table "qn91".t5133stockpresen add constraint primary key 
    (num_stock) constraint "qn91".pk_t5133  ;
create unique index "qn91".inpkt5121 on "qn91".t5120detautoriza 
    (num_item_soli) using btree ;
alter table "qn91".t5120detautoriza add constraint primary key 
    (num_item_soli) constraint "qn91".pk_t5120  ;
create index "qn91".in01t5120 on "qn91".t5119cabautoriza (cod_tipautoriza,
    cod_est_autoriza) using btree ;
create unique index "qn91".inpkt5127 on "qn91".t5119cabautoriza 
    (num_autoriza,cod_tipautoriza,ann_autoriza) using btree ;
    
alter table "qn91".t5119cabautoriza add constraint primary key 
    (num_autoriza,cod_tipautoriza,ann_autoriza) constraint "qn91"
    .pk_t5119  ;
create unique index "qn91".inpkt5125 on "qn91".t5123saldo (num_existencia) 
    using btree ;
alter table "qn91".t5123saldo add constraint primary key (num_existencia) 
    constraint "qn91".pk_t5123  ;


alter table "qn91".t5119cabautoriza add constraint (foreign key 
    (cod_transportista) references "qn91".t5118transportista  
    constraint "qn91".fk01_t5119_t5118);
alter table "qn91".t5119cabautoriza add constraint (foreign key 
    (cod_empresa) references "qn91".t5117empextranjera  constraint 
    "qn91".fk02_t5119_t5117);
alter table "qn91".t5119cabautoriza add constraint (foreign key 
    (cod_organizacion) references "qn91".t5116orgnotifica  constraint 
    "qn91".fk03_t5119_t5116);


