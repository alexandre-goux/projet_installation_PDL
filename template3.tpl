<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
      <!--Mon Javascript-->
      <script type="text/javascript" src="/static/maps.js"></script>

      <!--Librairie Gmaps.js-->
      <script src="http://maps.google.com/maps/api/js?v=3&amp"></script>
      <script src="/static/gmaps.js"></script>
    </head>

    <script>
        %for option in answer:
            var latitude = {{option[5]}};
            var longitude = {{option[6]}};
        %end
    </script>

    <body>
        <h1>Maps</h1>
        %if len(answer) > 0:

        %for option in answer:
        <h3>{{option[0]}} à {{option[1]}} {{option[2]}}</h3>
        <p>{{option[3]}} {{option[4]}}</p>

        %end

        %else:
            <p> Il n'y a pas de résultat pour votre requête</p>
        %end

        <br>
        
        <div id="maps"></div>

        <br>

        <a href="http://localhost:8080/recherche">Nouvelle Recherche</a>

    </body>
</html>
