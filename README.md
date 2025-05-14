# HR-Data-Report-Project

# HR Data Analysis

## 📁 Dataset
- **Source**: HR data with over 22,000 records from 2000 to 2020.
- **Tools Used**:
  - Data Cleaning & Analysis: **MySQL Workbench**
  - Data Visualization: **Power BI**

## ❓ Questions Explored
- Gender breakdown of employees
- Race/ethnicity distribution
- Age distribution
- HQ vs remote employee count
- Average tenure of terminated employees
- Gender distribution by department and job title
- Job title distribution
- Department turnover rates
- Employee distribution by U.S. state
- Changes in employee count over time (based on hire/term dates)
- Tenure distribution per department

## 📊 Key Insights
- Majority of employees are male.
- Predominantly White workforce; Native Hawaiian and American Indian are least represented.
- Employee age range: 20–57.
- Largest age groups: 25–34 and 35–44. Smallest: 55–64.
- Most employees work at headquarters.
- Average tenure for terminated employees: ~7 years.
- Gender distribution is relatively balanced across departments, skewing slightly male.
- Highest turnover: Marketing and Training. Lowest: R&D, Support, and Legal.
- Ohio has the largest employee base.
- Net employee count has increased over time.
- Average tenure per department: ~8 years. Highest in Legal and Auditing; lowest in Services, Sales, and Marketing.

## ⚠️ Data Limitations
- 967 records with invalid (negative) ages were excluded (only ages 18+ considered).
- 1,599 records with future termination dates were removed (only term dates ≤ current date used).
