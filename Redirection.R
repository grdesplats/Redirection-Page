
library(shiny)
library(shinythemes)
#Bulle color : #d5e2ea
setwd("D:/travail/Etude/DUT STID/4eme_semestre/Projet_Final/Redirection")

ui <- navbarPage("",
    
                 theme = shinytheme("sandstone"),
    tabPanel("Redirection Page",
                 includeCSS("www/styles.css"),
        
             HTML(
        '<div class="section-one">
        <div class="row">
                <div class="col-sm-6">
                  <h1 class="display-3 text-white">Discover World Earthquakes and Eruptions</h1>
                </div>
                <div class="col-sm-6">
                  <a target="_blank">
                    <img class="img-one" src="volcano.png">
                  </a>
                </div>
                <br>
              </div>
        </div>
             
             
        <div class="card-section">
            <div class="grid">
                <div class="grid-item">
                  <div class="card">
                    <img class="card-img" src="landscape.jpg" alt="Rome" />
                    <div class="card-content">
                      <h1 class="card-header">Exploratory </h1>
                      <p class="card-text">
                        Explore <strong>last earthquakes</strong> and active volcanos from the Hazards USGC programs on a interactive map.
                      </p>
                      <a class="card-btn" href = "https://grgory-desplats.shinyapps.io/explorevolcanos" target="_blank">
                        Visit 
                      <span>&rarr;</span></a>
                    </div>
                  </div>
                </div>
                <div class="grid-item">
                  <div class="card">
                    <img
                      class="card-img"
                      src="moutain.jpg"
                      alt="Grand Canyon"
                    />
                    <div class="card-content">
                      <h1 class="card-header">Statistical analyse </h1>
                      <p class="card-text">
                        One of the worlds natural wonders, the iconic Grand Canyon draws
                     oohs and aahs from visitors perched at the edge of its
                    <strong>towering cliffs</strong>.
                        </p>
                            <a class="card-btn" href = "https://grgory-desplats.shinyapps.io/explorevolcanos" target="_blank">
                            Visit 
                            <span>&rarr;</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

                  '
                  )
             
             ),
    tabPanel("about",
             
             includeMarkdown("Packages.Rmd")
             )



    

)

server <- function(input, output) {



}


shinyApp(ui = ui, server = server)


