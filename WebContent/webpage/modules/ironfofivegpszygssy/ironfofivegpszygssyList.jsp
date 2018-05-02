<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>给水水源管理</title>
	<meta name="decorator" content="default"/>
	
</head>
<body class="hideScroll">
		<formid="inputForm" modelAttribute="ironfofivegpszygssy" action="${ctx}/ironfofivegpszygssy/ironfofivegpszygssy/save" method="post" class="form-horizontal">
	<%-- 	<form:hidden path="id"/>
		<sys:message content="${message}"/>	 --%>
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<%-- <td class="width-15 active"><label class="pull-right">备注信息：</label></td>
					<td class="width-35">
						<form:textarea path="remarks" htmlEscape="false" rows="4"    class="form-control "/>
					</td>
					<td class="width-15 active"><label class="pull-right">主表id：</label></td>
					<td class="width-35">
						<form:input path="doc_id" htmlEscape="false"    class="form-control "/>
					</td> --%>
				</tr>
				<tr>
					<td>
					、
						<c:if test="${data.szgw=='1' }">
							<input type="checkbox" name="gpszygssy_name" path="szgw" id="szgw" value="szgw" htmlEscape="false" style="margin-top: -2px;" checked="checked"/>&nbsp;市政管网
						</c:if>
						<c:if test="${data.szgw=='0' }">
							<input type="checkbox" name="gpszygssy_name" id="szgw" value="szgw" path="szgw" tyle="margin-top: -2px;"/>&nbsp;市政管网
						</c:if>
						
					</td>
					<td>
						<c:if test="${data.sjzq=='1' }">
							<input type="checkbox" name="gpszygssy_name" path="sjzq" id="sjzq" value="sjzq" htmlEscape="false" style="margin-top: -2px;" checked="checked"/>&nbsp;水井自取
						</c:if>
						<c:if test="${data.sjzq=='0' }">
							<input type="checkbox" name="gpszygssy_name" id="sjzq" value="sjzq" path="sjzq" tyle="margin-top: -2px;"/>&nbsp;水井自取
						</c:if>
					</td>
					
						
					<input type = "hidden" htmlEscape="false" id="gpszygssy_name_id"   name="gpszygssy_name_id" value="${data.id}"  class="form-control "/>
					<input   type="hidden" name="gpszygssy_name_docId"  id="gpszygssy_name_docId"  value="${data.doc_id}" htmlEscape="false"    class="form-control "/>
						
				</tr>
		 	</tbody>
		</table>
	</form>
	
	
	
	<div style="text-align:right;">
		<input type="button" value="保存"  style="width:100px;height:50px;margin-right: 20px;" onclick="subuimtinput();"/>
	</div>
	
	
	
	<script type="text/javascript">
	

	function subuimtinput(){
		var checkval="";
		var checkout="";
		
		var data = document.getElementsByName("gpszygssy_name");
	 	var docId = document.getElementById("gpszygssy_name_docId").value;
		var id= document.getElementById("gpszygssy_name_id").value; 
		
		
		
		
	
	    check_val = [];
	    check_out = [];
	    for(a in data){
	        if(data[a].checked){
	        	  check_val.push(data[a].value);
	        }else{
	        	  check_out.push(data[a].value);
	        }  
	    } 
	    
	    checkval=checkval+check_val;
	    checkout=checkout+check_out;
		 $.ajax({
		      url:"${ctx}/ironfofivegpszygssy/ironfofivegpszygssy/save",
		      data:{
		    	  docId:docId,
		    	  checkval:checkval,
		    	  checkout:checkout,
		    	  id:id
		    	     },
		      type:"post",
		      
		      success:function(data){
		    	   alert("保存成功"); 
		    	   location.reload();
		      }
		    });
	}
	</script>
	
	
	
	
	
</body>
</html>