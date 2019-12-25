'use strict'

class DashboardArticleController {

	async index({ request, response, view }){
		return view
		.presenter('Text')
		.render('dashboard.pages.articleStudio',{
			title : 'DMIR | Studio',
			article:"data",
			year:(new Date()).getFullYear()
		});
	}
}

module.exports = DashboardArticleController
