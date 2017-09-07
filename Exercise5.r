#Exercise5 using two alternate approaches
install.packages("rvest")   #rvest can be used to harvest data easily
#Setting wd to where the employee csv file is located
setwd("D://MICA/AMMA/Code&Data")
empDF <- read.csv("emp.csv")
depDF <- read.csv("dept.csv")

mergedDF <- merge(empDF,depDF,by="departmentNO",all = TRUE)
#Creating new DF using concatenation
newDF<- c(rep(0,nrow(department)))
salaryLoc <- c(rep(0,nrow(department)))
for (i in 1:nrow(department))
  {
    for (i2 in 1:nrow(mergedDF))
    {
        if (!is.na(mergedDF$LOC[j]))
        {  
              mergedDF$LOC[j] <- department$LOC[j]
              N_employeeLoc[i] <- N_employeeLoc[i] +1
              salaryLoc[i] <- salaryLoc[i] + mergedDF$SAL[j]
        }    
    }  
  }    

mean_salary_loc <- c(rep(0,nrow(department)))
for (i3 in 1:nrow(department))
{
  mean_salary_loc[i3] <- salaryLoc[i3]/N_employeeLoc[i3]
}
employee_csv.df<-read.csv("employee.csv",header=T)
department_csv.df<-read.csv("department.csv",header=T)
employee_department_merged.df=merge(employee_csv.df,department_csv.df,by=c("departmentNO"),all=TRUE)
employee_department_merged_hike.df <- employee_department_merged.df
for(i in 1:nrow(employee_department_merged.df))
{
  if(!is.na(employee_department_merged.df$JOB[i]))
  {
  if(employee_department_merged.df$JOB[i]=="ANALYST")
  {
    employee_department_merged_hike.df$SAL[i] = employee_department_merged.df$SAL[i] + (0.15 * employee_department_merged.df$SAL[i])
  }
  }
}
for(i in 1:nrow(employee_department_merged.df))
{
  if(!is.na(employee_department_merged.df$JOB[i]))
     {
  if(employee_department_merged.df$JOB[i]=="CLERK")
  {
    employee_department_merged_hike.df$SAL[i] = employee_department_merged.df$SAL[i] + (0.125 * employee_department_merged.df$SAL[i])
  }
  }
}
for(i in 1:nrow(employee_department_merged.df))
{
  if(!is.na(employee_department_merged.df$JOB[i]))
     {
  if(employee_department_merged.df$JOB[i]=="MANAGER")
  {
    employee_department_merged_hike.df$SAL[i] = employee_department_merged.df$SAL[i] + (0.102 * employee_department_merged.df$SAL[i])
  }
  }
}

for(i in 1:nrow(employee_department_merged.df))
{
  if(!is.na(employee_department_merged.df$JOB[i]))
  {
  if(employee_department_merged.df$JOB[i]=="PRESIDENT")
  {
    employee_department_merged_hike.df$SAL[i] = employee_department_merged.df$SAL[i] + (0.057 * employee_department_merged.df$SAL[i])
  }
  }
}

for(i in 1:nrow(employee_department_merged.df))
{
  if(!is.na(employee_department_merged.df$JOB[i]))
{
  if(employee_department_merged.df$JOB[i]=="SALESMAN")
  {
    employee_department_merged_hike.df$SAL[i] = employee_department_merged.df$SAL[i] + (0.133 * employee_department_merged.df$SAL[i])
  }
  }
}

## Increased Salaries DataFrame
View(employee_department_merged_hike.df)
