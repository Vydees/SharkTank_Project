
/*How many startups received funding ? 

   Select Count(Distinct Pitching_Brands)
   From Main_Dataset
   Where Funding_Invested( In Lakhs )>0

/* How many startups did not receive the funding ? 

   Select Count(Pitching_Brands)
   From Main_Dataset
   Where Funding_Invested( In Lakhs )=0

/* How much amount invested in Food category ?

   Select Sum(Funding Invested) as Total_Funding(Food Category)
   From Main Dataset
   Group By Business_Categories
   Where Business_Categories='Food'

/* Which startup got the highest funding ?

   Select Max(funding_Invested)
   From Main_Dataset
   Limit 1

/* What is the total amount invested by each company ?

   Select Sum(Distinct Funding Invested( In Lakhs )) as Funding_By_Each_Company
   From Main Dataset
   Group By BharatPe Amount Invested( Lakhs ), 
   Emcure Amount Invested( Lakhs ), Lenskart Amount Invested( Lakhs ), Shaadi.com Amount Invested( Lakhs ), 
   Boat Amount Invested( Lakhs ), Sugar Cosmetics Amount Invested( Lakhs )

/* Name of each startups along with their turnover & funding raised
   
   ( Primary key is company id for both tables )
   Alter table Main_Dataset
   Add Primary key(Company_ID)

   Alter table Annual_Turnover
   Add Primary key(Company_ID)

   Select funding_invested as Funding_Raised, turnover as Annual_Turnover
   From Main_Dataset as t1
   Left Join Annual Turnover as t2
   On t1.Company_ID=t2.Company_ID

/* Rank the startups based on funding amount received in descending order

   Select Pitching_Brands, Funding_Invested(In Lakhs)
   DENSE_RANK() over(Order By Funding Invested(In Lakhs) Desc) as Ranking
   From Main_Dataset


   