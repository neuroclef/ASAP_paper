# Load requried packages
library(ggplot2)
library(dplyr)

# Set your working directory, insert file path for the directory where you saved the data accompanying the manuscript between the quotation marks below
setwd("") # i.e., setwd("C:/Users/User1/Documents)#####################################################################################################

#######################################################################################################################################################
# Load the .csv file associated with each data set as a data frame ####################################################################################
#######################################################################################################################################################

# 1) New Data Shared
newSharedData_df<- read.csv(file = "NewSharedData.csv", header = TRUE)
  
# 2) New Code Shared
newSharedCode_df<- read.csv(file = "NewSharedCode.csv", header = TRUE)

# 3) New Lab Materials Shared
newSharedLabMat_df<- read.csv(file = "NewSharedLabMat.csv", header = TRUE)

# 4) New Protocols Shared
newSharedProtocol_df<- read.csv(file = "NewSharedProtocol.csv", header = TRUE)

# 5) Reuse Data Cited
reuseCitedData_df<- read.csv(file = "ReuseCitedData.csv", header = TRUE)

# 6) Reuse Software Cited
reuseCitedSoftware_df<- read.csv(file = "ReuseCitedSoftware.csv", header = TRUE)

# 7) Reuse Lab Materials Cited
reuseCitedLabMat_df<- read.csv(file = "ReuseCitedLabMat.csv", header = TRUE)

# 8) Reuse Protocols Cited
reuseCitedProtocol_df<- read.csv(file = "ReuseCitedProtocol.csv", header = TRUE)


#######################################################################################################################################################
######################## MAKING PLOTS #################################################################################################################
#######################################################################################################################################################

#######################################################################################################################################################
###################### Graphs for New Research Outputs ################################################################################################
#######################################################################################################################################################

## Produces a figure for % new shared data and saves it within the working directory
pdf(file = "updatedNewDataShared_plot.pdf", height = 2, width = 4.5)
newSharedData_df %>%
  ggplot(aes(Stage,PercentShared, fill = Stage)) +
  #geom_violin(aes(fill = Stage), color = "white", alpha = 0.2) +
  geom_line(aes(group = FirstAuthor), color = "gray", size = 0.5, position = position_dodge(0.20)) +
  geom_point(aes(color = Stage, shape = Stage, group = FirstAuthor), size = 2.5, position = position_dodge(0.20)) +
  scale_color_manual(values = c("#08597b", "#34a270")) +
  theme_classic() + 
  theme(legend.position = "none") +
  ylab("Proportion of \nNew Datasets Shared") +
  xlab("Manuscript Stage") +
  scale_x_discrete(labels = c("FS" = "First Version", "NS" = "Second Version"))
dev.off()

## Produces a figure for % new shared code and saves it within the working directory
pdf(file = "updatedNewCodeShared_plot.pdf", height = 2, width = 4.5)
newSharedCode_df %>%
  ggplot(aes(Stage,PercentShared, fill = Stage)) +
  #geom_violin(aes(fill = Stage), color = "white", alpha = 0.2) +
  geom_line(aes(group = FirstAuthor), color = "gray", size = 0.5, position = position_dodge(0.20)) +
  geom_point(aes(color = Stage, shape = Stage, group = FirstAuthor), size = 2.5, position = position_dodge(0.20)) +
  scale_color_manual(values = c("#08597b", "#34a270")) +
  theme_classic() + 
  theme(legend.position = "none") +
  ylab("Proportion of \nNew Software Shared") +
  xlab("Manuscript Stage") + 
  scale_x_discrete(labels = c("FS" = "First Version", "NS" = "Second Version"))
dev.off()

## Produces a figure for % new shared lab materials and saves it within the working directory
pdf(file = "updatedNewLabMatShared_plot.pdf", height = 2, width = 4.5)
newSharedLabMat_df %>%
  ggplot(aes(Stage,PercentShared, fill = Stage)) +
  #geom_violin(aes(fill = Stage), color = "white", alpha = 0.2) +
  geom_line(aes(group = FirstAuthor), color = "gray", size = 0.5, position = position_dodge(0.20)) +
  geom_point(aes(color = Stage, shape = Stage, group = FirstAuthor), size = 2.5, position = position_dodge(0.20)) +
  scale_color_manual(values = c("#08597b", "#34a270")) +
  theme_classic() + 
  theme(legend.position = "none") +
  ylab("Proportion of \nNew Lab Materials Shared") +
  xlab("Manuscript Stage") +
  ylim(0,1) +
  scale_x_discrete(labels = c("FS" = "First Version", "NS" = "Second Version"))
dev.off()

