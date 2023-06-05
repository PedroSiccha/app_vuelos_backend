const flightsRepository = require('../repositories/flightsRepository');

const getAllFlights = async () => {
  const flights = await flightsRepository.getAllFlights();
  return flights;
};

const getFlightById = async (flightId) => {
  const flight = await flightsRepository.getFlightById(flightId);
  return flight;
};

const createFlight = async (aerolinea, origen, destino, fechaSalida, fechaLlegada, plazasDisponibles, precio) => {
  const flightData = {
    aerolinea,
    origen,
    destino,
    fechaSalida,
    fechaLlegada,
    plazasDisponibles,
    precio,
  };
  const newFlight = await flightsRepository.createFlight(flightData);
  return newFlight;
};

module.exports = {
  getAllFlights,
  getFlightById,
  createFlight,
};
