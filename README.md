# City Surf Project
## Data Analysis of City Surf Project Programs
City Surf Project (CSP) is a non-profit in San Francisco that takes students from underserved communities throughout San Francisco surfing to teach them about the importance of physical exercise and expose them to the benefits of nature and the sport. Their programs allow students to fulfill their PE requirement in certain San Francisco Unified School District (SFUSD) schools. 

## Purpose 
Elena and Slade want to use data analysis to support meaningful work happening in companies and organizations that are doing good for our communities. CSP began collecting data about their students and programs in 2018 and would now like to gain a better understanding of what areas of San Francisco their students come from, trends in attendance rates, and what students are most likely to show up for their programs. Ideally, they are looking to use data analysis to support the evaluation of their programs and finds any gaps that they could work on to improve their programming, outreach and overall strategy-mapping. The purpose of our findings are to help highlight the trends and visualizations in their data needed to secure donor funding, grant funding, and increased support from the community to continue and potentially expand their programming in San Francisco. Elena and Slade offered their services as volunteer data analysts because they believe organizations like CSP need storytelling with data to help expand their mission and shape their work.

## Tools & Technologies 
- Python 
- Pandas
- PostgreSQL 
- Tableau 
- SciKit Learn's Random Forest Classifier

## Data Source
The Department of Children, Youth and Family Services (DCYFS) in San Francisco provides a portal for records of organizations like CSP. Within this portal is a database of CSP's data. Four CSV files were extracted and provided to Slade and Elena. 
1. One spreadsheet on activities and attendance dates per student
2. Two spreadsheets on school hosts and CSP programs
3. One spreadsheet on student demographics 

### Limitations of Data
Small data set 
Programs have been ongoing for only 2 years
Incomplete and often inconsistent data 
Small non-profit with limited data resources

### Positives of Data
Student demographic data
For limited data, very descriptive
Excellent primary/foreign keys
Relatively clean

## Questions / Analysis Goals
CSP's analysis goals are categorized into the following: 

#### Demographic Information of CSP Participants
Where do most students go to school? 
What age group is most likely to join CSP for the first time? 
Where do students live? 

#### Programmatic Information
How many students will join another CSP program? 
What are the attendance trends for long-term programs? 
How many students only take one course?
 

## Presentation & Dashboard
Google Slides Link: https://docs.google.com/presentation/d/1uXzL_WvbdDjzIa7nO1yCg_7yLQpG2iWSsYcXShO_vI0/edit?usp=sharing

### Final Dashboard 
We created our dashboard using the Tableau software. The outline of our slides below describes the structure of our presentation, combining the analysis sections wished to be explored by CSP and by Slade and Elena. 

### Interative Elements & Visualizations
- The map of student distribution across the city, specifically showing what parts of the city participants live in
- Users may input certain student characteristics and the model will calculate the likelihood that student will participate in CSP programs 


## Staying with CSP: Using Machine Learning for the Mission
We created a supervised machine learning model to predict what type of students are more likely to participate in CSP programs. This model is created with the intention of allowing CSP to better understand their student participant patterns, what students they most successfully serve and using that output to help highlight what other students are not participating or drop out early. With future students and data collection, future inputs into the model have the potential to assist CSP with their mission.
Rather than giving a clear answer, it can help CSP ask greater questions about their outreach strategies and inclusivity goals. 

### Question
Will a student return to CSP Programs?

### Feature Selection
- Program Type
- Grade Level
- Date of Birth
- Ethnicity/Race
- Gender
- Home Zip Code
- School Attending
- % of Total Classes Attended

### Data Preprocessing

The machine learning dataset resulted from a join between columns from both the student demographic and a transformed attendance sheet that shows student’s demographic information and how many different CSP programs they attended. 



### Feature Importance
1. CSP Enrollment Age
2. Home Zip Code
3. Race/Ethnicity


### Limitations of Machine Learning 
Small data set
Unequal opportunities at schools 
Data not complete (attendance sheet/demographic sheet)


### Benefits

TBD

## Results

TBD


## Recommendations 

