create table subtranstype
(
    subtranstypeid    integer not null
        primary key,
    subtranstype_name varchar
);

alter table subtranstype
    owner to postgres;

