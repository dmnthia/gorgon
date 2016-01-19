<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/s/bs/dt-1.10.10,fh-3.1.0,r-2.0.0/datatables.min.css"/>

    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/qtip2/2.2.1/jquery.qtip.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.10/css/dataTables.bootstrap.min.css">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script src="/assets/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/s/bs/dt-1.10.10,fh-3.1.0,r-2.0.0/datatables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="http://cdnjs.cloudflare.com/ajax/libs/qtip2/2.2.1/jquery.qtip.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/style.css">
    <script>
      $(document).ready(function() {
        // Apply tooltips to any item in the page
        $('.itemtooltip').on('mouseover', function(event) {
            overwrite: false,
            $(this).qtip({
                content: {
                      text: 'Loading...',
                      ajax: {
                          url: $(this).attr('rel')
                      } 
                },
                show: {
                    event: event.type,
                    ready: true,
                    solo: true
                },
                position: {viewport: $(window)},
                style: {
                  classes: "qtip-tipsy"
                }
            });
        });
      });
    </script>


  </head>
  <body>

    <nav id="navMenu" class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${home_location}">GorgonEye <span class="label label-danger">BETA</span></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="${items_location}" title="View and search all items">Items</a></li>
            <li><a href="${skills_location}" title="Explore every skill">Skills</a></li>
            <li><a href="${abilities_location}">Abilities</a></li>
            <li><a href="${powers_location}">Mods</a></li>
            <li><a href="${recipes_location}">Recipes</a></li>
            <li><a style="color: red; font-weight: bold" href="https://github.com/dmnthia/gorgon/issues">Report bug!</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container-fluid">
