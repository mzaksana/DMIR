'use strict'
const Database = use('Database')

class ArticleController {
	/**
     */
    async index ({ request, response, view }) {
		let data= await Database.table('DMIR_T_article').innerJoin('DMIR_T_member', 'DMIR_T_article.f_id_m', 'DMIR_T_member.id_m').select('*')
		console.log("article",data);

		// header
        let active = {
            article: "active",
		}

		//
		return view
			.presenter('Text')
			.render('pages.article',{
				title : 'DMIR | Article',
				article:data,
            	active,
           		year:(new Date()).getFullYear()
        	});
	}
}

module.exports = ArticleController
