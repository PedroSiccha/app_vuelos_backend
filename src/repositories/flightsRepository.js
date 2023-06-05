const db = require('../adapters/database/postgres');

const getAllFlights = async () => {
  const query = 'SELECT * FROM vuelos';
  const { rows } = await db.query(query);
  return rows;
};

const getFlightById = async (flightId) => {
  const query = 'SELECT * FROM vuelos WHERE id = $1';
  const { rows } = await db.query(query, [flightId]);
  return rows[0];
};

const createFlight = async (flightData) => {
  const { aerolinea, origen, destino, fechaSalida, fechaLlegada, plazasDisponibles, precio } = flightData;
  const query = 'INSERT INTO vuelos (aerolinea, origen, destino, fecha_salida, fecha_llegada, plazas_disponibles, precio) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *';
  const values = [aerolinea, origen, destino, fechaSalida, fechaLlegada, plazasDisponibles, precio];
  const { rows } = await db.query(query, values);
  return rows[0];
};

module.exports = {
  getAllFlights,
  getFlightById,
  createFlight,
};
