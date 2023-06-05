const db = require('../adapters/database/postgres');

const createReservation = async (userId, flightId) => {
  const query = 'INSERT INTO reservas (user_id, flight_id) VALUES ($1, $2) RETURNING *';
  const values = [userId, flightId];
  const { rows } = await db.query(query, values);
  return rows[0];
};

const getReservationById = async (reservationId) => {
  const query = 'SELECT * FROM reservas WHERE id = $1';
  const { rows } = await db.query(query, [reservationId]);
  return rows[0];
};

module.exports = {
  createReservation,
  getReservationById,
};
