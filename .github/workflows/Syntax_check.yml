name: SQL Linting 

on:
  push:  
  pull_request:  

jobs:
  sql-lint:  
    runs-on: ubuntu-latest  

    steps:
      - name: Checkout repository  
        uses: actions/checkout@v4

      - name: Install SQLFluff  
        run: pip install sqlfluff

      - name: Lint SQL files  
        run: sqlfluff lint DatabaseAdministration/Test --dialect mysql
       
