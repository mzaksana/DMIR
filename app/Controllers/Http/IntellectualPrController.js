'use strict'
const Database = use('Database')

class IntellectualPrController {
    /**
     */
    async index ({ request, response, view }) {
		let data= await Database.table('DMIR_T_ipr').innerJoin('DMIR_T_project', 'DMIR_T_ipr.f_id_p', 'DMIR_T_project.id_p').select('*')

		// header stats
        let active = {
            ipr: "active",
		}

		// title untuk head
		// active untuk header
		// member untuk data ke view team
		return view
			.presenter('Text')
			.render('pages.intellectualpr',{
				title : 'DMIR | IPR',
				ipr_project:data,
				active,
				year:(new Date()).getFullYear()
        	});
    }

	/**
	 *  Fungsi untuk menampilkan content ipr
	 */
	async read({params, view }){

	// header stats
	let active = {
		ipr: "active",
	}


	// query data sesuai dengan id yang diberikan (yg diplih)
	let data= await Database.table('DMIR_T_ipr').innerJoin('DMIR_T_project', 'DMIR_T_ipr.f_id_p', 'DMIR_T_project.id_p').where('DMIR_T_ipr.id_i', '=', params.id)

	console.log(data);

	// title untuk head
	// active untuk header
	// member untuk data ke view team
	return view
		.presenter('Content')
		.render('pages.readipr',{
			title : 'DMIR | IPR',
			content:data[0],
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

module.exports = IntellectualPrController
