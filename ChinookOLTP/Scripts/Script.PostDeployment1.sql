/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

:r .\Genre.data.sql
:r .\MediaType.data.sql
:r .\Artist.data.sql
:r .\Album.data.sql
:r .\Track.data.sql
:r .\Employee.data.sql
:r .\Customer.data.sql
:r .\Invoice.data.sql
:r .\InvoiceLine.data.sql
:r .\Playlist.data.sql
:r .\PlaylistTrack.data.sql