# Analyzing the Impact of Business Hour Mismatch on Order Volume in the Food Delivery Industry: A Case Study of UEats and Ghub

**Prompt**

- It is important for a store to have consistent business hours across all food delivery platforms to avoid operational inconsistencies.
- If a store's business hours on one platform do not match the hours listed on another platform, it can create potential problems.
- Ensuring that a store's business hours are the same across all food delivery platforms is a key operational metric.

**Goal** 

The goal of this interview is to come up with a query to understand differences in the business hours for a store across all platforms. You will compute a metric called business hour mismatch between a store on Grubhub and a store on UberEats

For this problem statement, we will only focus on Grubhub and UberEats.

1. Write a SQL query/set of queries that 
    1. Computes Business Hours Mismatch between a restaurant on two platforms. For the sake of simplicity, we will assume UberEats as the **ground truth.** We will then try to find the issues in Grubhub store hours. 
        1. Identify if Grubhub Hours are within the range of UberEats hours (column:is_out_of_range: “In Range”, “Out of Range with 5 mins difference”, “Out of Range”) 

1) **Computing Business Hour Mismatch** 

**Data**

Note all the data is sample data available in BigQuery. (To view the data, open your personal BigQuery console and run these queries).

| UberEats | SELECT * FROM arboreal-vision-339901.take_home_v2.virtual_kitchen_ubereats_hours LIMIT 1000; |
| --- | --- |
| Grubhub | SELECT * FROM arboreal-vision-339901.take_home_v2.virtual_kitchen_grubhub_hours LIMIT 1000; |

Note: The (b_name,vb_name) tuple can be used as a key to identify the same store and join across the two tables.

Input 

**Uber Eats Business Hours** 

Take the first key value pair in the menu dictionary and the first section and assume that as the store business hours. 

Note: daysBitArray starts with Monday and indicates the days of the week for this time window is applicable. The might be more than element in the regularHours array. 

![UberEats](https://github.com/tknishh/case-study-UEats-Ghub-SQL/blob/master/images/ueats_mapping.png)

**Grubhub Business Hours** 

Grubhub

| Virtual Restaurant ID (slug)  | JSON response (response) | Link to Block |
| --- | --- | --- |
| johnspizz_sicilianpi_gh | SELECT response FROM arboreal-vision-339901.take_home_v2.virtual_kitchen_grubhub_hours LIMIT 1000; |  |
|  |  |  |

![GrubHub](https://github.com/tknishh/case-study-UEats-Ghub-SQL/blob/master/images/ghub_schema.png)

**Output** 

| Grubhub slug | Virtual Restuarant Business Hours | Uber Eats slug | Uber Eats Business Hours | is_out_range (expected output) |
| --- | --- | --- | --- | --- |
|  |  |  |  | In Range |
|  |  |  |  | Out of Range  |
|  |  |  |  | Out of Range with 5 mins difference between GH and UE |
