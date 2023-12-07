## ---------------------------
##
## Script name: plotting,r
##
## Purpose of script: 
##      Contains code to plot scatterplots based on Palmer Penguin dataset.
##
##
## ---------------------------

#plotting figure 1 - the exploratory figure
plot_culmen_figure <- function(culmen_sex_species_only){
  culmen_sex_species_only %>%
   ggplot(aes(x = culmen_length_mm, y = culmen_depth_mm))+
  geom_point(aes(colour = species, fill = species))+
  labs(x = "Culmen Length (mm)", y = "Culmen Depth (mm)", fill = "Species", colour = "Species")+
  scale_x_continuous(labels = comma)+
  scale_colour_viridis_d()+
  scale_fill_viridis_d()+
  theme_bw()+
  facet_wrap(~species)
}


#saving figures as a .png image
save_culmen_plot_png <- function(culmen_sex_species_only, 
    filename, size, res, scaling){
  agg_png(filename, width   =  size, 
          height  =  size, 
          units   =  "cm", 
          res     =  res, 
          scaling =  scaling)
  culmen_scatterplot <- plot_culmen_figure(culmen_sex_species_only)
  print(culmen_scatterplot)
  dev.off()
}

#saving figures as a .svg image
save_culmen_plot_svg <- function(culmen_sex_species_only, 
  filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  culmen_scatterplot <- plot_culmen_figure(culmen_sex_species_only)
  print(culmen_scatterplot)
  dev.off()
}


#plotting figure 2 - the results figure
plot_culmen_results_figure <- function(culmen_sex_species_only){
  culmen_sex_species_only %>%
    ggplot(aes(x = culmen_length_mm, y = culmen_depth_mm))+
  geom_point(aes(colour = species, fill = species))+
  labs(x = "Culmen Length (mm)", y = "Culmen Depth (mm)", fill = "Species", colour = "Species")+
  scale_x_continuous(labels = comma)+
  scale_colour_viridis_d()+
  scale_fill_viridis_d()+
  theme_grey()+
  facet_wrap(~species)+ 
  geom_smooth(alpha = 0.3, method = "lm", colour = "orange", linewidth = 1.25)+
  stat_cor(method = "pearson", label.x.npc = "left", label.y.npc = "bottom")
}

#saving figures as a .png image
save_culmen_results_plot_png <- function(culmen_sex_species_only, 
    filename, size, res, scaling){
  agg_png(filename, width   =  size, 
          height  =  size, 
          units   =  "cm", 
          res     =  res, 
          scaling =  scaling)
  culmen_results_scatterplot <- plot_culmen_results_figure(culmen_sex_species_only)
  print(culmen_results_scatterplot)
  dev.off()
}

#saving figures as a .svg image
save_culmen_results_plot_svg <- function(culmen_sex_species_only, 
    filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  culmen_results_scatterplot <- plot_culmen_results_figure(culmen_sex_species_only)
  print(culmen_results_scatterplot)
  dev.off()
}
