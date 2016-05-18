<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <h1>Titre stylé pour sport</h1>
        %if len(answer) > 0:
        <table>
            <thead>
                <tr>
                    <th>Nom de l'installation</th>
                    <th>Nom de l'équipement</th>
                    <th>Nom de l'activité</th>
                    <th>Nom de la ville</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                %for option in answer:
                    <tr>
                        <td>{{option[0]}}</td>
                        <td>{{option[1]}}</td>
                        <td>{{option[2]}}</td>
                        <td>{{option[3]}}</td>
                        <td><a href="./maps/{{option[4]}}">Let's go</a></td>
                    </tr>
                %end
            </tbody>
        </table>
        %else:
            <p> Il n'y a pas de résultat pour votre requête</p>
        %end
    </body>
</html>
