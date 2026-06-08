# ==========================================================
# HIGHRIDGE CONSTRUCTION COMPANY
# WEEKLY PAYSLIP GENERATOR
# ==========================================================
# Author: Wadzai Gwira
# Description:
# Generates weekly payslips for 400 workers and assigns
# employee levels based on salary and gender conditions.
# ==========================================================

import random
from datetime import date

try:

    # ------------------------------------------------------
    # STEP 1: CREATE 400 WORKERS DYNAMICALLY
    # ------------------------------------------------------
    workers = []

    for i in range(1, 401):

        worker = {
            "employee_id": i,
            "employee_name": f"Worker_{i}",
            "gender": random.choice(["Male", "Female"]),
            "salary": random.randint(5000, 35000)
        }

        workers.append(worker)

    # ------------------------------------------------------
    # STEP 2: GENERATE PAYMENT SLIPS
    # ------------------------------------------------------
    print("\n")
    print("=" * 70)
    print("         HIGHRIDGE CONSTRUCTION COMPANY")
    print("         WEEKLY PAYROLL PROCESSING SYSTEM")
    print("=" * 70)

    for worker in workers:

        employee_level = "Unassigned"

        # --------------------------------------------------
        # ASSIGN EMPLOYEE LEVELS
        # --------------------------------------------------

        # Condition 1
        if worker["salary"] > 10000 and worker["salary"] < 20000:
            employee_level = "A1"

        # Condition 2
        if (
            worker["salary"] > 7500
            and worker["salary"] < 30000
            and worker["gender"] == "Female"
        ):
            employee_level = "A5-F"

        # --------------------------------------------------
        # GENERATE PAYSLIP
        # --------------------------------------------------

        print("\n")
        print("=" * 70)
        print("             HIGHRIDGE CONSTRUCTION COMPANY")
        print("                    WEEKLY PAYSLIP")
        print("=" * 70)

        print(f"Pay Date         : {date.today()}")
        print("Department       : Construction Operations")
        print("Payment Type     : Weekly Salary")

        print("-" * 70)

        print(f"Employee ID      : {worker['employee_id']}")
        print(f"Employee Name    : {worker['employee_name']}")
        print(f"Gender           : {worker['gender']}")
        print(f"Gross Salary     : ${worker['salary']:,.2f}")
        print(f"Employee Level   : {employee_level}")

        print("-" * 70)

        print("Payment Status   : APPROVED")
        print("Prepared By      : Payroll Department")

        print("=" * 70)

except ValueError as ve:
    print("Value Error:", ve)

except KeyError as ke:
    print("Missing Key:", ke)

except TypeError as te:
    print("Type Error:", te)

except Exception as e:
    print("An unexpected error occurred:", e)
