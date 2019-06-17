CREATE PROCEDURE `sp_amigos` (IN IdUsuario INT)
BEGIN
SELECT IdAmigo, Pasajeros.NOMBRE AS Nombre, Pasajeros.APELLIDO AS Apellido
FROM Amigos
INNER JOIN Pasajeros ON Amigos.IdEmisor = Pasajeros.IdPasajero
WHERE IdReceptor = IdUsuario AND AMIGO = TRUE
UNION 
SELECT IdAmigo, Pasajeros.NOMBRE AS Nombre, Pasajeros.APELLIDO AS Apellido
FROM Amigos
INNER JOIN Pasajeros ON Amigos.IdReceptor = Pasajeros.IdPasajero
WHERE IdEmisor = IdUsuario AND AMIGO = TRUE;
END