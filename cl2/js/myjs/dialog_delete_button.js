	
$().ready(){

function openMydialog(obj) {
				//alert(obj.attributes[1].value);//获取href元素的值  	height 
				var url=obj.attributes[1].value;
				var text=obj.attributes[2].value;
				var id=obj.attributes[3].value;
			    $(obj).dialog({id:id, url:url, title:text,width:600,height:352});
			}
			
			var clickNum=0;
			
			//复选框全选
			function checkAllOrCanale(){
				//全选 
				if(clickNum%2==0){
					$("input[name='doc-check-t']").attr("checked","true");//全部选中 
				}else{
					$("input[name='doc-check-t']").removeAttr("checked");//取消全选 
				}
				
				clickNum++;
				checkCount();
			}
			
			//测试选中的复选框的个数
			function checkCount(){
				//获取复选框被选中的次数
				var c_count=$("input:checkbox:checked").length;
				if($('#doc-check-aid').attr('checked')){//判断第一行那个是否选中
					alert(c_count-1);
					c_count--;//删除第一行选中的输入框
				}else{
					//alert(c_count);
				}
				if(c_count>0){
					//使按钮变得可以点击
					document.getElementById("sc_pid").disabled=false;
				}else{
					//使按钮变得不可点击
					document.getElementById("sc_pid").disabled=true;
				}
			}
			
}