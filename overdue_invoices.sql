SELECT
	i.invoice_id,
	i.number,
	c.name AS client,
	i.invoice_total,
	i.payment_total,
	i.due_date,
	DATEDIFF(CURDATE(), i.due_date) AS days_overdue
FROM sql_invoicing.invoices AS i
JOIN sql_invoicing.clients  AS c ON c.client_id = i.client_id
WHERE i.payment_total < i.invoice_total
	AND i.due_date < CURDATE()
ORDER BY i.due_date, i.invoice_id;
