import MaterialDatamapper from '../datamappers/material.datamapper.js';
import CoreController from './core.controller.js';

export default class MaterialController extends CoreController {
  static datamapper = MaterialDatamapper;
}
