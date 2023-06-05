const errorHandler = (error, req, res, next) => {
      // Manejo específico de errores
      let statusCode = 500; // Por defecto, se asume un error interno del servidor
      let responseData = {
        message: 'Internal Server Error',
      };
    
      // Comprobación de errores conocidos y asignación de código de estado y mensaje correspondiente
      if (error instanceof CustomError) {
        statusCode = error.statusCode;
        responseData = {
          message: error.message,
          // Otras propiedades específicas del error si es necesario
        };
      }
    
      // Registro del error en caso de ser necesario
      console.error(error);
    
      // Envío de la respuesta al cliente
      res.status(statusCode).json(responseData);
    };
    
    module.exports = errorHandler;
    