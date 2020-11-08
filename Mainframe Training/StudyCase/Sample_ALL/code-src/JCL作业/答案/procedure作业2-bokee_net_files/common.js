

/*登录浮层*/
function reverseDisplay(id){
	var obj=document.getElementById(id);
	if(obj.style.display=='none') obj.style.display='block';
	else{
		obj.style.display='none';
	}
}


function setCopy(_sTxt){
	if(navigator.userAgent.toLowerCase().indexOf('ie') > -1) {
		clipboardData.setData('Text',_sTxt);
		alert ("网址“"+_sTxt+"”\n已经复制，\n按Ctrl+V 粘贴到MSN、QQ上告诉您的朋友们！");
	} else {
		prompt("请复制网站地址:",_sTxt); 
	}
}

/*文章列表展开.列表*/

function cmChangeElementBold(strHtmlID,bDesStatus) {
	var emDes = document.getElementById(strHtmlID);
	if (emDes != null) { 
		if (bDesStatus==false){
			emDes.style.fontWeight="";
		} else {
			emDes.style.fontWeight="bold";
		}
	}
}

function hpArticlesChangeListType(nListType){	
	var emTemp = document.getElementById("articles_ListType_"+nListType+"_a");
	if( emTemp !=null){
		cmChangeElementBold("articles_ListType_"+(1-nListType)+"_a",false);
		cmChangeElementBold("articles_ListType_"+nListType+"_a",true);		
		
		var arremRowContents = document.getElementsByName("articles_Row_Content_hidden");
		var i;
		for (i=0;i<arremRowContents.length;i++) {
			if( nListType==0){
				arremRowContents[i].parentNode.style.display="";
			}else{
				arremRowContents[i].parentNode.style.display="none";
			}
		}
	}
}

// Set Article Font Size 字体大小选择
function setFontSize(pt){
  try{
    var t=document.getElementById("textboxContent");
    if(t){
      t.style.fontSize=pt+"px";
    }
  }catch(e){}
}

// input
function cmPromptTextOnFocus(a){
	a.value="";
}

// 隐藏某些内容
function reverseDisplay2(id){
	var sub_div_obj	 = document.getElementById('sub_div_'+id);
	var main_img_obj = document.getElementById('main_img_'+id);
	if(sub_div_obj.style.display == "none"){
		sub_div_obj.style.display = "block";
		main_img_obj.src = "/panelmodule/images/dec.gif";
	}else{
		sub_div_obj.style.display = "none";
		main_img_obj.src = "/panelmodule/images/plus.gif";
	}
}
