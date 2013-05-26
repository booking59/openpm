<div class="mainnav navbar navbar-fixed-top navbar-inverse">
    <div class="navbar-inner">
        <div class="container-fluid">
        	<a class="brand" href="#">Open Project Management</a>
            <ul class="nav">
				<li class="${controllerName == 'project' ? 'active' :''}">
					<g:link controller="project" action="list">Projects</g:link>
				</li>
				<li class="${controllerName == 'invoice' ? 'active' :''}"><a href="#about">Invoices</a></li>
				<li class="${controllerName == 'admin' ? 'active' :''}">
					<g:link controller="admin">Administration</g:link></li>
				<li><a href="#about">About</a></li>
			</ul>
			<div class="btn-group pull-right">
				<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
					<i class="icon-user"></i> <shiro:principal /> <span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<li><g:link controller="user" action="edit"><i class="icon-wrench"></i> My Profile</g:link></li>
					<li class="divider"></li>
					<li><a href="#"><i class="icon-share"></i> Logout</a></li>
				</ul>
			</div>
        </div>
    </div>
</div>

<div class="subnav navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <ul class="nav">
                <li><g:link controller="user" action="list"><i class="icon-user"></i>Users</g:link></li>
                <li><g:link controller="client">Clients</g:link></li>
                <li><g:link controller="country"><i class="icon-flag"></i>Countries</g:link></li>
            </ul>
        </div>
    </div>
</div>
