library(pagedown)
library(qpdf)

pagedown::chrome_print("Böhme-Dylan-kurz.html", 
                       options = 
                         list(
                           printBackground = FALSE,
                           preferCSSPageSize = FALSE, 
                           paperWidth = 8.3, paperHeight = 11.7, 
                           marginTop = 0.1, marginBottom = 0, 
                           marginLeft = 0.1, marginRight = 0.1),
                       wait = 6,
                       output = "Böhme-Dylan-kurz.pdf")


qpdf::pdf_subset(input = "Böhme-Dylan-kurz.pdf",
           pages = c(1:2, 4:27, 29:72, 75:80, 82, 83),
           output = "Böhme-Dylan-kurz2.pdf")

