import express from 'express';
import ApiError from '../../errors/api.error.js';
import siteRouter from './site/index.router.js';
import adminRouter from './admin/index.router.js';

const router = express.Router();

router.use('/admin', adminRouter);
router.use('/', siteRouter);

router.use((_, __, next) => {
  next(new ApiError('Resource not found', { httpStatus: 404 }));
});

export default router;
