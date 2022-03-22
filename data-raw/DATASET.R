## code to prepare `DATASET` dataset goes here
call_log <- read.csv("~/Downloads/Syscom Solutions-Call_Logs_IE-23057_2022-03-21_1647887263.csv")

library(tidyverse)
library(lubridate)

inbound_calls_2021 <- call_log %>%
  mutate(t = ymd_hms(Date)) %>%
  arrange(t) %>%
  filter(Direction == "inbound") %>%
  mutate(from = factor(From) %>% as.numeric() %>% paste("caller", ., sep = "_"))

inbound_calls_2021$from[inbound_calls_2021$From == "0000000000"] <- "0000000000"
inbound_calls_2021$from[inbound_calls_2021$From == "anonymous"] <- "anonymous"

inbound_calls_2021 <- inbound_calls_2021 %>%
  mutate(from = factor(from)) %>%
  mutate(duration = Duration, total_duration = Total.Duration) %>%
  mutate(status = factor(Call.Status))

inbound_calls_2021$to <- inbound_calls_2021$To.Ext.Name
inbound_calls_2021$to[inbound_calls_2021$To.Ext.Name == "Grace Collins"] <- "Reception 1"
inbound_calls_2021$to[inbound_calls_2021$To.Ext.Name == "Pat Fennelly"] <- "Manager"
inbound_calls_2021$to[inbound_calls_2021$To.Ext.Name == ""] <- "unnamed"
inbound_calls_2021$to[inbound_calls_2021$To.Ext.Name == "Dr. Lucia Gannon"] <- "Dr 1"
inbound_calls_2021$to[inbound_calls_2021$To.Ext.Name == "Dr. Liam Meagher"] <- "Dr 2"

inbound_calls_2021 <- inbound_calls_2021 %>%
  select(t, status, duration, total_duration, from, to)

usethis::use_data(inbound_calls_2021, overwrite = TRUE)
