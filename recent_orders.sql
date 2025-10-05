SELECT
	o.order_id,
	o.order_date,
	s.name AS status,
	CONCAT(c.first_name, ' ', c.last_name) AS customer,
	o.shipped_date,
	sh.name AS shipper,
	COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS order_total
FROM sql_store.orders AS o
JOIN sql_store.order_statuses AS s ON s.order_status_id = o.status
JOIN sql_store.customers AS c ON c.customer_id = o.customer_id
LEFT JOIN sql_store.order_items AS oi ON oi.order_id = o.order_id
LEFT JOIN sql_store.shippers AS sh ON sh.shipper_id = o.shipper_id
GROUP BY
	o.order_id, o.order_date, s.name, customer, o.shipped_date, sh.name
ORDER BY o.order_date DESC, o.order_id DESC;
