import RecipeDatamapper from '../datamappers/recipes.datamapper.js';
import CoreController from './core.controller.js';
import ApiError from '../errors/api.error.js';

export default class RecipeController extends CoreController {
  static datamapper = RecipeDatamapper;

  static async getAllRecipesWithAll(_, res, next) {
    const recipes = await this.datamapper.findAllRecipesWithAll();
    if (!recipes) {
      const err = new ApiError(
        'No recipes found',
        { httpStatus: 404 },
      );
      return next(err);
    }
    return res.status(200).json(recipes);
  }

  static async getOneRecipeWithAll(req, res, next) {
    const { id } = req.params;
    const recipe = await this.datamapper.findOneRecipeWithAll(id);
    if (!recipe) {
      const err = new ApiError(
        'Recipe not found',
        { httpStatus: 404 },
      );
      return next(err);
    }
    return res.status(200).json(recipe);
  }

  static async getAllRecipesCards(_, res, next) {
    const recipes = await this.datamapper.findAllRecipesCards();
    if (!recipes) {
      const err = new ApiError(
        'No recipes found',
        { httpStatus: 404 },
      );
      return next(err);
    }
    return res.status(200).json(recipes);
  }

  static async getOneRecipeCard(req, res, next) {
    const { id } = req.params;
    const recipe = await this.datamapper.findOneRecipeCard(id);
    if (!recipe) {
      const err = new ApiError(
        'Recipe not found',
        { httpStatus: 404 },
      );
      return next(err);
    }
    return res.status(200).json(recipe);
  }

  static async getRecipesRandomly(_, res, next) {
    const recipes = await this.datamapper.findRecipesRandomly();
    if (!recipes) {
      const err = new ApiError(
        'No recipes found',
        { httpStatus: 404 },
      );
      return next(err);
    }
    return res.status(200).json(recipes);
  }
}
