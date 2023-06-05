class Reservation {
      constructor(id, userId, flightId, reservationDate) {
        this.id = id;
        this.userId = userId;
        this.flightId = flightId;
        this.reservationDate = reservationDate;
      }
    }
    
    module.exports = Reservation;
    