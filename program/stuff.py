import gspread
from oauth2client.service_account import ServiceAccountCredentials
import os

# Some oauth stuff don't remove it
scope = ['https://spreadsheets.google.com/feeds', 'https://www.googleapis.com/auth/drive']
creds = ServiceAccountCredentials.from_json_keyfile_name('secret.json', scope)
client = gspread.authorize(creds)

# Return a worksheet of a spreadsheet
# name => the name of the spreadsheet, use "temperature_sheet" most of the time
# worksheet => the name of the worksheet, case and space sensitive!
# index => the starting row to take the data from, row 1 = 0, i.e. set this to 2 to start reading the working from row 3
# Format: [ 
#          row1 => [ col1, col2, col3, ...], 
#          row2 => [ col1, col2, col3, ...], 
#          row3 => [ col1, col2, col3, ...],
#                           .
#                           .
#                           . 
#         ]
def getWorksheetFromSheet(spreadsheet, worksheet, index):
  try:
    sheet = client.open(spreadsheet).worksheet(worksheet).get_all_values()
    return sheet[index:]
  except:
    print("Spreadsheet " + spreadsheet + ", '" + worksheet + "' not found.")
    return []

def getSheet(spreadsheet):
  try:
    return client.open(spreadsheet)
  except:
    print('Spreadsheet:', '"' + spreadsheet + '"', 'cannot be found.')

def getWorksheet(spreadsheet, worksheet, index):
  try:
    return spreadsheet.worksheet(worksheet).get_all_values()[index:]
  except:
    print('Worksheet: ', '"' + worksheet + '"', 'cannot be found.')
    return []

# Check if the given path exists, if not create a directory to that path
#
# Important!: this function will not create a file from the given path but will still return the path to that file!
def check_path(path):
  dir = '/'.join([x for x in path.replace('\\', '/').split('/') if not '.' in x])
  if not os.path.exists(dir):
    os.makedirs(dir)
  return path

# Create a file at the given path, doesn't care if that path exists or not
#
# This function will return a reference to a file object, please close it if no longer use
def create_file(path):
  return open(check_path(path), 'w')

# Convert string to minecraft's id convention, i.e. Hello World => hello_world
#
# This function is basically turn the given string to lowercase and then replace every empty space ( ) to underscore (_)
def convert_to_id(name):
  return name.lower().replace(' ', '_')

# Convert string to name convention, i.e. hello_world => Hello World
#
# This function is basically split underscore (_) in the given string into tiny pieces
# and then use that piece to construct a "First letter uppercase and the rest lowercase" style text
# and then combine every tiny pieces with empty space ( )
def convert_to_name(id):
  return ' '.join([x[0].upper() + x[1:] for x in id.split('_')])