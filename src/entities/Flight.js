class Flight {
      constructor(id, airline, origin, destination, departureDate, arrivalDate, availableSeats, price) {
        this.id = id;
        this.airline = airline;
        this.origin = origin;
        this.destination = destination;
        this.departureDate = departureDate;
        this.arrivalDate = arrivalDate;
        this.availableSeats = availableSeats;
        this.price = price;
      }
    }
    
    module.exports = Flight;
    