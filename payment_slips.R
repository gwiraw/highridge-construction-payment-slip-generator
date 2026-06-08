# ==========================================================
# HIGHRIDGE CONSTRUCTION COMPANY
# WEEKLY PAYSLIP GENERATOR
# ==========================================================
# Author: Wadzanai Gwira
# Description:
# Generates weekly payslips for 400 workers and assigns
# employee levels based on salary and gender conditions.
# ==========================================================

set.seed(123)

tryCatch({
  
  # --------------------------------------------------------
  # STEP 1: CREATE 400 WORKERS DYNAMICALLY
  # --------------------------------------------------------
  
  workers <- data.frame(
    employee_id = 1:400,
    employee_name = paste("Worker", 1:400, sep = "_"),
    gender = sample(c("Male", "Female"), 400, replace = TRUE),
    salary = sample(5000:35000, 400, replace = TRUE)
  )
  
  cat("\n")
  cat("======================================================================\n")
  cat("          HIGHRIDGE CONSTRUCTION COMPANY\n")
  cat("          WEEKLY PAYROLL PROCESSING SYSTEM\n")
  cat("======================================================================\n")
  
  # --------------------------------------------------------
  # STEP 2: GENERATE PAYMENT SLIPS
  # --------------------------------------------------------
  
  for(i in 1:nrow(workers)) {
    
    employee_level <- "Unassigned"
    
    # ------------------------------------------------------
    # ASSIGN EMPLOYEE LEVELS
    # ------------------------------------------------------
    
    if(workers$salary[i] > 10000 &&
       workers$salary[i] < 20000) {
      
      employee_level <- "A1"
    }
    
    if(workers$salary[i] > 7500 &&
       workers$salary[i] < 30000 &&
       workers$gender[i] == "Female") {
      
      employee_level <- "A5-F"
    }
    
    # ------------------------------------------------------
    # GENERATE PAYSLIP
    # ------------------------------------------------------
    
    cat("\n")
    cat("======================================================================\n")
    cat("             HIGHRIDGE CONSTRUCTION COMPANY\n")
    cat("                    WEEKLY PAYSLIP\n")
    cat("======================================================================\n")
    
    cat("Pay Date         :", Sys.Date(), "\n")
    cat("Department       : Construction Operations\n")
    cat("Payment Type     : Weekly Salary\n")
    
    cat("----------------------------------------------------------------------\n")
    
    cat("Employee ID      :", workers$employee_id[i], "\n")
    cat("Employee Name    :", workers$employee_name[i], "\n")
    cat("Gender           :", workers$gender[i], "\n")
    cat("Gross Salary     : $",
        format(workers$salary[i], big.mark = ","), "\n")
    cat("Employee Level   :", employee_level, "\n")
    
    cat("----------------------------------------------------------------------\n")
    
    cat("Payment Status   : APPROVED\n")
    cat("Prepared By      : Payroll Department\n")
    
    cat("======================================================================\n")
  }
  
},
error = function(e) {
  cat("An error occurred:", e$message)
})

