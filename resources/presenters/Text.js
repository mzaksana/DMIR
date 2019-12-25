'use strict'

const { BasePresenter } = require('edge.js')

/**
 *  Kelas untuk membangun teks dan format pada view
 *  Semua fungsi yang dibutuhkan untuk memanipulasi text pada view
 */
class Text extends BasePresenter {

	// get n first char from text
	getNText(_text,_len) {
		if(_text.length>_len)
			return _text.substring(0,_len)+" ...";
		return _text
	}
}
module.exports = Text
