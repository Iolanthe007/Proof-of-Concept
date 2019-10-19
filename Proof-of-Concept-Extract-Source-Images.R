library(yaml)
library(base64enc)
library(magick)
yamldata <- yaml.load_file(file.path("data","extract-source-images.yml"))
#image <- yamldata[['files']]
for (source in yamldata$files$sources)
{
  imageData <- (source$dataURL)
}
imagesource <- gsub("^data.*base64, *", "", imageData)
decodedimagesource <- base64decode(imagesource)
writeBin(decodedimagesource, "source-image.png")

yamldata <- yaml.load_file(file.path("data","correct-gardiner-codes.yml"))
#image <- yamldata[['files']]
for (source in yamldata$files$sources)
{
  imageData2 <- (source$dataURL)
}
imagesource2 <- gsub("^data.*base64, *", "", imageData2)
decodedimagesource2 <- base64decode(imagesource2)
writeBin(decodedimagesource2, "source-image2.png")

yamldata <- yaml.load_file(file.path("data","correct-gardiner-codes.yml"))
#image <- yamldata[['files']]
for (source in yamldata$files$sources)
{
  imageData3 <- (source$dataURL)
}
imagesource3 <- gsub("^data.*base64, *", "", imageData3)
decodedimagesource3 <- base64decode(imagesource3)
writeBin(decodedimagesource3, "source-image3.png")