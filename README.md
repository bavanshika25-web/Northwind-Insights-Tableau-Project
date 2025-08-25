# Northwind Insights Dashboard 📊

A comprehensive business intelligence project analyzing the classic Northwind database using SQL queries and Tableau visualizations to uncover key business insights and performance metrics.

## 🎯 Project Overview

This project demonstrates advanced SQL querying and data visualization skills by analyzing a fictional trading company's sales data. The analysis focuses on identifying top-performing products, sales trends, customer behavior, and operational efficiency across different dimensions.

## 📈 Key Performance Indicators (KPIs)

- **Total Revenue**: Comprehensive revenue calculation across all orders
- **Top Market**: Identification of highest-performing country by sales volume  
- **Customer Retention**: Analysis of returning customer rate percentage
- **Product Performance**: Revenue analysis by individual products
- **Sales Trends**: Monthly sales performance tracking

## 🔍 Analysis Categories

### 1. Product Performance
- **Best-Selling Products**: Top 10 products ranked by total revenue
- **Discontinued Product Analysis**: Historical performance of discontinued items
- **Low Stock Alert**: Products requiring inventory attention

### 2. Geographic Analysis  
- **Sales by Country**: Revenue distribution across different markets
- **Market Performance**: Identification of key geographic segments

### 3. Operational Insights
- **Shipping Analysis**: Performance metrics for different shipping companies
- **Employee Performance**: Order handling efficiency by sales representatives
- **Monthly Trends**: Time-series analysis of sales patterns

### 4. Customer Intelligence
- **Average Order Value**: Customer profitability analysis
- **Customer Retention**: Repeat purchase behavior tracking

## 🛠️ Technical Implementation

### Database Schema
The analysis utilizes the Northwind database with the following key tables:
- `orders` - Order header information
- `order_details` - Line item details with pricing and discounts
- `products` - Product catalog and inventory
- `customers` - Customer information and geography
- `employees` - Sales representative data
- `shippers` - Shipping company information

### SQL Features Used
- **Complex JOINs**: Multi-table relationships for comprehensive analysis
- **Aggregation Functions**: SUM, COUNT, AVG for metric calculations
- **Date Functions**: SUBSTR for time-based grouping
- **Conditional Logic**: Discount calculations and filtering
- **Window Functions**: Ranking and comparative analysis

## 📊 Tableau Dashboard Features
- Interactive filters for dynamic analysis
- Geographic heat maps for sales distribution
- Time-series charts for trend analysis
- KPI scorecards for executive summary
- Drill-down capabilities for detailed exploration

## 🚀 Getting Started

### Prerequisites
- SQL database engine (SQLite, MySQL, PostgreSQL, etc.)
- Tableau Desktop or Tableau Public
- Northwind sample database

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/northwind-insights-project.git
   ```

2. Import the Northwind database to your SQL environment

3. Execute the SQL queries in `Northwind_Insights_Project.sql`

4. Connect Tableau to your database and import the dashboard file

## 📁 Repository Structure

```
northwind-insights-project/
│
├── Northwind_Insights_Project.sql    # Core SQL analysis queries
├── README.md                         # Project documentation
├── dashboard/                        # Tableau dashboard files
│   ├── northwind_dashboard.twbx     # Tableau workbook
│   └── screenshots/                 # Dashboard screenshots
└── data/                            # Sample data exports
    └── query_results/               # CSV exports of key queries
```

## 🎯 Key Business Insights

*Update this section with actual findings from your analysis*

- **Top Revenue Generator**: [Product Name] contributed $X to total revenue
- **Primary Market**: [Country] represents X% of total sales
- **Customer Loyalty**: X% customer return rate indicates strong retention
- **Seasonal Trends**: Peak sales occur during [months/periods]
- **Operational Efficiency**: [Insights about shipping, employees, etc.]

## 🔧 Future Enhancements

- [ ] Customer segmentation analysis (RFM analysis)
- [ ] Predictive analytics for demand forecasting
- [ ] Cohort analysis for customer lifetime value
- [ ] Advanced statistical analysis (correlation, regression)
- [ ] Real-time dashboard with automated data refresh

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

Project Link: [https://github.com/yourusername/northwind-insights-project](https://github.com/yourusername/northwind-insights-project)

## 🙏 Acknowledgments

- Microsoft for providing the Northwind sample database
- Tableau community for visualization inspiration
- SQL community for best practices and optimization techniques

---

*This project demonstrates proficiency in SQL, data analysis, and business intelligence visualization using industry-standard tools and methodologies.*
