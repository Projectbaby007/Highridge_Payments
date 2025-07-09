import random

def generate_payment_slips_python():
    """
    Generates payment slips for workers, assigns employee levels, and handles potential errors.
    """
    num_workers = 400
    workers = []

    # Dynamically create a list of workers
    for i in range(1, num_workers + 1):
        worker_id = f"HRCC_W{i:04d}"
        salary = round(random.uniform(5000, 35000), 2) # Salaries between $5,000 and $35,000
        gender = random.choice(["Male", "Female"])
        workers.append({"id": worker_id, "salary": salary, "gender": gender, "level": "N/A"})

    print("Generating Payment Slips (Python):\n")

    for worker in workers:
        try:
            employee_level = ""
            if 10000 < worker["salary"] < 20000:
                employee_level = "A1"
            elif 7500 < worker["salary"] < 30000 and worker["gender"] == "Female":
                employee_level = "A5-F"
            else:
                employee_level = "B2" # Default level for others

            worker["level"] = employee_level

            print(f"Worker ID: {worker['id']}")
            print(f"Salary: ${worker['salary']:.2f}")
            print(f"Gender: {worker['gender']}")
            print(f"Employee Level: {worker['level']}")
            print("-" * 30)

        except Exception as e:
            print(f"Error processing worker {worker['id']}: {e}")
            print("-" * 30)

if __name__ == "__main__":
    generate_payment_slips_python()