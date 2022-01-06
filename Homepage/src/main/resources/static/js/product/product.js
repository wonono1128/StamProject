$(".product_delete_btn")
			.click(
					function() {
						const menuContents = document.querySelector(".menuContents").value;
						const menuParents = document.querySelector(".menuParents").value;
						var confirm_val = confirm("정말 삭제하시겠습니까?");

						if (confirm_val) {
							var checkArr = new Array();

							$("input[class='deleteChk']:checked").each(
									function() {
										checkArr.push($(this).attr(
												"data-cartNum"));
									});
							$
									.ajax({
										url : "/homepage/product_delete",
										type : "post",
										data : {
											chbox : checkArr
										},
										success : function(result) {
											if (result == 1) {
												alert("삭제 성공");
												if(menuParents == "BRAND"){
													location.href = "/homepage/product?menuParents=" + menuParents + "&menuContents="
														+ menuContents;
														}else{
														location.href = "/homepage/product?menuContents="
														+ menuContents;
														}
											
											
											} else {
												alert("삭제 실패");
											}
										}
									});
						}
					}); 
		function go_content(e) {
		let Id = document.getElementById(e.getAttribute('id')).getAttribute(
				'id');

		location.href = "/homepage/product_content?productCode=" + Id;
	}