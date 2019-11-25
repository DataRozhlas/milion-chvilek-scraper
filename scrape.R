library(rvest)
cisloStranky <- 1:195

tabulka <- data.frame()

for (i in cisloStranky) {
  html <- read_html(paste0("https://www.milionchvilek.cz/podepsali/", i))
  tabulka <- rbind(tabulka, html_table(html)[[1]])
  print(i)
}

write.csv(tabulka, "signatari-2019-11-25-16-30.csv")

