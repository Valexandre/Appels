Packages <- c("tidyverse", "readr", "readxl", "sf",
              "cowplot", "RColorBrewer", "lubridate",
              "data.table","datapasta","devtools","forcats",
              "geofacet","gghighlight","janitor","hexbin",
              "rmapshaper","scales","svglite","extrafont","slider")
extrafont::loadfonts()
#font_import()
lapply(Packages, library, character.only = TRUE)
`%!in%` = function(x,y) !(x %in% y)
Majuscule = function(x) (paste0(toupper(substr(x, 1, 1)), substr(x, 2, nchar(x))))
communes<-function(){
  Communes<-st_read("C:/Users/valexandre/Downloads/ADMIN-EXPRESS_2-4__SHP__FRA_WM_2021-01-15/ADMIN-EXPRESS_2-4__SHP__FRA_2021-01-15/ADMIN-EXPRESS/1_DONNEES_LIVRAISON_2021-01-15/ADE_2-4_SHP_WGS84G_FRA/COMMUNE.shp")
}
dep<-function(){
  Deps<-sf::st_read("C:/Users/valexandre/Downloads/ADMIN-EXPRESS_2-4__SHP__FRA_WM_2021-01-15/ADMIN-EXPRESS_2-4__SHP__FRA_2021-01-15/ADMIN-EXPRESS/1_DONNEES_LIVRAISON_2021-01-15/ADE_2-4_SHP_WGS84G_FRA/DEPARTEMENT.SHP")
}
paris<-function(){
  Paris<-st_read("https://raw.githubusercontent.com/Valexandre/france-geojson/master/arrondissements_off.geojson")
}
arr<-function(){
Arr<-sf::st_read("https://github.com/Valexandre/france-geojson/raw/master/arrondissements-millesimes0.geojson")
  }
sortunjpeg<-function(x,y,z,titre){
  jpeg(filename = paste0(titre,".jpg"), width=y, height = z, quality=100, units = "px",type="cairo")
  plot(x)
  dev.off()
}
sortunsvg<-function(x,y,z,titre){
  svglite::svglite(file=paste0(titre,".svg"),width=y,height = z,bg="white",standalone = T)
  plot(x)
  dev.off()
}
Virg<-function(x){ as.character( gsub("\\.",",",as.character(x)))}
sortunsvg2<-function(x,y,z,titre){
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

nuancier_5_jaune_cramoisi<-c("#FFCC00","#EF7D00","#E30613","#AE0F0A","#500800")
nuancier_5_vert_jaune_rouge<-c("#26A43E","#AFCA44","#FCC216","#EF871F","#E33321")
nuancier_4_jaune_rouge<-c("#FFCC00","#FAB001","#EC6708","#AE0F0A")
nuancier_4_bleuclair_fonce<-c("#82D0F6","#6FCBF4","#009BDE","#005F89")
nuancier_6_rose_cramoisi<-c("#FAD3E6","#F19FC5","#EC6083","#E60146","#8A1003","#4E0800")
nuancier_10_bleu<-c("#E5EFF3","#CCDFE7","#B2CFDB","#99BFCF","#7FAFC4","#669FB8","#4C8FAC","#337FA0","#196F94","#005F89")
nuancier_6_jaune_orange<-c("#fdefef","#fac27e","#f59e53","#ee7f2f","#ee5b22","#e93a1c")

GrayGrad<-c("#E1E4DD", "#D5D6D0", "#C5C6C0", "#BDBFBA", "#ACAEAB", "#9EA09F", "#8D8F8E", "#7E807F", "#686A69", "#5E605F", "#4F4F4F", "#404040", "#292929", "#212121", "#1F1F1F")
YellowGrad<-c("#FACD10", "#EEBE06","#E1B401", "#D3A605", "#C99F19", "#A07820", "#9A7421", "#886D2A", "#7A632D", "#65562F", "#4B432C", "#32311F", "#1E1D18", "#1B1A18", "#1C1C1C")
OrangeGrad<-c("#FDD492", "#FEC059", "#FEB334", "#FFA521", "#EC961F", "#DF8A1D", "#CA7A17", "#A26316", "#875017", "#674518", "#453418", "#352515", "#292315", "#1E1913", "#1A1A1A")
RedGrad<-c("#FFD5C2", "#FFC4A4", "#FD9C4F", "#FA8A58", "#F9634B", "#F95B42", "#F8563F", "#D4432E", "#B53F31", "#953C2C", "#6A2F21", "#562A1F", "#3D1F17", "#331F18", "#1E1E1E")
RaspGrad<-c("#FFDFD6", "#FDCCC7", "#FFA7A3", "#FE8E8D", "#F76566", "#E75059", "#E1414D", "#D12030", "#D0222C", "#C00E28", "#8B131C", "#591E1A", "#461916", "#3A1816", "#1B1B1B")
PinkGrad<-c( "#FBDED8", "#F9C8CC", "#F5B9C1", "#ED98AD", "#E87C94", "#E4778C", "#D65B77", "#C44F69", "#B33855", "#A42747", "#942454", "#8C3255", "#713048", "#4C2D3C", "#1D1D1D")
PlumGrad<-c("#F1D3D5", "#EECAD4", "#E6BCC8", "#E9B4C4", "#D8A1B8", "#C790B0", "#B0789D", "#9C648B", "#825479", "#69476A", "#56396F", "#51355D", "#4C3056", "#48314B", "#202020")
PurpleGrad<-c("#E7DCE4", "#E0D2E3", "#D5C4D7", "#CABAD5", "#BCACD0", "#AA98C2", "#917EB6", "#7668A5", "#6F609B", "#514B89", "#4D3775", "#43337E", "#4E336A", "#403055", "#1F1F1F")
DarkBlueGrad<-c("#E1E2E6", "#D7DADF", "#CAD0DC", "#BFC7DA", "#A7B8D6", "#8CA8D0", "#6F96CF", "#6388CF", "#3E6DC9", "#0355C5", "#0243BB", "#033EBC", "#003E9D", "#153D78", "#1C1C1C")
LightBlueGrad<-c("#D4E3EA", "#C3DBE7", "#B2D2DF", "#A4CADF", "#88BEDA", "#68AACD", "#4C9BC4", "#388ABC", "#2E7AAB", "#2171A2", "#2F6782", "#2D5063", "#253B46", "#26373E", "#1B1B1B")
TurquoiseGrad<-c("#D1E2DC", "#C3D8DB", "#B8D2D3", "#AACCCB", "#98C6C4", "#77AFAC", "#64A9A4", "#549E9F", "#528483", "#4C7474", "#45686A", "#3D5756", "#35484C", "#324242", "#1C1C1C")
GreenGrassGrad<-c("#BEE1CB", "#B1DCC0", "#9DD3AF", "#8BC7A1", "#75BB97", "#5DB481", "#54976C", "#55986F", "#436950", "#506B58", "#3A5044", "#384A3E", "#2D3D32", "#2E332C", "#1D1D1D")
RiverGreenGrad<-c("#C8DC85", "#BED46F", "#A7CA4C", "#A7C74A", "#96B859", "#92B35A", "#819C57", "#70894F", "#58643E", "#54623E", "#47503B", "#444D3A", "#2B3029", "#2C2D27", "#1F1F1F")
Rainbow<-c("#F8E8CF", "#F7C904", "#FD991D", "#F34A37", "#BC0C21", "#92254E", "#553973", "#3B3275", "#0043BA", "#08699E", "#4E9293", "#62B07E", "#A3C54A")

