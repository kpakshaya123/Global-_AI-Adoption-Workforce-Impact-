create database AI;
use  AI;
drop database AI;
CREATE TABLE ai_industry_summary (
    industry VARCHAR(100) PRIMARY KEY,
    avg_ai_adoption_rate DECIMAL(10,2),
    avg_productivity_change_percent DECIMAL(10,2),
    avg_ai_maturity_score DECIMAL(10,2),
    avg_ai_failure_rate DECIMAL(10,2),
    avg_jobs_displaced DECIMAL(10,2),
    avg_jobs_created DECIMAL(10,2),
    avg_customer_satisfaction DECIMAL(10,2)
);
CREATE TABLE country_ai_index (
    country VARCHAR(100) PRIMARY KEY,
    region VARCHAR(100),
    gdp_per_capita DECIMAL(15,2),
    internet_penetration DECIMAL(5,2),
    digital_maturity_index DECIMAL(5,2),
    country_ai_policy VARCHAR(50),
    ai_patent_filings_2024 INT,
    ai_researchers_per_million DECIMAL(10,2)
);
CREATE TABLE ai_company_adoption (

    response_id INT PRIMARY KEY,

    company_id VARCHAR(20),
    survey_year INT,
    quarter VARCHAR(5),

    country VARCHAR(100),
    region VARCHAR(100),
    industry VARCHAR(100),

    company_size VARCHAR(50),
    num_employees INT,
    annual_revenue_usd_millions DECIMAL(15,2),

    company_founding_year INT,
    company_age INT,
    company_age_group VARCHAR(50),

    ai_adoption_rate DECIMAL(7,2),
    ai_adoption_stage VARCHAR(50),
    years_using_ai INT,
    ai_primary_tool VARCHAR(100),
    num_ai_tools_used INT,
    ai_use_case VARCHAR(100),

    ai_projects_active INT,
    ai_training_hours DECIMAL(10,2),
    ai_budget_percentage DECIMAL(7,2),
    ai_maturity_score DECIMAL(6,3),
    ai_failure_rate DECIMAL(7,2),
    ai_investment_per_employee DECIMAL(15,2),

    regulatory_compliance_score DECIMAL(7,2),
    data_privacy_level VARCHAR(50),
    ai_ethics_committee VARCHAR(10),
    ai_risk_management_score DECIMAL(7,2),

    remote_work_percentage DECIMAL(7,2),
    employee_satisfaction_score DECIMAL(7,2),
    task_automation_rate DECIMAL(7,2),
    time_saved_per_week DECIMAL(10,2),
    productivity_change_percent DECIMAL(7,2),

    jobs_displaced INT,
    jobs_created INT,
    reskilled_employees INT,

    revenue_growth_percent DECIMAL(7,2),
    cost_reduction_percent DECIMAL(7,2),
    innovation_score DECIMAL(7,2),
    customer_satisfaction DECIMAL(7,2),

    survey_source VARCHAR(100),
    data_collection_method VARCHAR(100),
    FOREIGN KEY (country)REFERENCES country_ai_index(country),
    FOREIGN KEY (industry)REFERENCES ai_industry_summary(industry));
    select*from ai_industry_summary ;
     select*from country_ai_index;
     select*from ai_company_adoption;