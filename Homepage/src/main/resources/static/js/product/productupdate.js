
//고객 로고
	let log_img = document.getElementById("log_img");
	let log_img_update = document.getElementById("log_img_update");
	let log_img_cancle = document.getElementById("log_img_cancle");
	let log_cancleflag = 0; // 0 = >유지   1=> 새로운 이미지로 변경 2=>이미지를 아예없앰
	let log_img_after;

	// 회사 로고 첨부파일 동작	
	function change() {
		if (!log_img.value) { 
			log_img.value = log_img_after;
			document.getElementById("cancleflag").value = log_cancleflag;
		} else {
		
			log_img.style.display = "";
			log_img_update.style.display = "none";
			log_img_after = log_img.value;
			log_img_cancle.style.display = "";
			log_cancleflag = 1;
			document.getElementById("cancleflag").value = log_cancleflag;
		}

	}
	log_img.addEventListener('change', change);

	function cancle() {
		log_cancleflag = 0;

		log_img.style.display = "none";
		log_img_update.style.display = "";
		log_img_after = log_img.value;
		log_img_cancle.style.display = "none";
		document.getElementById("cancleflag").value = log_cancleflag;
	}

	function delete_img() {

		$("#log_img").val(""); //파일 초기화
		log_img.style.display = "";
		log_img_update.style.display = "none";
		log_img_after = log_img.value;
		log_img_cancle.style.display = "";
		log_cancleflag = 2;
		document.getElementById("cancleflag").value = log_cancleflag;
	}
// 사업 이미지
	// 제품 첨부파일 동작
	let product_img = document.getElementById("product_img");
	let product_img_update = document.getElementById("product_img_update");
	let product_img_cancle = document.getElementById("product_img_cancle");
	let product_cancleflag = 0; // 0 = >유지   1=> 새로운 이미지로 변경 2=>이미지를 아예없앰
	let product_img_after;

	function change_product() {
		if (!product_img.value) {
			product_img.value = product_img_after;
			document.getElementById("productcancleflag").value = product_cancleflag;
		} else {
			product_img.style.display = "";
			product_img_update.style.display = "none";
			product_img_after = product_img.value;
			product_img_cancle.style.display = "";
			product_cancleflag = 1;
			document.getElementById("productcancleflag").value = product_cancleflag;
		}

	}
	product_img.addEventListener('change', change_product);

	function product_cancle() {
		product_cancleflag = 0;

		product_img.style.display = "none";
		product_img_update.style.display = "";
		product_img_after = product_img.value;
		product_img_cancle.style.display = "none";
		document.getElementById("productcancleflag").value = product_cancleflag;
	}

	function product_delete_img() {

		$("#product_img").val(""); //파일 초기화
		product_img.style.display = "";
		product_img_update.style.display = "none";
		product_img_after = product_img.value;
		product_img_cancle.style.display = "";
		product_cancleflag = 2;
		document.getElementById("productcancleflag").value = product_cancleflag;
	}
	
// 사업 주제
	// 제품 첨부파일 동작
	let year_img = document.getElementById("year_img");
	let year_img_update = document.getElementById("year_img_update");
	let year_img_cancle = document.getElementById("year_img_cancle");
	let year_cancleflag = 0; // 0 = >유지   1=> 새로운 이미지로 변경 2=>이미지를 아예없앰
	let year_img_after;

	function change_year() {
		if (!year_img) {
			year_img.value = year_img_after;
			document.getElementById("yearcancleflag").value = year_cancleflag;
		} else {
			year_img.style.display = "";
			year_img_update.style.display = "none";
			year_img_after = product_img.value;
			year_img_cancle.style.display = "";
			year_cancleflag = 1;
			document.getElementById("yearcancleflag").value = year_cancleflag;
		}

	}
	year_img.addEventListener('change', change_year);

	function year_cancle() {
		year_cancleflag = 0;

		year_img.style.display = "none";
		year_img_update.style.display = "";
		year_img_after = year_img.value;
		year_img_cancle.style.display = "none";
		document.getElementById("yearcancleflag").value = year_cancleflag;
	}

	function product_delete_img() {

		$("#product_img").val(""); //파일 초기화
		year_img.style.display = "";
		year_img_update.style.display = "none";
		year_img_after = year_img.value;
		year_img_cancle.style.display = "";
		year_cancleflag = 2;
		document.getElementById("yearcancleflag").value = year_cancleflag;
	}	
