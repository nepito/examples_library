library(tidyverse)
library(StatsBombR)

Comp <- FreeCompetitions() %>%
  filter(competition_id == "9" & season_id == "281")
Matches <- FreeMatches(Comp)
StatsbombData <- free_allevents(MatchesDF = Matches, Parallel = T)
plotting_data <- allclean(StatsbombData) |>
  rename(
    "x" = "location.x",
    "y" = "location.y",
    "finalX" = "pass.end_location.x",
    "finalY" = "pass.end_location.y"
  )

match_id <- 3895052

passnetPlot <- plotting_data |>
  filter(match_id == match_id) |>
  plot_passnet(team_name = "Bayer Leverkusen")

ggsave("bayer_leverkusen_netpass.png")
