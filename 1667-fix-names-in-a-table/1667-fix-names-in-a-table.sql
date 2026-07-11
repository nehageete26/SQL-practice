select user_id , CONCAT( -- dono 1st and last part ko jodega 
    upper(SUBSTRING(name , 1,1)),   -- only first letter ko capital krega
    lower(SUBSTRING(name,2)) -- 2nd letter se end tak ko small krega 
) as name 
from Users
order by user_id;

-- SELECT INITCAP(name) FROM employees;-> ye build in function in postgre jo start letter ko capital aur baaki small banata hai eg. rAhUL shARMa -> Rahul Sharma