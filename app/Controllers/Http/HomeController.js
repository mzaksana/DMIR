'use strict'

class HomeController {
  /**
   */
  async index({
    request,
    response,
    view
  }) {

    let active = {
      	home: "active",
    }

    return view.render('pages.home', {
      title: 'DMIR | Home',
      active,
      year:(new Date()).getFullYear()
    });
  }

  /**
   */
  async create({
    request,
    response,
    view
  }) {}

  /**
   */
  async store({
    request,
    response
  }) {}

  /**
   */
  async show({
    params,
    request,
    response,
    view
  }) {}

  /**
   */
  async edit({
    params,
    request,
    response,
    view
  }) {}

  /**
   */
  async update({
    params,
    request,
    response
  }) {}

  /**
   */
  async destroy({
    params,
    request,
    response
  }) {}
}

module.exports = HomeController
