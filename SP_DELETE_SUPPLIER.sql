ALTER PROCEDURE example.SP_DELETE_SUPPLIER
    @SupplierID int
AS

DECLARE @existe INT = (SELECT count(*) as N FROM example.Products WHERE SupplierID = @SupplierID)


IF @existe > 0 BEGIN
    SELECT 0 as Successed, 'Este proveedor actualmente tiene '+CAST(@existe  AS nvarchar(10))+' products relacionados' as MSG
END ELSE BEGIN

    DELETE FROM example.Suppliers
    WHERE SupplierID = @SupplierID

    SELECT 1 as Successed, 'Tu registro fue eliminado' as MSG
    
END