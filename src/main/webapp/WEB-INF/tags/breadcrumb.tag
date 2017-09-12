<%@ tag import="com.hhly.constant.SysConstant"%>
<%@ tag import="com.hhly.base.entity.Menu"%>
<%@ tag import="java.util.List"%>
<%@ tag import="java.util.Map"%>
<%@ tag import="com.google.common.collect.Lists"%>
<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    Map<Integer,Menu> menuMap = (Map)session.getAttribute(SysConstant.SESSION_MENU_MAP);
    Integer menuId = Integer.valueOf(session.getAttribute("menuId").toString());
    List<Menu> menuList = Lists.newLinkedList();
    Menu cur = menuMap.get(menuId);
    if(cur!=null) {
        menuList.add(0, cur);
        while (cur.getParentId() != 0) {
            cur = menuMap.get(cur.getParentId());
            menuList.add(0, cur);
        }
    }
    request.setAttribute("menuList",menuList);
%>
<c:forEach items="${menuList}" var="item">
	<li>${item.name}<%--<c:if test="${item.url!=null}"> <a href="<c:url value="/${item.url}"/>">${item.name}</a></c:if>--%>
		<%--<c:if test="${item.url==null}"> ${item.name}</c:if>--%>
	</li>
</c:forEach>