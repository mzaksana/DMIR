'use strict'

class AboutController {
    /**
	 *	 return base view
     */
    async index ({ request, response, view }) {
        let active = {
            about: "active",
		}
        return view.render('pages.about',{
            title : 'DMIR | About',
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

module.exports = AboutController
