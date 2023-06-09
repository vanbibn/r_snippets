## From Raymond R. Balise (shared in R-Medicine 2023 workshop)
## https://github.com/vanbibn/r_snippets/blob/main/R/snippets.R


##### Ray was here #####

snippet ggviolin
	ggplot(aes(x = ${1:factor}, y = ${2:numeric})) +
		geom_violin(draw_quantiles = c(.25, .5, .75)) +
		stat_summary(fun = mean, geom = "point", shape = 4, size = 4, color = "red") +
		labs(
			title = "${3:title}",
			y = "${4:label}"
		) +
		theme_few() +
		theme(axis.title.x = element_blank())

# mutate case when
snippet mcw 
	mutate(${1:variable} =
				 	case_when(
				 		${2:condition} ~ ${3:value},
				 		${4:condition} ~ ${5:value},
				 		TRUE ~ ${6:otherwise}
				 	)
	)

# mutate if else
snippet mie 
	mutate(${1:variable} =
				 	if_else(
				 		${2:condition}, ${5:if_value}, ${6:else_value}
				 	)
	)

# shiny multi-row layout
snippet shinymr
	library(shiny)
	
	ui <- 
		fluidPage(
			fluidRow(
				column(4,
							 ${1:content}
				),
				column(8,
							 
				)
			),
			fluidRow(
				column(6,
							 
				),
				column(6,
							 
				)
			)
		)
	
	server <- function(input, output, session) {
		
	}
	
	shinyApp(ui, server)

# shiny sidebar layout
snippet shinysb
	library(shiny)
	
	ui <- fluidPage(
		titlePanel(
			"${1:title}"
		),
		sidebarLayout(
			sidebarPanel(
				${2:inputs}
			),
			mainPanel(
				
			)
		)
	)
	
	server <- function(input, output, session) {
		
	}
	
	shinyApp(ui, server)

# quarto hash pipe
snippet hp
	#| ${1:option}

# quarto hash pipe
snippet hpl
	#| label: ${1:label}

# quarto hash pipe for figure
snippet hpf
	#| label: fig-${1:label}
	#| fig-cap: ${2:caption}
	#| echo: false

# quarto hash pipe for table
snippet hpt
	#| label: tbl-${1:label}
	#| tbl-cap: ${2:caption}
	#| echo: false 

