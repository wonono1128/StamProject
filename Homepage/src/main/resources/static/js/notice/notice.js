	function go_insert() {
		location.href = "insert";
	}
	function go_content(e) {
		let Id = document.getElementById(e.getAttribute('id')).getAttribute(
				'id');

		location.href = "/homepage/content?noticeNum=" + Id;
	}

	function mousehover(e) {
		let Id = document.getElementById(e.getAttribute('id')).getAttribute(
				'id');

		$(e.getAttribute('id')).children('.notice_td_a_span')
				.css('display', '');
		$(e).children('.notice_td_a_first').css('display', 'none');

	}