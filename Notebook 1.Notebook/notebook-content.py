# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {}
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

pip install faker pyodbc


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

odbcinst -j

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import pyodbc
from faker import Faker
import random
from datetime import datetime

# Initialize Faker
fake = Faker()

# Database connection details
server = 'neosoftdatabase.database.windows.net'
database = 'banking'
username = 'abrahamkapambwe'
password = '24081981@Bupe'
driver = 'Microsoft ODBC Driver 18.4.1.1 for SQL Server'

# Connect to the database
conn = pyodbc.connect(f'DRIVER={driver};SERVER={server};PORT=1433;DATABASE={database};UID={username};PWD={password}')
cursor = conn.cursor()

# Function to generate random persons
def generate_persons(n):
    persons = []
    for _ in range(n):
        person = (fake.first_name(), fake.last_name(), fake.email(), fake.phone_number(), random.randint(1, 10))
        persons.append(person)
    return persons

# Function to generate random accounts
def generate_accounts(person_ids, n):
    accounts = []
    for _ in range(n):
        account = (random.choice(person_ids), fake.iban(), random.uniform(1000, 10000), random.choice([1, 2, 3, 4]))
        accounts.append(account)
    return accounts

# Function to generate random transactions
def generate_transactions(account_ids, n):
    transactions = []
    for _ in range(n):
        transaction = (random.choice(account_ids), random.choice([1, 2, 3]), random.randint(1, 5), random.uniform(10, 1000), fake.date_time_this_year(), fake.latitude(), fake.longitude(), random.randint(1, 100))
        transactions.append(transaction)
    return transactions

# Insert persons into the database
def insert_persons(persons):
    cursor.executemany("INSERT INTO [Banking].[dbo].[Person] (FirstName, LastName, Email, Phone, CompanyId) VALUES (?, ?, ?, ?, ?)", persons)
    conn.commit()

# Insert accounts into the database
def insert_accounts(accounts):
    cursor.executemany("INSERT INTO [Banking].[dbo].[Account] (PersonId, AccountNumber, Balance, AccountTypeId) VALUES (?, ?, ?, ?)", accounts)
    conn.commit()

# Insert transactions into the database
def insert_transactions(transactions):
    cursor.executemany("INSERT INTO [Banking].[dbo].[Transaction] (AccountId, TransactionTypeId, ChannelId, Amount, TransactionDate, Latitude, Longitude, LoanId) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", transactions)
    conn.commit()

# Generate and insert data
num_persons = 100
num_accounts = 200
num_transactions = 500

persons = generate_persons(num_persons)
insert_persons(persons)

# Fetch generated person IDs
cursor.execute("SELECT PersonId FROM [Banking].[dbo].[Person]")
person_ids = [row[0] for row in cursor.fetchall()]

accounts = generate_accounts(person_ids, num_accounts)
insert_accounts(accounts)

# Fetch generated account IDs
cursor.execute("SELECT AccountId FROM [Banking].[dbo].[Account]")
account_ids = [row[0] for row in cursor.fetchall()]

transactions = generate_transactions(account_ids, num_transactions)
insert_transactions(transactions)

# Close the connection
cursor.close()
conn.close()


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
