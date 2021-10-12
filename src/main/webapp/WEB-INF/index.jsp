<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Guest Book 2.0</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<main>
    <section class="form">
        <h1>Guest Book v2</h1>
        <form method="post">
            <fieldset>
                <legend>Leave your comment</legend>
                <label>Author
                <input type="text" name="author" id="author" placeholder="John Smith">
                </label>
                <label for="content">Your Message</label>
                <textarea id="content" name="message" rows="5" placeholder="Great website.."></textarea>
                <button>Send!</button>
            </fieldset>
        </form>
    </section>
<c:if test="${not empty requestScope.entries}">
    <section class="entries"></section>
    <h2>Guest comments (${requestScope.entries.size()})</h2>
    <c:forEach var="entry" items="${requestScope.entries}">
    <div class="entry">
        <h3><c:out value="Author:${entry.author}"/></h3>
        <p><c:out value="${entry.message}"/></p>
    </div>
    </c:forEach>
</section>
</c:if>
</main>
</body>
</html>