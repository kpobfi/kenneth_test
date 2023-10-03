create table transactiontype
(
    transtypeid  integer not null
        primary key,
    company_name varchar
);

alter table transactiontype
    owner to postgres;

