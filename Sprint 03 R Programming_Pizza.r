#Pizza
pizza_id <- c(0,1,2,3,4)
pizza_name <- c("No","Hawaiian","seafood","spicy chicken","cheese lover")
pizza_price <- c(0,300,400,350,380)
df_pizza <- data.frame(pizza_id,pizza_name,pizza_price)

#Appetizer
appetizer_id <- c(0,1,2,3,4)
appetizer_name <- c("No","chicken wing","cheese sticks","french fries","garlic bread")
appetizer_price <- c(0,120,60,50,50)
df_appetizer <- data.frame(appetizer_id,appetizer_name,appetizer_price)

#Drink
drink_id <- c(0,1,2,3,4)
drink_name <- c("No","water","coffee","tea","soda")
drink_price <- c(0,10,80,50,30)
df_drink <- data.frame(drink_id,drink_name,drink_price)

#Start
print("Hello")
print ("Welcome to MAMA Pizza!")

#1
print("What's your name?:")
user_name <-readLines("stdin" , n=1)
print(paste("Hi", user_name))

#2
print("What do you want to order today?")
print("Please choose your menu.")
print("***********************")

#3
print("1.Pizza")
print(df_pizza)
print("Please type pizza _id")
choose_pizza <- readLines("stdin",n=1)
if (choose_pizza == 0){
  pizza <- "No"
  pizza_price <-0
  print(paste("No choose pizza","price",pizza_price))
} else if (choose_pizza == 1){
  pizza <- "Hawaiian"
  pizza_price <- 300
  print(paste("You choose pizza",pizza, "price",pizza_price))
} else if (choose_pizza == 2){
  pizza <- "seafood"
  pizza_price <- 400
  print(paste("You choose pizza",pizza,"price",pizza_price))
}else if (choose_pizza == 3){
  pizza <- "spicy chicken"
  pizza_price <- 350
  print(paste("You choose pizza",pizza,"price",pizza_price))
}else if (choose_pizza == 4){
  pizza <- "cheese lover"
  pizza_price <- 380
  print(paste("You choose pizza",pizza,"price",pizza_price))
}
total_price1 <- sum(pizza_price)
print(paste("Total price:",total_price1))

print("***********************")

#4
print("2.appetizer")
print(df_appetizer)
print("Please type appetizer_id")
choose_appetizer <- readLines("stdin", n=1)
if (choose_appetizer ==0){
  appetizer <- "No"
  appetizer_price <- 0
  print(paste("No choose appetizer","price",appetizer_price))
} else if (choose_appetizer == 1){
  appetizer <- "chicken wing"
  appetizer_price <- 120
  print(paste("You choose appetizer","price",appetizer_price))
} else if (choose_appetizer == 2){
  appetizer <- "cheese sticks"
  appetizer_price <- 60
  print(paste("You choose appetizer","price",appetizer_price))
} else if (choose_appetizer == 3){
  appetizer <- "french fries"
  appetizer_price <- 50
  print(paste("You choose appetizer","price",appetizer_price))
} else if (choose_appetizer == 4){
  appetizer <- "garlic bread"
  appetizer_price <- 50
  print(paste("You choose appetizer","price",appetizer_price))
}
total_price2 <- sum(pizza_price,appetizer_price)
print(paste("Total price:", total_price2))
print("***********************")

#5
print("3.Drink")
print(df_drink)
print("Please type drink_id")
choose_drink <- readLines("stdin", n=1)
if (choose_drink == 0){
  drink <- "No"
  drink_price <- 0
  print(paste("No choose drink","price",drink_price))
} else if (choose_drink == 1){
  drink <- "water"
  drink_price <- 10
  print(paste("You choose drink",drink,"price",drink_price))
} else if (choose_drink == 2){
  drink <- "coffee"
  drink_price <- 80
  print(paste("You choose drink",drink,"price",drink_price))
} else if (choose_drink == 3){
  drink <- "tea"
  drink_price <- 50
  print(paste("You choose drink",drink,"price",drink_price))
} else if (choose_drink == 4){
  drink <- "soda"
  drink_price <- 30
  print(paste("You choose drink",drink,"price",drink_price))
}
total_price3 <- sum(pizza_price,appetizer_price,drink_price)
print (paste("Total price :", total_price3))
print("***********************")

#6
print("Total Order")
print(paste("customer name:", user_name))

if (choose_pizza ==0){
  print(paste("No choose pizza",pizza,"price",pizza_price))
} else {print(paste("You choose pizza",pizza,"price",pizza_price))
}

if (choose_appetizer ==0){
  print(paste("No choose appetizer",appetizer,"price",appetizer_price))
} else {print(paste("You choose appetizer",appetizer,"price",appetizer_price))
}

if (choose_drink ==0){
  print(paste("No choose drink",drink,"price",drink_price))
} else {print(paste("You choose drink",drink,"price",drink_price))
}
total_price4 <- sum(pizza_price,appetizer_price,drink_price)
print(paste("Total price:",total_price4))
print("**********************")

#7
print("Are you confirm?")
print("Y for Yes,N for No")
result <- (toupper(readLines("stdin", n=1)))

if(result == "Y"){
  print("Order confirmed")
} else {print(paste("Cancel order"))
}
print("**********************")

#8
print("select your payment method")
print("1.Internet banking,2.Credit card")
payment <- readLines("stdin", n=1)
if(payment == 1){
  print("please sent slip in link below")
  print("Your order will deliver in 30 mins")
  print("Thank you very much")
} else if (payment == 2){
  print("Please fill your credit card number")
  readLines("stdin", n=1)
  print("Your order will deliver in 30 mins")
  print("Thank you very much")
} else if(result == "N"){
  print("Cancel order")
  print("Thank you very much")
}
