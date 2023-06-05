const reservationsService = require('../services/reservationsService');

const createReservation = async (req, res) => {
  const { userId, flightId } = req.body;
  try {
    const newReservation = await reservationsService.createReservation(userId, flightId);
    res.status(201).json(newReservation);
  } catch (error) {
    res.status(500).json({ error: 'Failed to create reservation' });
  }
};

const getReservationById = async (req, res) => {
  const reservationId = req.params.id;
  try {
    const reservation = await reservationsService.getReservationById(reservationId);
    if (!reservation) {
      res.status(404).json({ error: 'Reservation not found' });
    } else {
      res.json(reservation);
    }
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch reservation' });
  }
};

module.exports = {
  createReservation,
  getReservationById,
};
