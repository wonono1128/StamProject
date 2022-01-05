
	
	function fn_checkByte(obj){
	    const maxByte = 40; //최대 100바이트
	    const text_val = obj.value; //입력한 문자
	    const text_len = text_val.length; //입력한 문자수
	    var str2 = "";
	    
	    let totalByte=0;
	    
	    let totalByteChk= 0;
	    for(let i=0; i<text_len; i++){
	    	const each_char = text_val.charAt(i);
	        const uni_char = escape(each_char) //유니코드 형식으로 변환
	        if(uni_char.length>4){
	        	// 한글 : 2Byte
	            totalByte += 2;
	            totalByteChk += 1; 
	        }else{
	        	// 영문,숫자,특수문자 : 1Byte
	            totalByte += 1;
	            totalByteChk += 1; 
	        }
	    }
	    
	    if(totalByte>maxByte){
	    	alert('최대 40Byte까지만 입력가능합니다.');
	    	//한영을 구분하지않고 자릿수생각하려고 totalByteChk 사용
	    	str2 = text_val.slice(0,totalByteChk-1); 
	    	alert(str2);                            
      		obj.value = str2;
			
	    }
    }