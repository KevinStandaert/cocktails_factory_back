import CoreDatamapper from './core.datamapper.js';

/**
 * @typedef {object} Example
 * @property {integer} id - Example id
 * @property {string} name - Example title
 * @property {integer} number - Example number
 * @property {string} created_at - Example created_at
 * @property {string} updated_at - Example updated_at
 */

/**
 * @typedef {object} ExampleInput
 * @property {string} name - Example title
 * @property {integer} number - Example number
 */

import client from '../helpers/pg.client.js';

export default class RecipeDatamapper extends CoreDatamapper {
  static readTableName = 'recipe';

  static writeTableName = 'recipe';

  static async findAllRecipesWithAll() {
    const result = await client.query('SELECT * FROM recipe_with_all');
    return result.rows;
  }

  static async findOneRecipeWithAll(id) {
    const result = await client.query('SELECT * FROM recipe_with_all WHERE id = $1', [id]);
    return result.rows[0];
  }

  static async finAllRecipesCards() {
    const result = await client.query('SELECT * FROM recipe_view_card');
    return result.rows;
  }

  static async findOneRecipeCard(id) {
    const result = await client.query('SELECT * FROM recipe_view_card WHERE id = $1', [id]);
    return result.rows[0];
  }

  static async findRecipesRandomly() {
    const result = await client.query('SELECT * FROM recipe_view_random');
    return result.rows;
  }
}
