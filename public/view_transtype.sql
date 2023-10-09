create view view_transtype(transtypeid, company_name) as
SELECT transactiontype.transtypeid,
       transactiontype.company_name
FROM transactiontype;

alter table view_transtype
    owner to postgres;

