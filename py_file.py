import csv
import json

csvfile = open('sales_data.txt', 'r')
jsonfile = open('json_output.json', 'w')

columns = ("sales_id", "sale_date", "sale_customer_name", "sale_customer_email", "sale_item")
reader = csv.DictReader( csvfile, columns)
row_num = 0
for row in reader:
    if row_num == 0:
        row_num += 1
    else:
        json.dump(row, jsonfile)
        jsonfile.write('\n')