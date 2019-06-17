CREATE PROCEDURE `sp_vmes` (IN IdPasajero INT, IN AMES INT)
BEGIN
SELECT COUNT(IdViaje)
FROM ParticipanteViajes
INNER JOIN Viajes ON ParticipanteViajes.IdViajeFP = Viajes.IdViaje
WHERE Viajes.MES = AMES AND PArticipanteViajes.IdPasajeroFP=IdPasajero
GROUP BY ParticipanteViajes.IdPasajeroFP;
END