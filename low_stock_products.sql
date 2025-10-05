SELECT
	p.product_id,
	p.name,
	p.quantity_in_stock,
	p.unit_price
FROM sql_inventory.products AS p
WHERE p.quantity_in_stock < 20
ORDER BY p.quantity_in_stock, p.name;
