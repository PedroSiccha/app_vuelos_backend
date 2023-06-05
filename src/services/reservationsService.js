const reservationsRepository = require('../repositories/reservationsRepository');

const createReservation = async (userId, flightId) => {
  const newReservation = await reservationsRepository.createReservation(userId, flightId);
  return newReservation;
};

const getReservationById = async (reservationId) => {
  const reservation = await reservationsRepository.getReservationById(reservationId);
  return reservation;
};

module.exports = {
  createReservation,
  getReservationById,
};
