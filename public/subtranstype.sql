create table subtranstype
(
    subtranstypeid    serial
        primary key,
    subtranstype_name varchar
);

alter table subtranstype
    owner to postgres;

