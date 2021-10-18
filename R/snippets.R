## converts forward slashes in Windows path to backslashes.
##   workes whether copied from address bar in explorer or 
##   using Shift+RightClick on a file and selecting "Copy as path"
## https://stackoverflow.com/questions/17605563/efficiently-convert-backslash-to-forward-slash-in-r
snippet pp
    "`r gsub('\"', "", gsub("\\\\", "/", readClipboard()))`"


