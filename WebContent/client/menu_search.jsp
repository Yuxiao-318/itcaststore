<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>
<div id="divmenu">
		<a href="${pageContext.request.contextPath}/showProductByPage?category=电子产品">电子产品</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=书本">书本</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=母婴用品">母婴用品计算机</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=鞋子">鞋子</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=衣服">衣服</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=食品">食品</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=虚拟道具">虚拟道具</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=生活用品">生活用品</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=圣诞礼物">圣诞礼物</a>
		<a href="${pageContext.request.contextPath}/showProductByPage" style="color:#b4d76d">全部商品目录</a>		
</div>
<div id="divsearch">
<form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:220px">
				Search 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入商品名"
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/> 
				<a href="#">
					<img src="${pageContext.request.contextPath}/client/images/serchbutton.gif" border="0" style="margin-bottom:-4px" onclick="search()"/> 
				</a>
			</td>
		</tr>
	</table>
</form>
</div>