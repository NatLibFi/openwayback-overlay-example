<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.archive.wayback.core.UIResults" %>
<%@ page import="org.archive.wayback.util.StringFormatter" %>
<jsp:include page="/WEB-INF/template/UI-header.jsp" flush="true" />
<%
UIResults results = UIResults.getGeneric(request);
StringFormatter fmt = results.getWbRequest().getFormatter();
Object names = request.getAttribute("AccessPointNames");
if(names != null) {
        if(names instanceof ArrayList) {
                ArrayList<String> accessPoints = (ArrayList<String>) names;
                if(accessPoints.size() > 0) {
                        %>
                            <%= fmt.format("UIGlobal.wrongAccesspoint") %>
                        <%
                }
                for(String accessPoint : accessPoints) {
                        %>
                         <a href="<%= request.getContextPath() + "/" + accessPoint %>/"><%= accessPoint %></a><br></br>
                        <%
                }
        }
}
%>
<p>
	<h1>THIS LINE HERE IS A CUSTOMIZATION (don't use hardcoded strings in production!)</h1>
        <%= fmt.format("UIGlobal.indexPage") %>
</p>
<jsp:include page="/WEB-INF/template/UI-footer.jsp" flush="true" />
