create table transactiontype
(
    transtypeid  serial
        primary key,
    company_name varchar
);

alter table transactiontype
    owner to postgres;

