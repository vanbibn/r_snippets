## From Raymond R. Balise
## https://gist.github.com/RaymondBalise/3ed5c1dfabc5ca1514462b57cecb5666


# 2022-09-09

# cross reference/hyperlink
snippet [
	[${1:label}](${2:location})

	
# cross reference/hyperlink image
snippet ![
	![${1:label}](${2:location})
	

# quarto labeld R code chunk
snippet rl
	```{r}
	#| label: ${1:label}
	
	${2}
	```

	
# quarto callout note
snippet con
	:::{.callout-note  appearance=minimal}
	${1:text}
	:::
		

# quarto callout tip	
snippet cot
	:::{.callout-tip appearance=simple}
	${1:text}
	:::

		
# quarto callout warning
snippet cow
	:::{.callout-warning appearance=simple}
	${1:text}
	:::
		

# quarto two column display
snippet two
	:::: {.columns}
	
	::: {.column width="50%"}
	${1:left-content}
	:::
		
		::: {.column width="50%"}
	${2:}
	:::
	::::

				
# quarto slide speaker note
snippet note
	::: {.notes}
	${1:note}
	:::