library(rtweet)
library(magrittr)
library(dplyr)
library(DT)

## whatever name you assigned to your created app
appname <- "rtweet_hearts"

## api key (example below is not a real key)
key <- "ovHeqLuGXavllltcstksDgfo0"
key <- "909181566282354688-ZTw58yhE8r2bnXALDQDce9ly1PiqjGh"



## api secret (example below is not a real key)
secret <- "PIOqtvNhcsIvUVoqPusFCDjN0gj9yyx55oDXug11wXorYVqBka"
secret <- "KCV2iacs0VGZmqni7TZ52QakelXC2b5h8hGKux2vxm2mj"

## create token named "twitter_token"
twitter_token <- create_token(
        app = appname,
        consumer_key = key,
        consumer_secret = secret)

## path of home directory
home_directory <- path.expand("~/")

## combine with name for token
file_name <- file.path(home_directory, "twitter_token.rds")

## save token to home directory
saveRDS(twitter_token, file = file_name)

## assuming you followed the procodures to create "file_name"
##     from the previous code chunk, then the code below should
##     create and save your environment variable.
cat(paste0("TWITTER_PAT=", file_name),
    file = file.path(home_directory, ".Renviron"),
    append = TRUE)


# pull for user
user_name <- "aglHurley"
my_likes  <- get_favorites(user_name, n = 100) %>% 
        select("created_at", "screen_name", "text", "urls_expanded_url") %>%
        arrange(desc(created_at))

# drop time in time stamp
my_likes$created_at <- strptime(as.POSIXct(my_likes$created_at), 
                                format = "%Y-%m-%d") %>% 
        format("%Y-%m-%d")


# helper function for clickable urls
createLink <- function(x) {
        if(is.na(x)){
                return("")
        }else{
                sprintf(paste0('<a href="', URLdecode(x),'" target="_blank">', 
                               substr(x, 1, 25) ,'</a>'))
        }
}

# apply helper
my_likes$urls_expanded_url <- lapply(my_likes$urls_expanded_url, 
                                     function(x) sapply(x, createLink))



# create DT widget
my_table <- datatable(my_likes, 
                      options = list(scrollX = TRUE, autoWidth = TRUE,
                                     columnDefs = list(list(
                                             width = '70%', 
                                             targets = c(2)))), 
                      rownames = FALSE,
                      fillContainer = TRUE,
                      width = "100%", 
                      colnames = c("Date", "Handle", "Text", "URL")) %>%
        formatStyle(columns = 1:4, fontSize = '70%') %>%
        formatStyle(columns = 3, width = '500px')

# save for viewing
temp_file <- tempfile()
saveWidget(my_table, temp_file)

system(paste("chrome", temp_file))
