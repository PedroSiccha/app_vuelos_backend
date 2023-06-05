const express = require('express');
const router = express.Router();
const flightController = require("../../controllers/flightsController");

router
      .get('/', flightController.getAllFlights)
      .get('/:id', flightController.getFlightById)
      .post('/', flightController.createFlight);

module.exports = router;