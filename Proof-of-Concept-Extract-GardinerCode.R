library(yaml)
options(warn=-1)
yamldata <- yaml.load_file(file.path("data","incorrect-gardiner-codes.yml"))
filename <- "incorrect.txt"
write(paste("Gardiner Signs for ",yamldata$project$properties$title), file=filename, append=FALSE)
for (sentence in yamldata$project$sentences)
{
  for (word in sentence$words)
  {
    for (glyph in word$glyphs)
    {
      write(glyph$gardinerCode, file=filename, append=TRUE)
    }
    
  }
  
}
library(yaml)
options(warn=-1)
yamldata <- yaml.load_file(file.path("data","correct-gardiner-codes.yml"))
filename <- "correct.txt"
write(paste("Gardiner Signs for ",yamldata$project$properties$title), file=filename, append=FALSE)
for (sentence in yamldata$project$sentences)
{
  for (word in sentence$words)
  {
    for (glyph in word$glyphs)
    {
      write(glyph$gardinerCode, file=filename, append=TRUE)
    }
    
  }
  
}
