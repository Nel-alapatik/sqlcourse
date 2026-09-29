SELECT   i.CustomerId,
         SUM(i.Total) AS InvoiceTotal
FROM     Invoice AS i
GROUP BY I.CustomerId
ORDER BY i.customerId;
