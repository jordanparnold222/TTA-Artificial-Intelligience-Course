import pandas as pds

#Load contents of csv into dataframe
data = pds.read_csv(r'Pandas_Assignment\grades.csv')
#Calculate average grade
average_grades = data.groupby('Student Name')['Grade'].mean()
#Calculate and display maximum grade
max_grade = data['Grade'].max()
print('Highest grade in the class: ', max_grade)
#Calculate and display minimum grade
min_grade = data['Grade'].min()
print('Lowest grade in the class: ', min_grade)
#Display overall class average
class_average = data['Grade'].mean()
print("The overall average grade in this class is: ", class_average)
#Create pass/fail column
data['Pass/Fail'] = data['Grade'].apply(lambda x: 'Pass' if x >= 60 else 'Fail')
#Count number of students who passed and failed
pass_count = data[data['Pass/Fail'] == 'Pass'].shape[0]
fail_count = data[data['Pass/Fail'] == 'Fail'].shape[0]
print("Number of students passed: ", pass_count)
print("Number of students failed: ", fail_count)