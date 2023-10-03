create view view_items_bags(itemid, item_name, uom) as
SELECT item.itemid,
       item.item_name,
       item.uom
FROM item
WHERE item.uom::text = 'BAGS'::text;

alter table view_items_bags
    owner to postgres;

