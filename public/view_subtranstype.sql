create view view_subtranstype(subtranstypeid, subtranstype_name) as
SELECT subtranstype.subtranstypeid,
       subtranstype.subtranstype_name
FROM subtranstype;

alter table view_subtranstype
    owner to postgres;

