const express = require('express');
const router = express.Router();
const reservationController = require("../../controllers/reservationsController");

router
      .post('/', reservationController.createReservation)

      .get('/:id', reservationController.getReservationById);

module.exports = router;