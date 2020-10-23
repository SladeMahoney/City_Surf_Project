# City Surf Project
## Data Analysis of City Surf Project Programs
City Surf Project (CSP) is a non-profit in San Francisco that takes students from underserved communities throughout San Francisco surfing to teach them about the importance of physical exercise and expose them to the benefits of nature and the sport. Their programs allow students to fulfill their PE requirement in certain San Francisco Unified School District (SFUSD) schools. 

Website: https://www.citysurfproject.com/about/

CSP Programs Analyzed
- Intro to Surfing - one day events
- Surfing 101 High School (HS) - after school for ~17 weeks
- Surfing 101 Middle School (MS) - after school for ~9 weeks
- Surf Instructor Leadership Training (SILT) - Summer Program K-12
- Other: Surf Club - optional

Top Partner Public Schools
- Mission High School
- Leadership High School
- Independence High School
- Ida B Wells
- Aptos Middle School

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

## Presentation & Final Dashboard
Google Slides Link: https://docs.google.com/presentation/d/1uXzL_WvbdDjzIa7nO1yCg_7yLQpG2iWSsYcXShO_vI0/edit?usp=sharing

Tableau Desktop Link:

### Analysis Results 
- The city map shows the distribution of CSP participants across San Francisco and the Bay Area. Users can hover their cursor over each bubble, and the rings within each bubble on the map displays a marker with the number of participants living in that zip code and the schools they attend. 

![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/CityMap.PNG)

#### CSP Participant Breakdown

![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/Demog.PNG)
<img src= "https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/Age_Enr.PNG" width="650">
![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/schoolpartners.PNG)


#### One-Time High School Participants
One-time participants are defined as high school students who are registered with CSP and only attend a CSP activity once. A total of 161 high school students attended CSP programs once between 2018-2020, but only 49 students had complete registration. 

_*Note: Student demographic information is only available for students with completed registrations_

#### Returning Students
- Number of Times Students Attended a Unique Program Activity

Most students take one class, usually  by attending one day events (surf trips). About 1 in 10 students takes 3+ classes with CSP, whether they are registered or not. This is for all program activities offered throughout the year for many grade levels. 

<img src="https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/distinctactivity.PNG" width="650">

- Multi-Program Students

This graph has grouped students in CSP with participation across multiple programs. When users hover their cursor over each bar, a popup marker displays the Activity Name, Participant ID and the number of times the student has joined the distinct program activity (not single attendances).
<img src="https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/multiprogram.PNG" width="630">

#### Attendance Trends
Attendance count for all programs, single-day surf trips and long-term programs (260+ days).
![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/activityattendances.PNG)

## Staying with CSP: Using Machine Learning for the Mission
We created a supervised machine learning model to predict what type of students are more likely to participate in CSP programs. This model is created with the intention of allowing CSP to better understand their student participant patterns, what students they most successfully serve and using that output to help highlight what other students are not participating or drop out early. With future students and data collection, future inputs into the model have the potential to assist CSP with their mission and outreach strategies.

### Question
Will a student return to CSP Programs?

### Data Preprocessing
The machine learning dataset resulted from a join between columns from both the student demographic and a transformed attendance sheet that shows student’s demographic information and how many different CSP programs they attended. Unnecessary columns were dropped to narrow our focus. The data was scaled prior to setting the training and testing sets and some columns (Gender, City, Race/Ethnicity, School Attending, Enrollment Date) were encoded to transform string data type columns into numeric. 

### Feature Selection
The features listed below were carefully selected because they contribute uniquely to participants' identity and relate to CSP's inclusivity goals. Question and factors were carefully chosen to protect students and CSP.

- Age of Enrollment 
- Ethnicity/Race
- Gender
- Home Zip Code
- School Attending
- CSP Enrollment Date

### Models Explored
A comparative analysis between Logistic Regression and Random Forest Classifier (RFC) found that Sci-Kit Learn's Random Forest Classifier is a better model for CSP's data on returning students. This model computed a higher accuracy score and performed better due to its ability to weigh out the importance of the chosen features through many decision-tree processes. 

### Feature Importance
1. CSP Enrollment Age 
2. Home Zip Code
3. Race/Ethnicity

![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/weight.PNG)

## Results: Confusion Matrix, Accuracy Score, and Classification Report
![alt text](https://github.com/SladeMahoney/City_Surf_Project/blob/Elena/images/matrix_scores.PNG)

- Actual 0 = True Negative - one-time participants
- Actual 1 = True Positive - returned to CSP
- Predicted 0 = False Positive
- Predicted 1 = False Negative

The Confusion Matrix shows the model can accurately predict 32 students to be one-time participants. This is the True Negative (TN). One student was predicted to return to CSP programs but in fact was a one-time participant (False Positive). 10 Students were predicted to be one-time participants but in fact returned to CSP Programs (False Negative). And finally 4 students were accurately predicted to return to CSP (True Positive). 

The precision score is high because of the low false positive count. Recall score is high and accurate for one-time participants, but not for returning students. This is probably attributed to the on average, lower count of these students. 

### Limitations of Machine Learning and Model of Choice
- Small data turnout, complete information for only 186 students used for this model
- Discrepancies between sheets (attendance sheet/demographic sheet) or incomplete data
- Unequal opportunities at schools, a disadvantage with RFC weighted feature process
- Strict feature selection creates narrow model and unavoidable bias 
- Ethical concerns - protecting participant identity at any given cos

## Recommendations 
### For Future Analysis

Outstanding Research Goals
- Length of time specific students are with CSP
- Existence of sibling engagement within CSP programs

More robust data collection
- Similar distribution of recorded participants for both student demographic information and attendance records
- Narrowing the gap in participant discrepancies can allow for more accurate visuals of representation in that no students are left behind 

### Workflow Process
- Assign clear boundaries in project workflow to avoid issues with branching; more intentional with merges
- Refining the statistical analysis on attendance and participation trends by program type and length
