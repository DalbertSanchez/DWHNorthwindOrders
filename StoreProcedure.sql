--Procedimiento Almacenado para llenar DimCustomers

Create Procedure [dbo].[SP_LoadCustomers]
          @CustomerID nchar(5),
		  @CompanyName nvarchar(40),
		  @City nvarchar (15),
		  @Country nvarchar (15)

AS

IF (NOT EXISTS( Select 1 from [dbo].[DimCustomers]
               Where CustomerID = @CustomerID))

Begin 
 Insert into [dbo].[DimCustomers]( 
			 [CustomerID], 
			 [CompanyName], 
			 [City], 
			 [Country]
			 )

             Values(
		     @CustomerID ,
		     @CompanyName ,
		     @City ,
		     @Country 
			 )
END





--Procedimiento Almacenado para llenar DimSuppliers

Create Procedure [dbo].[SP_LoadSuppliers]
              @SupplierID int,
			  @CompanyName nvarchar (40),
			  @City nvarchar(15),
			  @Country nvarchar(15)

AS

IF(NOT EXISTS ( Select 1 from [dbo].[DimSuppliers]
                Where SupplierID = @SupplierID
               ))

Begin
   Insert into [dbo].[DimSuppliers](
               [SupplierID], 
			   [CompanyName], 
			   [City], 
			   [Country]

			   )

			   Values(
			   @SupplierID,
			   @CompanyName,
			   @City,
			   @Country
			   
			   )
END



--Procedimiento Almacenado para llenar DimEmployees

Create Procedure [dbo].[SP_LoadEmployees]
                @EmployeeID int, 
				@LastName nvarchar(20), 
				@FirstName nvarchar(10), 
				@Country nvarchar(15), 
				@City nvarchar(15)
AS

IF (NOT EXISTS(Select 1 from [dbo].[DimEmployees]
               Where EmployeeID = @EmployeeID
              ))

 Begin 
      Insert into [dbo].[DimEmployees](
				  [EmployeeID], 
				  [LastName], 
				  [FirstName], 
				  [Country], 
				  [City]
				  
				  )	

			Values(
			      @EmployeeID, 
				  @LastName, 
				  @FirstName, 
				  @Country, 
				  @City 
			      )
END



--Procedimiento Almacenado para llenar DimShippers

Create Procedure [dbo].[SP_LoadShippers]

                @ShipperID int, 
				@CompanyName nvarchar(40)
AS 
  Begin 

  IF(NOT EXISTS (Select 1 from [dbo].[DimShippers]
                 Where ShipperID = @ShipperID
                 ))

       Insert into [dbo].[DimShippers](
	               [ShipperID], 
				   [CompanyName]

	               )

		    Values(
			     @ShipperID, 
				 @CompanyName
		        )
END



--Procedimiento Almacenado para llenar DimProducts

Create Procedure [dbo].[SP_LoadProducts]
                 @ProductID int, 
				 @ProductName nvarchar(40), 
				 @UnitPrice money, 
				 @CategoryName nvarchar (15)
AS
 IF(NOT EXISTS(Select 1 from [dbo].[DimProducts]
               Where ProductID =@ProductID
			   ))
Begin
      Insert into [dbo].[DimProducts](
	              [ProductID], 
				  [ProductName], 
				  [UnitPrice], 
				  [CategoryName]

				  )
			Values(
			      @ProductID, 
				  @ProductName, 
				  @UnitPrice, 
				  @CategoryName

			    )
END


