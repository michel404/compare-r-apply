# we beginnen met de dependencies van dit 'component'.
library("dplyr")

# Hier staan de 'private' variables (dat is een Java-term) voor dit 'component'
# (Ik weet alleen niet of 'component' de juiste term is).
# Door ze te laten beginnen met een punt zijn ze niet zichtbaar `voor ls(...)`.
.it <- NULL

# Dit is een 'private' helper-functie, begint ook met een punt.
.get_increment <- function() {
  1
}

# Vanaf hier beginnen de 'public' functies: dat zijn de enige dingen die niet
# met een punt beginnen:
create_it <- function(initialValue) {
  .it <<- initialValue
}

add_to_it <- function() {
  .it <<- .it %>%
    `+`(.get_increment())
}

get_it <- function() {
  .it
}

remove_it <- function() {
  .it <<- NULL
}
