import express from 'express';
import materialsController from '../../../controllers/materials.controller.js';
import controllerWrapper from '../../../helpers/controller.wrapper.js';

const materialRouter = express.Router();

materialRouter.route('/')
  /**
   * GET /api/examples
   * @summary Get all examples
   * @tags Examples
   * @return {Example[]} 200 - success response - application/json
   * @return {ApiJsonError} 400 - Bad request response - application/json
   * @return {ApiJsonError} 500 - Internal Server Error - application/json
   */
  .get(controllerWrapper(materialsController.findAll.bind(materialsController)));

materialRouter.route('/:id(\\d+)')
  /**
   * GET /api/examples/{id}
   * @summary Get a example from its id
   * @tags Examples
   * @param {number} id.path.required - example id
   * @return {Example} 200 - success response - application/json
   * @return {ApiJsonError} 400 - Bad request response - application/json
   * @return {ApiJsonError} 404 - Not found response - application/json
   * @return {ApiJsonError} 500 - Internal Server Error - application/json
   */
  .get(controllerWrapper(materialsController.findByPk.bind(materialsController)));
