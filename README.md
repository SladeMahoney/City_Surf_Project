# City Surf Project
## Data Analysis of City Surf Project Programs
City Surf Project (CSP) is a non-profit in San Francisco that takes students from underserved communities throughout San Francisco surfing to teach them about the importance of physical exercise and expose them to the benefits of nature and the sport. Their programs allow students to fulfill their PE requirement in certain San Francisco Unified School District (SFUSD) schools. 

## Purpose 
Elena and Slade want to use data analysis to support meaningful work happening in companies and organizations that are doing good for our communities. CSP began collecting data about their students and programs in 2018 and would now like to gain a better understanding of what areas of San Francisco their students come from, trends in attendance rates, and what students are most likely to show up for their programs. Ideally, they are looking to use data analysis to support the evaluation of their programs and finds any gaps that they could work on to improve their programming, outreach and overall strategy-mapping. The purpose of our findings are to help highlight the trends and visualizations in their data needed to secure donor funding, grant funding, and increased support from the community to continue and potentially expand their programming in San Francisco. Elena and Slade offered their services as volunteer data analysts because they believe organizations like CSP need storytelling with data to help expand their mission and shape their work.

## Tools & Technologies 
Below are the tools and softwares used to explore, prepare, and manage the data for analyses and visual preparation
- Python 
- Pandas / Jupyter Notebook
- PostgreSQL /PgAdmin
- Tableau 
- SciKit-Learn Library

## Data Source
The Department of Children, Youth and Family Services (DCYFS) in San Francisco provides a portal for records of organizations like CSP. Within this portal is a database of CSP's data. Four CSV files were extracted and provided to Slade and Elena. 
1. One spreadsheet on activities and attendance dates per student
2. Two spreadsheets on school hosts and CSP programs
3. One spreadsheet on student demographics 

### Entity Relationship Diagram
![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/ERD.PNG)

### Limitations of Data
- The datasets are small, the largest sheet is of attendance records for all programs (~5,000 rows)
- Program and participant data collection is recent, ongoing for only 2 years
- Incomplete participant information and discrepancies in extracted files
- Small non-profit with limited data resources and tools

### Positives of Data
- Student demographic information is thorough 
- Ability to perform joins, appropriate primary and foreign keys
- The data is relatively clean and easy to explore

## Questions / Analysis Goals
Both CSP and Slade and Elena's analysis goals are categorized into the following: 

#### Demographic Information of CSP Participants
- Where do students live (by zip code)?
- Where do most students go to school? 
- What age group is most likely to join CSP for the first time? 

#### Programmatic Information
- Which students are only one-time participants?
- How many students join other CSP programs (returning participants)?
- What are the attendance trends for short and long-term programs? 
- Predicting potential CSP participants

## Presentation & Dashboard
Google Slides Link: https://docs.google.com/presentation/d/1uXzL_WvbdDjzIa7nO1yCg_7yLQpG2iWSsYcXShO_vI0/edit?usp=sharing

### Final Dashboard 
We created our dashboard using the Tableau software. The outline of our slides below describes the structure of our presentation, combining the analysis sections wished to be explored by CSP and by Slade and Elena. 

### Interative Elements & Visualizations
- The city map shows the distribution of CSP participants across San Francisco and the Bay Area. Users can hover their cursor over each bubble, and the rings within each bubble on the map displays a marker with the number of participants living in that zip code and the schools they attend. 

![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/CityMap.PNG)

## Staying with CSP: Using Machine Learning for the Mission
We created a supervised machine learning model to predict what type of students are more likely to participate in CSP programs. This model is created with the intention of allowing CSP to better understand their student participant patterns, what students they most successfully serve and using that output to help highlight what other students are not participating or drop out early. With future students and data collection, future inputs into the model have the potential to assist CSP with their mission and outreach strategies.

### Question
Will a student return to CSP Programs?

### Models Explored
A comparative analysis between Logistic Regression and Random Forest Classifier found that Sci-Kit Learn's Random Forest Classifier is a better model for CSP's data on returning students. This model computed a higher accuracy score and performed better due to its ability to weigh out the important of the chosen features through many decision-tree processes. The data was scaled prior to setting the training and testing sets and it was label encoded to transform all string data type columns into numeric. 


### Feature Selection
The features listed below were carefully chosen because they contribute uniquely to participants' identity and relate to CSP's inclusivity goals
- Age of Enrollment 
- Ethnicity/Race
- Gender
- Home Zip Code
- School Attending
- CSP Enrollment Date

### Data Preprocessing
The machine learning dataset resulted from a join between columns from both the student demographic and a transformed attendance sheet that shows student’s demographic information and how many different CSP programs they attended. 

### Feature Importance
1. CSP Enrollment Age 
2. Home Zip Code
3. Race/Ethnicity

![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/weight.PNG)

### Limitations of Machine Learning 
Small data set
Unequal opportunities at schools 
Data not complete (attendance sheet/demographic sheet)


## Results
![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/matrix_scores.PNG)

## Recommendations 
- Narrow the gap between participants listed in the student demographic information sheet and those in the attendance records. Aiming for a similar student distribution in both sheets can support future analyses; no students are left behind and it makes for a clearer representation of participants.

