<div class="page-header">
   <h1>Context parameters</h1>
</div>


ActiveWeb provides a number of context parameters available in the views. 
Any of these parameters can be rendered on a page or used in conditional logic 
like any other parameters passed from a filter or a controller.
  
All these parameters are members of the object `activeweb`.
For example, if you use a [DebugTag](views#debug-tag) to reflect the contents of this object: 
 
```html
<@debug print=activeweb/>
```

you will see the following output: 

```
{environment=development, controller=/pages, restful=true, action=show}
```


## ActiveWeb parameters

Currently these parameters are set on every view by the framework:
`environment`, `controller`, `action`, `restful`. 
 
### The environment parameter

This a value of the environment variable `environment`. Normally, it has such values as `development`, `test`, `staging`, `production`. 

Most of the time tt is used to configure different database connection parameters for different execution environments. 
For more information, refer to [AppConfig](app-config), [Database Connection Management](database_connection_management), [Database Configuration](database_configuration).

  
### The controller parameter 

Full path of the controller:
 
controller path                              controller
-------------------------                    ----------------------------------------
 /package1/books                              app.controllers.package1.BooksController
 /people                                      app.controllers.PeopleController

 

### The action parameter

This is simply an action of the controller that is being executed according to the route. For more information, refer to [Routing](routing). 



### The restful parameter

It simply contains the boolean value that shows if this controller is [Restful](routing#restful-routing). 
  
## Usage

Generally you might use the `environment` parameter to expose a special feature in let's say development environment:  


```html
<#if activeweb.controller == "/pages">
    <#--display an important hidden feature-->
</#if>

```

Using other parameters might be considered a hack - you decide. 
