$(document).ready(function () {
    
   $(".search-button").click(function() {
        let search = $("#search-field").val()
        
        $.ajax({
            method: "GET",
            url: "models/movies/filter.php",
            data: {
                search : search
            },
            dataType: "json",
            success: function(data) {
                printMovies(data);
            },
            error: function(xhr,status,error) {
                console.log(xhr);
            }
        });

        $.ajax({
            url: "adresu",
            data: {
                id:id
            },
            success
        });
   });


   $(document).on("click", ".del", function(e) {
       e.preventDefault();
       var id = $(this).data("id");
       
       $.ajax({
           method: "GET",
           url: "models/movies/delete.php",
           data: {
               id : id
           },
           success: function(data) {
               location.reload();
           },
           error: function(xhr, statusText, error) {
                var status = xhr.status;
                switch(status) {
                    case 500:
                        alert("Server error!");
                        break;
                    case 404:
                        alert("Page not found!");
                        break;
                    default:
                        alert("ERROR: " + status + " - " + statusText);
                        break;
                }
           }
       });      
   });

   
   $(document).on("click", ".sort", function(e) {
     e.preventDefault();
     var id = $(this).data("id");

     $.ajax({
         method: "GET",
         url: "models/movies/sort.php",
         data: {
             id : id
         },
         dataType: "json",
         success: function(data) {
             printMovies(data);
         },
         error: function(xhr, statusText, error) {
             alert(error);
         }
     });
});

    function printMovies(movies) {
        let html = "";
        for(let movie of movies) {
            html += `<div class="oneMovie">
                <div class="moviePic">
                <img src="assets/images/movies/${movie.moviePicture}" alt="${movie.movieHeading}" width="140px"/>
                </div>
                <div class="movieInfo">
                <h2><a href="index.php?page=movie&movie=${movie.idMovie}">${movie.movieHeading}</a></h2>
                <br>
                <p><i class="colorIt">Date:</i> <i>${movie.movieDate}</i></p>
                <p><i class="colorIt">Director:</i> ${movie.director.nameDirector}</p>
                <p><i class="colorIt">Actors: </i> ${printActors(movie.actors)}</p>
                <p><i class="colorIt">Duration: </i><i>${movie.movieDuration}min</i></p>
                <i class="colorIt">Rating: </i>
                ${printRating(movie.movieRating)}
                <div class="summary">
                    <p><i class="small">${movie.movieDescription}</i></p>
                </div>
                </div>
                </div>
            `;
            $("#main").html(html);
        }
    }

    function printActors(actors) {
        let html = "";
        for(let i in actors) {

            if(i == 0) {
                html += `${actors[i].nameActor}`;
            } else {
                html += `, ${actors[i].nameActor}`;
            }
        }
        return html;
    }

    function printRating(stars) {
        let fullStars = Math.floor(stars);
        let halfStar = (Math.floor(stars) == stars) ? 0 : 1;
        let emptyStars = 5 - fullStars - halfStar;
        let html = "";

        for(let i = 0; i < fullStars; i++) {
            html += '<i class="fas fa-star fa-xs">&nbsp;</i>';
        }
        if(halfStar) {
            html += '<i class="fas fa-star-half-alt fa-xs">&nbsp;</i>';
        }
        for(let i = 0; i < emptyStars; i++) {
            html += '<i class="far fa-star fa-xs">&nbsp;</i>';
        }

        return html;
    }

});