'use strict'
const Database = use('Database')

class TeamController {
    /**
     */

    async index ({ request, response, view }) {
		// query data
		let data= await Database.table('DMIR_T_member').select('*').orderBy('join_at')

		// status header
        let active = {
            team: "active",
		}

		// pada data terdapat field json namun
		// data yang diberikan dari hasil query adalah string
		// agar mempermudah sebelum diberikan ke view semua diubah kedalam json
		data.forEach(element => {
			element.sosmed_m=JSON.parse(element.sosmed_m)
		});

		// title untuk head
		// active untuk header
		// member untuk data ke view team
      view.presenter('Icon')
		return view
      .presenter('Text')
      .render('pages.team',{
				title : 'DMIR | Team',
				active,
				members:data,
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

module.exports = TeamController
