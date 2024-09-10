import express from 'express';
import recipeController from '../../../controllers/recipes.controller.js';
import controllerWrapper from '../../../helpers/controller.wrapper.js';

const recipeRouter = express.Router();

recipeRouter.route('/')
  /**
   * GET /api/examples
   * @summary Get all examples
   * @tags Examples
   * @return {Example[]} 200 - success response - application/json
   * @return {ApiJsonError} 400 - Bad request response - application/json
   * @return {ApiJsonError} 500 - Internal Server Error - application/json
   */
  .get(controllerWrapper(recipeController.getAllRecipesWithAll.bind(recipeController)));

recipeRouter.route('/:id(\\d+)')
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
  .get(controllerWrapper(recipeController.getOneRecipeWithAll.bind(recipeController)));

recipeRouter.route('/cards')
/**
     * GET /api/examples/cards
     * @summary Get all examples cards
     * @tags Examples
     * @return {Example[]} 200 - success response - application/json
     * @return {ApiJsonError} 400 - Bad request response - application/json
     * @return {ApiJsonError} 500 - Internal Server Error - application/json
     */
  .get(controllerWrapper(recipeController.getAllRecipesCards.bind(recipeController)));

recipeRouter.route('/cards/:id(\\d+)')
/**
     * GET /api/examples/cards/{id}
     * @summary Get a example card from its id
     * @tags Examples
     * @param {number} id.path.required - example id
     * @return {Example} 200 - success response - application/json
     * @return {ApiJsonError} 400 - Bad request response - application/json
     * @return {ApiJsonError} 404 - Not found response - application/json
     * @return {ApiJsonError} 500 - Internal Server Error - application/json
     */
  .get(controllerWrapper(recipeController.getOneRecipeCard.bind(recipeController)));

recipeRouter.route('/cards/random')
/**
     * GET /api/examples/random
     * @summary Get all examples randomly
     * @tags Examples
     * @return {Example[]} 200 - success response - application/json
     * @return {ApiJsonError} 400 - Bad request response - application/json
     * @return {ApiJsonError} 500 - Internal Server Error - application/json
     */
  .get(controllerWrapper(recipeController.getRecipesRandomly.bind(recipeController)));

export default recipeRouter;
