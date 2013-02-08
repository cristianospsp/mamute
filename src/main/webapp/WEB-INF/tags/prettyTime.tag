<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="time" required="true" type="org.joda.time.base.AbstractInstant"%>
<%
	if (time != null) {
		org.joda.time.base.AbstractInstant time = (org.joda.time.base.AbstractInstant) jspContext
				.getAttribute("time");
		
		if(time.toDateTime().isAfter(new org.joda.time.DateTime().minusMonths(1))){
			org.ocpsoft.prettytime.PrettyTime formatter = (org.ocpsoft.prettytime.PrettyTime) request
				.getAttribute("prettyTimeFormatter");
			out.write(formatter.format(time.toDate()));
		}else{
			org.joda.time.format.DateTimeFormatter formatter = org.joda.time.format.DateTimeFormat.forPattern("dd/MM/yyyy");
			out.write(formatter.print(time));
		}
	}
%>