## Produces a figure for % new shared protocols and saves it within the working directory
pdf(file = "updatedNewProtocolsShared_plot.pdf", height = 2, width = 4.5) 
newSharedProtocol_df %>%
  ggplot(aes(Stage,PercentShared, fill = Stage)) +
  geom_line(aes(group = FirstAuthor), color = "gray", size = 0.5, position = position_dodge(0.20)) +
  geom_point(aes(color = Stage, shape = Stage, group = FirstAuthor), size = 2.5, position = position_dodge(0.20)) +
  scale_color_manual(values = c("#08597b", "#34a270")) +
  theme_classic() + 
  theme(legend.position = "none") +
  ylab("Proportion of \nNew Protocols Shared") +
  xlab("Manuscript Stage") +
  scale_x_discrete(labels = c("FS" = "First Version", "NS" = "Second Version"))
dev.off()

#######################################################################################################################################################
###################### Graphs for Re-use Reserach Outputs #############################################################################################
#######################################################################################################################################################

## Produces a figure for % reuse data cited and saves it within the working directory
pdf(file = "updatedReuseDataCited_plot.pdf", height = 2, width = 4.5)
reuseCitedData_df %>%
  ggplot(aes(Stage,PercentCited, fill = Stage)) +
  #geom_violin(aes(fill = Stage), color = "white", alpha = 0.2) +
  geom_line(aes(group = FirstAuthor), color = "gray", size = 0.5, position = position_dodge(0.2)) +
  geom_point(aes(color = Stage, shape = Stage, group = FirstAuthor), size = 2.5, position = position_dodge(0.20)) +
  scale_color_manual(values = c("#08597b", "#34a270")) +
  theme_classic() + 
  theme(legend.position = "none") +
  ylab("Proportion of \nReuse Datasets Cited") +
  xlab("Manuscript Stage") +
  scale_x_discrete(labels = c("FS" = "First Version", "NS" = "Second Version"))
dev.off()

## Produces a figure for % reuse software/code cited and saves it within the working directory
pdf(file = "updatedReuseSoftwareCited_plot.pdf", height = 2, width = 4.5)
reuseCitedSoftware_df %>%
  ggplot(aes(Stage,PercentCited, fill = Stage)) +
  #geom_violin(aes(fill = Stage), color = "white", alpha = 0.2) +
  geom_line(aes(group = FirstAuthor), color = "gray", size = 0.5, position = position_dodge(0.2)) +
  geom_point(aes(color = Stage, shape = Stage, group = FirstAuthor), size = 2.5, position = position_dodge(0.20)) +
  scale_color_manual(values = c("#08597b", "#34a270")) +
  theme_classic() +
  theme(legend.position = "none") +
  ylab("Proportion of \nReuse Software Cited") +
  xlab("Manuscript Stage") +
  scale_x_discrete(labels = c("FS" = "First Version", "NS" = "Second Version"))
dev.off()

## Produces a figure for % reuse lab materials cited and saves it within the working directory
pdf(file = "updatedReuseLabMatCited_plot.pdf", height = 2, width = 4.5)
reuseCitedLabMat_df %>%
  ggplot(aes(Stage,PercentCited, fill = Stage)) +
  #geom_violin(aes(fill = Stage), color = "white", alpha = 0.2) +
  geom_line(aes(group = FirstAuthor), color = "gray", size = 0.5, position = position_dodge(0.2)) +
  geom_point(aes(color = Stage, shape = Stage, group = FirstAuthor), size = 2.5, position = position_dodge(0.20)) +
  scale_color_manual(values = c("#08597b", "#34a270")) +  
  theme_classic() +
  theme(legend.position = "none") +
  ylab("Proportion of \nReuse Lab Materials Cited") +
  xlab("Manuscript Stage") +
  scale_x_discrete(labels = c("FS" = "First Version", "NS" = "Second Version"))
dev.off()

## Produces a figure for % reuse protocols cited and saves it within the working directory
pdf(file = "updatedReuseProtocolsCited_plot.pdf", height = 2, width = 4.5)
reuseCitedProtocol_df %>%
  ggplot(aes(Stage,PercentCited, fill = Stage)) +
  #geom_violin(aes(fill = Stage), color = "white", alpha = 0.2) +
  geom_line(aes(group = FirstAuthor), color = "gray", size = 0.5, position = position_dodge(0.2)) +
  geom_point(aes(color = Stage, shape = Stage, group = FirstAuthor), size = 2.5, position = position_dodge(0.20)) +
  scale_color_manual(values = c("#08597b", "#34a270")) +
  theme_classic() +
  theme(legend.position = "none") + 
  ylab("Proportion of \nReuse Protocols Cited") +
  xlab("Manuscript Stage") +
  scale_x_discrete(labels = c("FS" = "First Version", "NS" = "Second Version"))
dev.off()