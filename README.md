# Portfolio Benchmark Analysis Project

This project aims to analyze and benchmark the performance of a financial portfolio against major market indices like the S&P 500 and TSX300. It involves fetching historical market data, calculating performance metrics, visualizing data, and predicting future portfolio values.

## Project Structure

The project consists of Python scripts for data manipulation and analysis, Docker configurations for containerization, and a Jupyter Notebook for interactive data visualization.

### Key Features

- Data fetching from Yahoo Finance using `yfinance`.
- Performance comparison with S&P 500 and TSX300 indices.
- Calculation of financial metrics such as Sharpe Ratio, Alpha, and Beta.
- Interactive visualizations with `plotly`.
- Predictive analysis for future portfolio performance.
- Containerized Jupyter environment for analysis.

## Requirements

- Python 3.11
- Docker
- Docker Compose

## Installation

1. **Clone the repository**

   ```
   git clone https://github.com/TeomanEgeSelcuk/Portfolio-Benchmarks.git
   ```
2. **Build the Docker container**

   Navigate to the project directory and run:

   ```
   docker-compose up --build
   ```

   This command builds and runs the container defined in the Dockerfile and docker-compose.yml, setting up the Jupyter Notebook environment.

## Usage

After building and running the container, access the Jupyter Notebook via the link displayed in the console. The link contains a token for authentication.

The notebook directory within the container is mapped to the `notebooks` directory in your project folder, allowing you to persist your work.

## Data Analysis Workflow

1. **Importing Libraries**

   Essential libraries for data manipulation, visualization, and financial data fetching are used, including `pandas`, `numpy`, `plotly`, and `yfinance`.
2. **Data Fetching and Preparation**

   Historical data for the S&P 500 and TSX300 indices is fetched for a specified period. Closing prices and daily percentage changes are processed and prepared for analysis.
3. **Portfolio Performance Analysis**

   The portfolio's historical values are loaded, and various performance metrics are calculated and compared with the market indices.
4. **Visualizing Data**

   Interactive visualizations are created to compare portfolio performance metrics against the market indices.
5. **Performance Metrics Calculation**

   Key financial metrics including Sharpe Ratio, Alpha, and Beta are calculated to evaluate the portfolio's performance.
6. **Predictive Analytics**

   A predictive model is built to forecast future portfolio values, utilizing polynomial features and linear regression.

## Docker Configuration

- **Dockerfile**: Defines the Python environment, installs dependencies, and sets up the Jupyter Notebook server.
- **docker-compose.yml**: Configures the service, including port mapping and volume setup for the Jupyter environment.

## Contributing

Contributions to the project are welcome. Please follow the standard fork and pull request workflow.

## License

Specify your project's license here.
