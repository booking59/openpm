<html>
<head>
	<meta name="layout" content="main" />
</head>
<body>

<table class="table">
	<thead>
		<tr>
			<th>Name</th>
			<th>Code</th>
			<th>Client</th>
			<th>Countries</th>
			<th></th>
		</tr>
	</thead>
	<g:each in="${projects}" var="project">
		<tr>
			<td>${project.name}</td>
			<td>${project.code}</td>
			<td>${project.client.name}</td>
			<td>${project.countries.name.join(',')}</td>
			<td class="align-right">
				<g:link action="edit" id="${project.id}" class="btn btn-small btn-warning table-edit"><i class="icon-edit icon-white"></i></g:link>
				<a class="btn btn-small btn-danger" data-toggle="modal" href="#modalPanel"><i class="icon-remove icon-white"></i></a>
			</td>
		</tr>
	</g:each>
</table>
<g:link action="create" class="btn btn-primary"><i class="icon-plus icon-white"></i> Add new project</g:link>

<g:render template="/common/modal"/>

</body>
</html>

	
