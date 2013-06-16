<html>
<head>
<meta name="layout" content="project" />
</head>
<body>
	<h3 class="page-header">
    Create Activity
</h3>
<g:form action="save" class="form-horizontal row-fluid">
	<div class="control-group">
	   	<label class="control-label" for="name">Name</label>
	   	<div class="controls">
   		 	<g:textField name="name" class="input-xxlarge" value="${activityInstance.name}" id="name" required="" />
			<g:hasErrors  bean="${activityInstance}" field="name">
          		<span class="help-inline"><g:fieldError bean="${activityInstance}" field="name" /></span>
            </g:hasErrors>
	    </div>
	</div>
	
	<div class="control-group">
		<label for="consultant" class="control-label">Consultant</label>
		<div class="controls">
			<g:select name="consultant.id" 
					  from="${consultants}"
				 	  value="${activityInstance?.consultant?.id}"
				 	  noSelection="${['null':'Select One...']}"
				 	  optionKey="id" optionValue="username"/>
		</div>
		<g:hasErrors  bean="${activityInstance}" field="consultant">
      		<span class="help-inline"><g:fieldError bean="${activityInstance}" field="consultant" /></span>
        </g:hasErrors>
	</div>
	
	<div class="form-actions">
    	<button type="submit" class="btn btn-primary">Create</button>
        <g:link action="list" class="btn">Cancel</g:link>
    </div> 
</g:form>
</body>
</html>
