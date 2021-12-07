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
# snippet !
# 	`r paste("##", "$$", strrep("#", 76-nchar("$$")))`	


## Inserts code section header
## allows user to select header level (ie. "####", "====", or "----")
## the first character after "!#" should be the header level character you 
## want to use [#=-] followed (with a space) by the header text
## Eg. `!## Level 1 Header`<shift+tab>
## Eg. `!#= Level 2 Header`<shift+tab>
## Eg. `!#- Level 3 Header`<shift+tab>
snippet !
	`r paste("##", substr("$$", 4, nchar("$$")), strrep(substr("$$", 2, 2), 79-nchar("$$")))`

## Two other Previous versions of section header are below #####################
## This one only allows for a set number of "#" and not exact number to margin
snippet section
	## ${1:label} ###############################################
	${2:}

## This one only allows for one word headers. 
## Once a space is inserted, the snippet doesn't work.
snippet h1
	`r paste("##", "$$", strrep("#", 76-nchar("$$")))`

	

## nick's answer on https://stackoverflow.com/questions/32633920/dynamic-rstudio-code-snippet
snippet endhead
	`r paste0(rep.int("-", 88 - rstudioapi::primary_selection(rstudioapi::getActiveDocumentContext())$range$start[2]), collapse = "")`

## Also this for filling in rest of line (inspired by endhead and !)
## For top level header nothing is needed after end 
## otherwise follow end with "=" or "-" for level 2 or level 3 section headers
## Eg. "## Level 1 Header "`end`<shift+tab>
## Eg. "## Level 2 Header "`end=`<shift+tab>
## Eg. "## Level 3 Header "`end-`<shift+tab>
## Eg. `end`<shift+tab>   to fill full line (with no text)
## Eg. `end=`<shift+tab>  to fill full line (with no text)
## Eg. `end-`<shift+tab>  to fill full line (with no text)
snippet end
	`r strrep(ifelse(substr("$$", 1, 1) %in% c("-", "="), substr("$$", 1, 1), "#"), 84 - rstudioapi::primary_selection(rstudioapi::getActiveDocumentContext())$range$start[2])`

################################################################################

