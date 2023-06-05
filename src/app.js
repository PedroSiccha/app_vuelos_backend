const express = require('express');
const app = express();

// Middlewares
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// Rutas
const flightsRouter = require('./v1/routes/flightsRouter');
const reservationsRouter = require('./v1/routes/reservationsRouter');

app.use('/api/v1/flights', flightsRouter);
app.use('/api/v1/reservations', reservationsRouter);

// Manejo de errores
const errorHandler = require('./utils/errorHandler');
app.use(errorHandler);

// Puerto de escucha
const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Servidor escuchando en el puerto ${port}`);
});
