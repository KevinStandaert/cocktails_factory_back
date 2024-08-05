import express from 'express';
import ApiError from '../../../errors/api.error.js';
import siteRecipesRouter from './recipes.router.js';
import siteMaterialsRouter from './materials.router.js';

const apiSiteRouter = express.Router();

apiSiteRouter.use('/recipes', siteRecipesRouter);
apiSiteRouter.use('/materials', siteMaterialsRouter);

apiSiteRouter.use((_, __, next) => {
  next(new ApiError('Resource not found', { httpStatus: 404 }));
});

export default apiSiteRouter;
