# Stock Price and Performance

This folder holds two notebook

1. [S&P 500](https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Stock%20Prices/S%26P%20500.ipynb) scrapes wikipedia for the latest companies and creates a dataset holding histroical performance.
2. [Stock Performance Tracker](https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Stock%20Prices/Stock%20Performance%20Tracker.ipynb) allows a user to input various stock ticker symbols and state the dat range they would like to view performance.

  There are 3 functions included in this notebook.
    
   1. `get_data()` which uses the yfinance python package to pull stock data from yahoo finance for a specific perfiod of time.
   2. `plotting_stocks()` takes in a dataframe of all stock information, and creates interactive subplots using the plotly package.
   3. `portfolio_stocks()` takes in user inputs for any number of stock ticker symbols to be plotted and time period using the 2 user-defined functions above to display final graphs.

**Disclaimer:** *Stock prices are not sourced from all markets and may be delayed depending on real time data available from yahoo finance. Information is provided 'as is' and solely for informational purposes, not for trading purposes or advice.*

## Code Demo
<img src="https://github.com/jasonmchlee/exploratory-data-analysis/blob/master/Stock%20Prices/code_display.gif">

