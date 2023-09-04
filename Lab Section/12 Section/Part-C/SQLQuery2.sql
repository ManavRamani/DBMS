-- Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select (max(Salary))-(min(Salary)) as DIFFERENCE from Employee