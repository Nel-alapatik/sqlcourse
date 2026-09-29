SELECT   c.CustomerID,
         c.Firstname,
         c.Lastname,
         c.City,
         c.Company
FROM     Customer AS C
WHERE    c.Company IS NOT NULL
--WHERE  c.city IN ('London','Paris','Rome','Berlin')
--WHERE c.LastName LIKE 'S%'
ORDER BY c.Company ASC;

SELECT   TOP 3 c.country,
               COUNT(*) AS Numberofcustomers
FROM     customer AS C
WHERE    C.Company IS NULL
GROUP BY c.country
ORDER BY Numberofcustomers DESC;

SELECT   i.CustomerId,
         SUM(i.Total) AS InvoiceTotal
FROM     Invoice AS i
GROUP BY I.CustomerId
ORDER BY i.customerId;