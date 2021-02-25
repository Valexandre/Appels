Packages <- c("tidyverse", "readr", "readxl", "sf",
              "cowplot", "RColorBrewer", "lubridate",
              "data.table","datapasta","devtools","forcats",
              "geofacet","gghighlight","janitor","hexbin",
              "rmapshaper","scales","svglite","extrafont")
library(devout)
extrafont::loadfonts()
#font_import()
lapply(Packages, library, character.only = TRUE)
communes<-function(){
  Communes<-st_read("C:/Users/valexandre/Downloads/ADMIN-EXPRESS_2-4__SHP__FRA_WM_2021-01-15/ADMIN-EXPRESS_2-4__SHP__FRA_2021-01-15/ADMIN-EXPRESS/1_DONNEES_LIVRAISON_2021-01-15/ADE_2-4_SHP_WGS84G_FRA/COMMUNE.shp")
}
dep<-function(){
  Deps<-sf::st_read("C:/Users/valexandre/Downloads/ADMIN-EXPRESS_2-4__SHP__FRA_WM_2021-01-15/ADMIN-EXPRESS_2-4__SHP__FRA_2021-01-15/ADMIN-EXPRESS/1_DONNEES_LIVRAISON_2021-01-15/ADE_2-4_SHP_WGS84G_FRA/DEPARTEMENT.SHP")
}
paris<-function(){
  Paris<-st_read("https://raw.githubusercontent.com/Valexandre/france-geojson/master/arrondissements_off.geojson")
}
sortunjpeg<-function(x,y,z,titre){
  jpeg(filename = paste0(titre,".jpg"), width=y, height = z, quality=100, units = "px",type="cairo")
  plot(x)
  dev.off()
}
sortunsvg<-function(x,y,z,titre){
  devoutsvg::svgout(filename = paste0(titre,".svg"), width=y, height = z)
  x
  invisible(dev.off())
}
copycol<-function(x){
  write.table(x,"clipboard-13000",row.names = F,sep=";")
}
saveanim<-function(nomanim,fps,duree,larg,haut,nom){
  anim_save(filename = paste0(nom,".gif"),
            animation=animate(nomanim, fps=fps, 
                              duration=duree,width=larg,
                              height=haut))
}
apigg<-"AIzaSyAuoQhkoXWcbrHcR0xJDKORiubJeJN9f-I"
nuancier_5_jaune_cramoisi<-c("#FFCC00","#EF7D00","#E30613","#AE0F0A","#500800")
nuancier_5_vert_jaune_rouge<-c("#26A43E","#AFCA44","#FCC216","#EF871F","#E33321")
nuancier_4_jaune_rouge<-c("#FFCC00","#FAB001","#EC6708","#AE0F0A")
nuancier_4_bleuclair_fonce<-c("#82D0F6","#6FCBF4","#009BDE","#005F89")
nuancier_6_rose_cramoisi<-c("#FAD3E6","#F19FC5","#EC6083","#E60146","#8A1003","#4E0800")
