library(ggshakeR)
library(understatr)

shot_data <- understatr::get_player_shots(player_id = 4105)
shots_map <- ggshakeR::plot_shot(shot_data, highlight_goals = TRUE, average_location = FALSE)
ggsave("raul_jimenez_shot.png")