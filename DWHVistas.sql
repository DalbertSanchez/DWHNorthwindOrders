--Vista para cargar los clientes
Create View LoadCustomersData as
Select CustomerID,
	   CompanyName,
	   City,
	   Country
from Customers

Select * from LoadCustomersData



--Vista para cargar los suplidores
Create View LoadSuppliersData as
Select SupplierID,
       CompanyName,
	   City,
	   Country
from Suppliers

Select * from LoadSuppliersData



-- Vista para cargar los empleados
Create View LoadEmployeesData as
Select EmployeeID,
       LastName,
	   FirstName,
	   Country,
	   City
from Employees

Select * from LoadEmployeesData



--Vista para cargar los shippers
Create View LoadShippersData as
Select ShipperID,
       CompanyName
from Shippers

Select * from LoadShippersData


--Vista para cargar los productos
Create View LoadProductsData as
Select P.ProductID,
       P.ProductName,
	   P.UnitPrice,
	   C.CategoryName
from Products AS P
INNER JOIN Categories AS C
ON P.CategoryID = C.CategoryID

Select * from LoadProductsData