library(extrafont)
library(extrafontdb)
library(showtext)
library(jpeg)
library(imager)
library(patchwork)
showtext.auto()
library(cowplot)
library(magick)
library(png) 
font.add("StagSans", regular="C:/Users/valexandre/AppData/Local/Microsoft/Windows/Fonts/Stag Sans-Light.otf")
font_add("Graphik", regular = "C:/Users/valexandre/AppData/Local/Microsoft/Windows/Fonts/Graphik-Regular.ttf",
         bold="C:/Users/valexandre/AppData/Local/Microsoft/Windows/Fonts/GraphikCondensed-Bold.otf" )
font_add("GothamNarrowThin", regular = "C:/Users/valexandre/AppData/Local/Microsoft/Windows/Fonts/GothamNarrow-Thin.ttf")
font_add("GothamMedium", regular = "C:/Users/valexandre/AppData/Local/Microsoft/Windows/Fonts/GothamMedium.ttf")
font_add("GothamThin", regular = "C:/Users/valexandre/AppData/Local/Microsoft/Windows/Fonts/Gotham-Thin.ttf")
font_add("GothamCondensed-Book", regular = "C:/Users/valexandre/AppData/Local/Microsoft/Windows/Fonts/GothamCondensed-Medium.otf")
my_image <- readJPEG("C:/Users/valexandre/Downloads/carre (1).jpg", native = TRUE)
theme_LP<-theme(legend.position = "top", 
                panel.grid.major = element_line(colour = "gray90"), 
      panel.grid.minor = element_blank(), 
      axis.text.x =element_text(family="GothamCondensed-Light",size = 20,hjust = 0.5),
      axis.text.y = element_text(family="GothamCondensed-Light",size = 20,hjust = 0.5),
      plot.background = element_rect(fill = "white", color = "white"), 
      legend.background = element_rect(fill = "white", color = NA), 
      panel.background = element_rect(fill = "white", color = "white"), 
      plot.caption = element_text(hjust=c(0.05, 0.95),family="StagSans",size=16,vjust=0.5,colour="#727272",                      margin = margin(0,40,40,40)),
      plot.title=element_text(family="Graphik",face="bold", colour="#000000",size=45,vjust=1,hjust=0),
      plot.subtitle = element_text(family="GothamNarrowThin",size = 20,hjust = 0,colour="#727272"),
      panel.spacing=unit(0, "mm"),
      plot.margin=margin(0,0,0,0))
image<-  inset_element(align_to = "full",on_top = T, p = my_image,
                left = 0.92,bottom = 0.92,right = 0.99,top = 0.99)
