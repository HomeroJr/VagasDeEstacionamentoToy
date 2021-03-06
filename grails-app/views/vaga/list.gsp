
<%@ page import="exemplodaauladetestes.Vaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vaga.label', default: 'Vaga')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vaga" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link action="overview"><g:message code="default.overview.label" default="Over" /></g:link></li>
			</ul>
		</div>
		<div id="list-vaga" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'vaga.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="ocupada" title="${message(code: 'vaga.ocupada.label', default: 'Ocupada')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vagaInstanceList}" status="i" var="vagaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vagaInstance.id}">${fieldValue(bean: vagaInstance, field: "descricao")}</g:link></td>
					
						<td><g:formatBoolean boolean="${vagaInstance.ocupada}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vagaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
