

<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
 <tr>
  <td>
   <fieldset style="width:100%; border : 1px solid #73C8F9;text-align:left;COLOR:#023726;FONT-SIZE: 12px;"><legend align="left"><a href="#" onclick="displaypermission()"><span id="permissionflag">权限分配&nbsp;关闭</span></a></legend>
 
     <table cellSpacing="0" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0" id="dataPopedom">			 
			  <tr>
				 <td class="ta_01" colspan=2 align="left" width="100%" > 
				 	全选/全不选<input type="checkbox" name="selectOperAll" onclick="checkAllOper(this)">
				 	<br>
				         
				         <table cellspacing="0" align="center" width="100%" cellpadding="1" rules="all" bordercolor="gray" border="1" 
									style="BORDER-RIGHT:gray 1px solid; BORDER-TOP:gray 1px solid; BORDER-LEFT:gray 1px solid; WORD-BREAK:break-all; BORDER-BOTTOM:gray 1px solid; BORDER-COLLAPSE:collapse; BACKGROUND-COLOR:#f5fafe; WORD-WRAP:break-word">
							<s:iterator value="#request.elecPopedomList" var="parentPopedom">
								<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
										
										<td class="ta_01"  align="left" width="18%" height="22" background="../images/tablehead.jpg">
											<s:if test="flag==1">
											<input type="checkbox"  name="selectoper" id="<s:property value="mid"/>_<s:property value="mid"/>" value="<s:property value="mid"/>" onClick='goSelect(this.id)' checked="checked" >
											<s:property value="name"/>：
											</s:if>
											<s:else>
											<input type="checkbox"  name="selectoper" id="<s:property value="mid"/>_<s:property value="mid"/>" value="<s:property value="mid"/>" onClick='goSelect(this.id)' >
											<s:property value="name"/>：
											</s:else>
										</td>

									
										<td class="ta_01"  align="left" width="82%" height="22">
											<s:iterator value="#parentPopedom.list" var="childPopedom">
												<s:if test="flag==1">
													<input type="checkbox"  name="selectoper" id="<s:property value="#childPopedom.pid"/>_<s:property value="#childPopedom.mid"/>" value="<s:property value="#childPopedom.mid"/>" onClick='goSelect(this.id)' checked="checked">
													<s:property value="name"/>
												</s:if>
												<s:else>
													<input type="checkbox"  name="selectoper" id="<s:property value="pid"/>_<s:property value="mid"/>" value="<s:property value="mid"/>" onClick='goSelect(this.id)' >
													<s:property value="name"/>
												</s:else>
											</s:iterator>
										</td>
									
									
									
								</tr>
						 </s:iterator>
					</table> 
				            
				        
				 </td>
			  </tr>						
				 <input type="hidden" name="roleID" >						
		 </table>	
        </fieldset>
	  </td>
	</tr>

	
	<tr>
		<td height=10></td>
	</tr>
	
  <tr>
	<td>
	
   <fieldset style="width:100%; border : 1px solid #73C8F9;text-align:left;COLOR:#023726;FONT-SIZE: 12px;"><legend align="left"><a href="#" onclick="displayuser()"><span id="userflag">用户分配&nbsp;关闭</span></a></legend>
 
	<table cellspacing="0" align="center" width="100%" cellpadding="1" rules="all" bordercolor="gray" border="1" id="dataUser"
							style="BORDER-RIGHT:gray 1px solid; BORDER-TOP:gray 1px solid; BORDER-LEFT:gray 1px solid; WORD-BREAK:break-all; BORDER-BOTTOM:gray 1px solid; BORDER-COLLAPSE:collapse; BACKGROUND-COLOR:#f5fafe; WORD-WRAP:break-word">
			    
				<tr style="FONT-WEIGHT:bold;FONT-SIZE:12pt;HEIGHT:25px;BACKGROUND-COLOR:#afd1f3">
				   <td class="ta_01"  align="center" width="20%" height=22 background="../images/tablehead.jpg">选中<input type="checkbox" name="selectUserAll" onclick="checkAllUser(this)"></td>
				   <td class="ta_01"  align="center" width="40%" height=22 background="../images/tablehead.jpg">登录名</td>
				   <td class="ta_01"  align="center" width="40%" height=22 background="../images/tablehead.jpg">用户姓名</td>
				</tr>
				<s:iterator value="#request.elecUserList" var="elecUser">
				 <tr onmouseover="this.style.backgroundColor = 'white'"
					onmouseout="this.style.backgroundColor = '#F5FAFE';">
					
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="20%">
							<s:if test="checked==1">
								<input type="checkbox" name="selectuser" value="<s:property value="userID"/>" checked="checked" />
							</s:if>
							<s:else>
								<input type="checkbox" name="selectuser" value="<s:property value="userID"/>" />
							</s:else>
						</td>
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
							<s:property value="logonName"/>
						</td>
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
							<s:property value="userName"/>
						</td>
					
				</tr>
				</s:iterator>
				
		</table>
    </fieldset>
	 </td>
	 </tr>
			<tr>
		   <td class="ta_01" align="center" colspan=3 width="100%"  height=20>
		   <input type="button" name="saverole" onclick="saveRole()" style="font-size:12px; color:black; height=20;width=50" value="保存">
		   </td>
		</tr>
   </table>
