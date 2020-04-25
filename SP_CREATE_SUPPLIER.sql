ALTER PROCEDURE example.SP_CREATE_SUPPLIER
    @SupplierID int,
    @SupplierName NVARCHAR(200),
    @Address NVARCHAR(2000),
    @City NVARCHAR(200),
    @PostalCode NVARCHAR(200),
    @Country NVARCHAR(200),
    @Phone NVARCHAR(200)
AS

DECLARE @existe INT = (SELECT count(*) as N FROM example.Suppliers WHERE SupplierID = @SupplierID)


IF @existe > 0 BEGIN
    SELECT 0 as Successed, 'El ID enviado ya existe' as MSG
END ELSE BEGIN

    INSERT INTO example.Suppliers 
    VALUES (@SupplierID,@SupplierName,@Address,@City,@PostalCode,@Country,@Phone)

    SELECT 1 as Successed, 'Tu registro fue almacenado' as MSG
    
END