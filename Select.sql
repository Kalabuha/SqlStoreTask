USE GroceryStore
SELECT P.Product_name, C.Category_name
FROM Products AS P
LEFT JOIN Categories_Products AS CP ON CP.Product_Id = P.Id
LEFT JOIN Categories AS C ON CP.Category_Id = C.Id