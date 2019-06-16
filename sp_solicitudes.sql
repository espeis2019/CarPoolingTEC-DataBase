CREATE PROCEDURE `sp_solicitudes` (IN IdUsuario INT)
BEGIN
SELECT IdAmigo, Pasajeros.NOMBRE AS Nombre, Pasajeros.APELLIDO AS Apellido
FROM Amigos
INNER JOIN Pasajeros ON Amigos.IdEmisor = Pasajeros.IdPasajero
WHERE IdReceptor = IdUsuario AND AMIGO = FALSE;
END