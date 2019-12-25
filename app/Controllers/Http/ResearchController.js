'use strict'
const Database = use('Database')
class ResearchController {
    /**
     */
    async index ({ request, response, view }) {
		let data= await Database.table('DMIR_T_project').select('*')

		// status header
        let active = {
            research: "active",
		}

		// title untuk head
		// active untuk header
		// member untuk data ke view team
		return view
			.presenter('Text')
			.render('pages.research',{
				title : 'DMIR | Research',
				project:data,
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

module.exports = ResearchController
