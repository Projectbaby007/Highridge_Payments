# Function to generate payment slips in R
generate_payment_slips_r <- function() {
  num_workers <- 400
  workers <- data.frame(
    id = character(num_workers),
    salary = numeric(num_workers),
    gender = character(num_workers),
    level = character(num_workers),
    stringsAsFactors = FALSE
  )

  # Dynamically create a list of workers
  for (i in 1:num_workers) {
    worker_id <- sprintf("HRCC_W%04d", i)
    salary <- round(runif(1, 5000, 35000), 2) # Salaries between $5,000 and $35,000
    gender <- sample(c("Male", "Female"), 1)
    
    workers$id[i] <- worker_id
    workers$salary[i] <- salary
    workers$gender[i] <- gender
    workers$level[i] <- "N/A" # Initialize level
  }

  print("Generating Payment Slips (R):\n")

  for (i in 1:nrow(workers)) {
    tryCatch({
      employee_level <- ""
      if (workers$salary[i] > 10000 && workers$salary[i] < 20000) {
        employee_level <- "A1"
      } else if (workers$salary[i] > 7500 && workers$salary[i] < 30000 && workers$gender[i] == "Female") {
        employee_level <- "A5-F"
      } else {
        employee_level <- "B2" # Default level for others
      }
      
      workers$level[i] <- employee_level
      
      cat(sprintf("Worker ID: %s\n", workers$id[i]))
      cat(sprintf("Salary: $%.2f\n", workers$salary[i]))
      cat(sprintf("Gender: %s\n", workers$gender[i]))
      cat(sprintf("Employee Level: %s\n", workers$level[i]))
      cat(sprintf("%s\n", paste(rep("-", 30), collapse = "")))
      
    }, error = function(e) {
      cat(sprintf("Error processing worker %s: %s\n", workers$id[i], e$message))
      cat(sprintf("%s\n", paste(rep("-", 30), collapse = "")))
    })
  }
}

# Run the R function
generate_payment_slips_r()