## converts forward slashes in Windows path to backslashes.
##   workes whether copied from address bar in explorer or 
##   using Shift+RightClick on a file and selecting "Copy as path"
## https://stackoverflow.com/questions/17605563/efficiently-convert-backslash-to-forward-slash-in-r
snippet pp
	"`r gsub('\"', "", gsub("\\\\", "/", readClipboard()))`"


################################################################################

## Inserts code section header
## Type text for header after "!" then hit shift+tab
## Eg. `!Level 1 Header`<shift+tab>
## inspired by https://support.rstudio.com/hc/en-us/articles/204463668-Code-Snippets#:~:text=evaluate%20an%20expression%20following%20an%20!
snippet !
	`r paste("##", "$$", strrep("#", 76-nchar("$$")))`	


## Inserts code section header
## allows user to select header level (ie. "####", "====", or "----")
## the first character after "!" should be the header level character you 
## want to use [#=-] followed directly (no space) by the header text
## Eg. `!#Level 1 Header`<shift+tab>
## Eg. `!=Level 2 Header`<shift+tab>
## Eg. `!-Level 3 Header`<shift+tab>
snippet !
	`r paste("##", substr("$$", 2, nchar("$$")), strrep(substr("$$", 1, 1), 77-nchar("$$")))`


## Two other Previous versions of section header are below #####################
## This one only allows for a set number of "#" and not exact number to margin
snippet section
	## ${1:label} ###############################################
	${2:}

## This one only allows for one word headers. 
## Once a space is inserted, the snippet doesn't work.
snippet h1
	`r paste("##", "$$", strrep("#", 76-nchar("$$")))`
	
################################################################################
