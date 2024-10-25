Real-Time Weather Data Monitoring System
This system continuously tracks, analyzes, and visualizes weather data in real-time using the OpenWeatherMap API. Built with Java, Spring Boot, and MySQL, it provides summarized insights, forecast updates, and custom alerts, packaged in a Dockerized environment for easy deployment.

Project Overview
Our Real-Time Weather Monitoring System functions as a dynamic data processing engine:

Data Source: Fetches live weather data from OpenWeatherMap API at a configurable interval (e.g., every 5 minutes).
Rollups and Aggregates: Aggregates daily weather metrics, stores summaries, and provides insights through a user interface.
Alerts: Custom, threshold-based alerts are triggered when specific conditions are met.
Key Features
Real-Time Data Retrieval: Continuously calls the OpenWeatherMap API to retrieve real-time weather data for major cities across India (Delhi, Mumbai, Chennai, Bangalore, Kolkata, and Hyderabad).
Temperature Conversion: Converts temperatures from Kelvin to Celsius (user preferences can be added for Fahrenheit).
Daily Summaries: Aggregates daily values, including average, maximum, and minimum temperatures, with a calculated dominant weather condition.
Custom Alerts: User-defined thresholds for critical conditions, such as high temperatures or specific weather events, trigger alerts.
Data Visualization: Displays trends via charts using Thymeleaf and Bootstrap.
Dockerized Deployment: Containerized with Docker for scalable deployment.
Email Alerts: Configurable email alerts to notify users of threshold breaches.
Technology Stack
Backend: Java, Spring Boot, REST APIs, Spring Security
Database: MySQL for data persistence
Frontend: Thymeleaf, Bootstrap, CSS
Data Source: OpenWeatherMap API
Visualization: Thymeleaf for data visualization
Containerization: Docker, Docker Compose
Monitoring: Chart.js for trend visualization
Setup & Run Instructions
Prerequisites
Ensure the following are installed on your system:

JDK 21 or later
Docker and Docker Compose
MySQL
Maven (for building the project)
IntelliJ IDEA
Local Deployment (Recommended for Development)
Clone the Repository:

bash
Copy code
git clone https://github.com/yourusername/weather-monitoring-system.git
cd weather-monitoring-system
Configure Database:

Ensure MySQL is running and create a new database:
sql
Copy code
CREATE DATABASE weather_monitoring;
Update application.properties with your MySQL credentials.
Build and Run the Application:

Use Maven to clean and package the project:
bash
Copy code
mvn clean package
Start the Spring Boot application:
bash
Copy code
mvn spring-boot:run
Access the Dashboard:

Access the dashboard at http://localhost:8080/dashboard/dailySummary and other endpoints for different insights.
Dockerized Deployment (Optional for Production)
Database Setup:
Create a new MySQL connection using the Docker configuration.
Run the Application:
Use Docker Compose to build and run:
bash
Copy code
docker-compose up
API Endpoints (Test with Postman)
Daily Summaries: GET /weather/dailySummary?date={date}
Weather Forecast: GET /weather/forecast?city={city}
Historical Data: GET /weather/historyData?city={city}&date={date}
Key Components
Daily Rollups: Calculates daily averages, max/min temperatures, and dominant weather conditions.
Alert Monitoring: Triggers alerts based on threshold breaches for temperature and weather conditions.
Test Cases
System Initialization: Verifies system connection to the OpenWeatherMap API.
Data Retrieval: Simulates data fetches at regular intervals and validates correct parsing.
Temperature Conversion: Tests Kelvin-to-Celsius conversion.
Daily Aggregates: Simulates several days of data to verify aggregate accuracy.
Threshold Alerts: Tests alert functionality for conditions such as high temperatures.
Additional Features
Extended Parameters: Additional weather parameters like humidity and wind speed are included.
Email Notifications: Alerts are sent via email for significant weather events.
