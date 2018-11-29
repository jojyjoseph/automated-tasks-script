import re
from openpyxl import Workbook
import time

version =""
tr1=""
tr2=""

def process(line):
    if re.match("Version (.+)$",line):
        result1=re.match("Version (.+)$",line)
        version=result1.groups(0)
    if re.match("Test result1 = (.+)$",line):
        result2=re.match("Test result1 = (.+)$",line)
        tr1=result2.groups(0)
    if re.match("Test result2 (.+)$",line):
        result3=re.match("Test result2 = (.+)$",line)
        tr2=result3.groups(0)
    

def readFile():
    with open('Read.log') as f:
        for line in f:
            process(line)

def writeTestReport():
    book = Workbook()
    sheet = book.active
    
    sheet['A1'] = version
    sheet['A2'] = tr1
    sheet['A3'] = tr2

    now = time.strftime("%x")
    sheet['A4'] = now

    book.save("sample.xlsx")

    print("Project 1 - Report generated")

def main():
    readFile()
    writeTestReport()


# execution definition

main()
