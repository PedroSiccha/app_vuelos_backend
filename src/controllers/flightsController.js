const flightsService = require('../services/flightsService');

const getAllFlights = async (req, res) => {
  try {
    const flights = await flightsService.getAllFlights();
    res.json(flights);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch flights' });
  }
};

const getFlightById = async (req, res) => {
  const flightId = req.params.id;
  try {
    const flight = await flightsService.getFlightById(flightId);
    if (!flight) {
      res.status(404).json({ error: 'Flight not found' });
    } else {
      res.json(flight);
    }
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch flight' });
  }
};

const createFlight = async (req, res) => {
  const { aerolinea, origen, destino, fechaSalida, fechaLlegada, plazasDisponibles, precio } = req.body;
  try {
    const newFlight = await flightsService.createFlight(aerolinea, origen, destino, fechaSalida, fechaLlegada, plazasDisponibles, precio);
    res.status(201).json(newFlight);
  } catch (error) {
    res.status(500).json({ error: 'Failed to create flight' });
  }
};

module.exports = {
  getAllFlights,
  getFlightById,
  createFlight,
};
