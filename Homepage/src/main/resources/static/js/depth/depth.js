//취소
	function before(){
		const MenuParents = document.querySelector(".MenuParents").value;
		location.href = "/homepage/depth?MenuParents=" + MenuParents;
		
	}

	//수정
	const test="";
	function update_click(ths) {
	
		const test = $(ths).html();
		document.querySelector(".delete_btn").style.display = "none";
		document.querySelector("#before_btn").style.display = "";
		document.querySelector("#add_btn").style.display = "none";
		document.querySelector("#update_finish").style.display = "";
		
		ths.style.display = "none";
		$(ths).next().css("display", "");

		var parent_title = ths.parentNode.parentNode;
		var delete_chk =  document.querySelectorAll(".delete_chk");
		$(parent_title).children('.notice_checkbox').children('.delete_chk').attr('checked', true);
		$(delete_chk).attr("disabled",true);
	}

	//수정완료버튼 클릭시
	$("#update_finish")
			.click(
					function() {
						const MenuParents = document.querySelector(".MenuParents").value;
						var confirm_val = confirm("정말 수정하시겠습니까?");
						if (confirm_val) {
							var updateTitleArray = new Array();
							var updateNumArray = new Array();
							var updatebeforeName = new Array();
							$("input[class='update_title']").each(function() {
								updateTitleArray.push($(this).val());
								updateNumArray.push($(this).attr("data-cartNum"));
							});
						
							$("span[class='depth_menuContents']").each(function() {
												updatebeforeName.push($(this).html());
															
														});
							$.ajax({
										url : "/homepage/depth_update_ok?menuParents="
												+ MenuParents,
										type : "post",
										data : {
											updateTitle : updateTitleArray,
											updateNum : updateNumArray,
											updatebeforeName : updatebeforeName
										},
										success : function(result) {
											if (result == 1) {
												alert("입력 성공");
												location.href = "/homepage/depth?MenuParents="
														+ MenuParents;
											} else if (result == 2) {
												alert("빈값입니다. 값을 입력해주세요.");
											} else {
												alert("입력 실패");
											}
										}
									});
						}
					});

	//추가
	function addRow() {
		// table element 찾기
		const table = document.getElementById('notice_table');

		// 새 행(Row) 추가
		const newRow = table.insertRow(3);

		// 새 행(Row)에 Cell 추가
		const newCell1 = newRow.insertCell(0);
		const newCell2 = newRow.insertCell(1);
		const newCell3 = newRow.insertCell(2);

		// Cell에 텍스트 추가

		var DepthNextNum = $
		{
			DepthNextNum
		}
		;
		newCell1.innerHTML = '번호는 자동추가';
		newCell2.innerHTML = '<input type="text" placeholder="제목을 입력해주세요" name="input_name" id="input_title"class="input_title" required maxlength="15"> <input type="button"value="X" onClick="input_cancle(this)"> ';
		newCell3.innerHTML = '<input type="checkbox" value="'+DepthNextNum+'" name="delete_chk" data-cartNum="'+DepthNextNum+'" class="delete_chk">'
		newRow.classList.toggle('notice_tr');
		newCell1.classList.toggle('notice_td');
		newCell2.classList.toggle('notice_td');
		newCell2.classList.toggle('notice_title_td');
		newCell3.classList.toggle('notice_td');
		document.querySelector("#before_btn").style.display = "";
		document.getElementById('delete_btn').style.display = "none";
		document.getElementById('insert_finish').style.display = "";
	}
	
	function input_cancle(ths){
		const table = document.getElementById('notice_table');
		const notice_tr = document.querySelectorAll(".notice_tr");
		var parent_title = ths.parentNode.parentNode;
		var index = $( notice_tr ).index( parent_title );

		table.deleteRow(index);
	}

	//추가완료버튼 클릭시
	$("#insert_finish")
			.click(
					function() {
						const MenuParents = document
								.querySelector(".MenuParents").value;
						var confirm_val = confirm("정말 추가하시겠습니까?");
						if (confirm_val) {
							var insertArray = new Array();

							$("input[class='input_title']").each(function() {
								insertArray.push($(this).val());
							});
							$
									.ajax({
										url : "/homepage/depth_insert_ok?menuParents="
												+ MenuParents,
										type : "post",
										data : {
											insertTitle : insertArray
										},
										success : function(result) {
											if (result == 1) {
												alert("입력 성공");
												location.href = "/homepage/depth?MenuParents="
														+ MenuParents;
											} else if (result == 2) {
												alert("빈값입니다.");
											} else {
												alert("입력 실패");
											}
										}
									});
						}
					});
	//삭제버튼 클릭시 동작					
	$(".delete_btn")
			.click(
					function() {
						const MenuParents = document
								.querySelector(".MenuParents").value;
						var confirm_val = confirm("정말 삭제하시겠습니까?");

						if (confirm_val) {
							var checkArr = new Array();

							$("input[class='delete_chk']:checked").each(
									function() {
										checkArr.push($(this).attr(
												"data-cartNum"));
									});
							$
									.ajax({
										url : "/homepage/depth_delete",
										type : "post",
										data : {
											chbox : checkArr
										},
										success : function(result) {
											if (result == 1) {
												alert("삭제 성공");
												location.href = "/homepage/depth?MenuParents="
														+ MenuParents;
											} else {
												alert("삭제 실패");
											}
										}
									});
						}
					});