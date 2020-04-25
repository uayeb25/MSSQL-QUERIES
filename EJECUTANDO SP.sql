EXEC example.SP_CREATE_SUPPLIER 
@SupplierID = 111,
@SupplierName = 'Nuevo proveedor',
@Address = 'Direccion',
@City = 'Ciudad',
@PostalCode = '444',
@Country = 'HN',
@Phone = '999999999'


EXEC example.SP_DELETE_SUPPLIER 
@SupplierID = 1