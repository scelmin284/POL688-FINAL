library(foreign)
df <- read.csv("/Users/macbook/Desktop/PHD COURSES/2023-2024/SPRING 2024/COURSES/POL 688/POL688 PROJECT/AlHadath/commentsalhadath.csv")
install.packages("deeplr")
library(deeplr)

df2 <- read.csv("/Users/macbook/Desktop/PHD COURSES/2023-2024/SPRING 2024/COURSES/POL 688/POL688 PROJECT/AlJazeera/commentsaljazeera.csv")
df3 <- read.csv("/Users/macbook/Desktop/PHD COURSES/2023-2024/SPRING 2024/COURSES/POL 688/POL688 PROJECT/CnnArabic/commentscnn.csv")
translated_text <- translate2(text = df1a$text, 
                              source_lang = "AR",
                              target_lang = "EN",
                              auth_key = "cc90f850-d2b6-4a9c-b9e7-dd9e22a3ca61:fx")
translated_text2 <- translate2(text = df2a$text, 
                               source_lang = "AR",
                               target_lang = "EN",
                               auth_key = "cc90f850-d2b6-4a9c-b9e7-dd9e22a3ca61:fx")

translated_text3 <- translate2(text = df3a$text, 
                               source_lang = "AR",
                               target_lang = "EN",
                               auth_key = "cc90f850-d2b6-4a9c-b9e7-dd9e22a3ca61:fx")
summary(translated_text)
head(translated_text3)

#To remove columns from dataset:
df <- subset(df, select = -translation)
df <- subset(df, select = -text_translated)
df1a <- df[1:250, ]
df2a <- df2[1:250, ]
df3a <- df3[1:250, ]  


#To a new column:
library(dplyr)
df1an <- df1a %>% mutate(translation = translated_text)
names(df1an)
dfHadath <- df1an %>% select(id, replyCount, likeCount, publishedAt, text, translation, authorName, authorChannelId, authorChannelUrl, isReply, isReplyTo, isReplyToName)
write.table(dfHadath, "dfHadath.csv", sep=",", row.names=FALSE)

df2an <- df2a %>% mutate(translation = translated_text)
dfJazeera <- df2an %>% select(id, replyCount, likeCount, publishedAt, text, translation, authorName, authorChannelId, authorChannelUrl, isReply, isReplyTo, isReplyToName)
write.table(dfJazeera, "dfJazeera.csv", sep=",", row.names=FALSE)
#How to reorder columns in a dataset

HamasPublicOpinion <- df_new %>% select(id, replyCount, likeCount, publishedAt, text, translation, authorName, authorChannelId, authorChannelUrl, isReply, isReplyTo, isReplyToName)
names(df_new)

translated_text

#How to export dataframe as spreadsheet:
write.table(HamasPublicOpinion, "HamasPublicOpinion.csv", sep=",", row.names=FALSE)

#gtranslate package
install.packages("gtranslate")
library(gtranslate)
google_translate(text = df$text, source_lang = "AR", target_lang = "EN", auth_key ="AIzaSyBSBHS_yFpWrzN-d-S3F-jvEOyHUNF9e9I")

# Install and load the gtranslate package
install.packages("gtranslate")
library(gtranslate)
install.packages("translateR")
library(translateR)
# Set your valid Google Translate API key
api_key <- "AIzaSyBSBHS_yFpWrzN-d-S3F-jvEOyHUNF9e9I"

# Translate the "text" column in the data frame df
df$translated_text <- google_translate(text = df$text, 
                                       source_lang = "ar", 
                                       target_lang = "en",
                                       api_key = "AIzaSyBL2ldoeU7F3bLYigvhIZ_ChFVKbDPlA3M")
df$translated_text <- translate_file(text = df$text, 
                                     source_lang = "ar", 
                                     target_lang = "en",
                                     api_key = "AIzaSyBL2ldoeU7F3bLYigvhIZ_ChFVKbDPlA3M")
install.packages("polyglotr")
library(polyglotr)

translate_df(dataset = df, column.name = "text", source.lang = "AR",
             target.lang = "EN", add.source.lang = FALSE, auth_key = "AIzaSyBSBHS_yFpWrzN-d-S3F-jvEOyHUNF9e9I",
             url = "https://api.deepl.com/v2/translate?text=")

translate_df(
  dataset = df,
  column.name = "text",
  source.lang = "AR",
  target.lang = "EN",
  add.source.lang = FALSE,
  auth_key = "AIzaSyBSBHS_yFpWrzN-d-S3F-jvEOyHUNF9e9I",
  url = "https://api.deepl.com/v2/translate?text="
)

library(purrr)

# Define a function to handle missing or invalid values
handle_missing_value <- function(text) {
  if (is.na(text) || !utf8::utf8_valid(text)) {
    return(NA_character_)
  } else {
    return(text)
  }
}

# Use purrr::pmap_chr() with the handle_missing_value function
result <- purrr::pmap_chr(df3a, handle_missing_value)
