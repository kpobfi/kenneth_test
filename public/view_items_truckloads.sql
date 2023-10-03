create view view_items_truckloads(itemid, item_name, uom) as
SELECT item.itemid,
       item.item_name,
       item.uom
FROM item
WHERE item.uom::text = 'TRUCKLOADS'::text;

alter table view_items_truckloads
    owner to postgres;

