'use strict'

/**
 * Resourceful controller for interacting with signins
 */
class SignInController {
  /**
   */
  async index ({ request, response, view }) {
    return view.render('pages.signIn', {
      title: 'DMIR | Sign In',
      active,
      year:(new Date()).getFullYear()
    });
  }

  /**
   */
  async create ({ request, response, view }) {
  }

  /**
   */
  async store ({ request, response }) {
  }

  /**
   */
  async show ({ params, request, response, view }) {
  }

  /**
   */
  async edit ({ params, request, response, view }) {
  }

  /**
   */
  async update ({ params, request, response }) {
  }

  /**
   */
  async destroy ({ params, request, response }) {
  }
}

module.exports = SignInController
