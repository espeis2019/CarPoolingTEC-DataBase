CREATE PROCEDURE `sp_listaAutos` (IN IdUsuario INT)
BEGIN
SELECT Autos.IdAuto AS IdAuto, Autos.PLACA AS Placa, Autos.MARCA AS Marca, Autos.MODELO AS Modelos, Autos.CAPACIDAD AS Capacidad, Autos.IdChofer AS IdChofer
FROM Autos
INNER JOIN Chofers ON Autos.IdChofer = Chofers.IdChofer
INNER JOIN Pasajeros ON Pasajeros.IdPasajero = Chofers.IdPasajerof
WHERE IdUsuario = Pasajeros.IdPasajero;
END