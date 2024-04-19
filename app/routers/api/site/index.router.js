import express from 'express';
import ApiError from '../../../errors/api.error.js';
import siteRecipesRouter from './recipes.router.js';

const apiSiteRouter = express.Router();

apiSiteRouter.use('/recipes', siteRecipesRouter);

apiSiteRouter.use((_, __, next) => {
  next(new ApiError('Resource not found', { httpStatus: 404 }));
});

export default apiSiteRouter;
