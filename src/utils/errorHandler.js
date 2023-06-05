const errorHandler = (error, req, res, next) => {
      let statusCode = 500;
      let responseData = {
        message: 'Internal Server Error',
      };
      if (error instanceof CustomError) {
        statusCode = error.statusCode;
        responseData = {
          message: error.message,
        };
      }
      console.error(error);
      res.status(statusCode).json(responseData);
    };
    
    module.exports = errorHandler;
    