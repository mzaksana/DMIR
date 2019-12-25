'use strict'

const { BasePresenter } = require('edge.js')

/**
 *  Kelas untuk membangun konten pada web
 *  
 */
class Content extends BasePresenter {

	// get n first char from text
	getNText(_text,_len) {
		if(_text.length>_len)
			return _text.substring(0,_len)+" ...";
		return _text
	}
}

module.exports = Content