<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <h1>Titre stylé pour sport</h1>
        <form action="/recherche" method="post">
            Activite:
            <Select name="activity">
                <option value="empty">Choisir une activité</option>
                %for option in activity_tab:
                    <option value = "{{option[0]}}"> {{option[0]}} </option>
                %end
            </Select>
            
            Ville: 
            <Select name="city">
                <option value="empty">Choisir une ville</option>
                %for option in city_tab:
                    <option value = "{{option[0]}}"> {{option[0]}} </option>
                %end
            </Select>

            <input value="Rechercher" type="submit">
        
        </form>


    </body>
</html>
