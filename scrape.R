library(rvest)
cisloStranky <- 1:195

tabulka <- data.frame()

for (i in cisloStranky) {
  html <- read_html(paste0("https://www.milionchvilek.cz/podepsali/", i))
  tabulka <- rbind(tabulka, html_table(html)[[1]])
  print(i)
}

names(tabulka) <- c("cislo","jmeno", "obec", "povolani")

write.csv(tabulka, "signatari-2019-11-25-17-55.csv", row.names = F)

