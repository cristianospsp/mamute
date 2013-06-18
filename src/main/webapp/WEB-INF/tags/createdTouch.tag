<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@attribute name="touchable" type="br.com.caelum.brutal.model.interfaces.Touchable" required="true" %>
<%@attribute name="microdata" required="false" %>
<tags:completeUser user="${touchable.author}" edited="false" microdata="${microdata}">
	<time class="when" ${microdata ? 'itemprop="dateCreated"' : ''} datetime="${touchable.createdAt}"><fmt:message key='touch.created'/> <tags:prettyTime time="${touchable.createdAt}"/></time>
</tags:completeUser>