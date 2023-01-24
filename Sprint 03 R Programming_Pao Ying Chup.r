print("Hello")
print("What is your name")
player_name <- readLines("stdin",n=1)

print(paste("Hello",player_name))
print("We are glad you were here.")
print("Welcome to Rock Paper Scissors Game")
print("Please read the rules")
print("enter 'r' for Rock")
print("enter 'p' for Paper")
print("enter 's' for Scissors")
print("enter 'q' to end the game")
print("Are you ready? [Y/N]")
player_name <- toupper(readLines("stdin",n=1))
if (player_name =="Y"){
  print("Let's begin!")
} else {
  print(paste("See you"))}

win_player <- 0
win_bot <- 0
draw <-0
times <-0

while (TRUE){
choices <- c("r", "s", "p")
print("your turn")
player <-readLines("stdin",n=1)
print(paste("Bot :",bot <- sample(choices,size = 1)))
if(player == "q"){break}
  
if(player == bot){
  draw <- draw + 1
  times <- times + 1
  
 } else if((player == "r" & bot == "s")||
          (player == "s" & bot == "p")||
          (player == "p" & bot == "r")){
  win_player <- win_player + 1
  times <- times + 1
  
 } else if((bot == "r" & player == "s")||
          (bot == "s" & player == "p")||
          (bot == "p"& player == "r")){
  win_bot <- win_bot + 1 
  times <- times + 1
 } else{print("incorrect word!!! Please read the rules and try again ")
 }
}

print(paste("Total playing times :", times))
print(paste("Total win :" , win_player))
print(paste("Total lose : ", win_bot))
print(paste("Total draw : ", draw))

times > 0
if((win_player)>(win_bot)) {
  print(paste(player_name,"win!"))
} else if ((win_bot)>(win_player)){
    print("Bot win!")
}else if ((win_bot)==(win_player)){
    print("Draw!")
}

print("*****************************")
print("Thank you for joining us, We hope you have enjoyed this game!")
print("See you next time")