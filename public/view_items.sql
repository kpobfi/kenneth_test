create view view_items(itemid, item_name, uom) as
SELECT item.itemid,
       item.item_name,
       item.uom
FROM item;

alter table view_items
    owner to postgres;

