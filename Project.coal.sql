create database project;
use project;
create table Coal(
    Date date,
	Coal_RB_4800_FOB_London_Close_USD Float,
	Coal_RB_5500_FOB_London_Close_USD Float,
	Coal_RB_5700_FOB_London_Close_USD Float,
	Coal_RB_6000_FOB_CurrentWeek_Avg_USD Float,
	Coal_India_5500_CFR_London_Close_USD Float,
	Price_WTI Float,
	Price_Brent_Oil Float,
	Price_Dubai_Brent_Oil Float,
	Price_ExxonMobil Float,
	Price_Shenhua Float,
	Price_All_Share Float,
	Price_Mining Float,
	Price_LNG_Japan_Korea_Marker_PLATTS Float,
	Price_ZAR_USD Float,
	Price_Natural_Gas Float,
	Price_ICE Float,
	Price_Dutch_TTF Float,
	Price_Indian_en_exg_rate Float);

select count(*) as Row_Count
from project.coal;

----------------------------------------------- Calculated Mean For each columns -------------------------------------------------------------------------------

select 
AVG(Coal_RB_4800_FOB_London_Close_USD) as Mean_Coal_RB_4800,
AVG(Coal_RB_5500_FOB_London_Close_USD) as Mean_Coal_RB_5500,
AVG(Coal_RB_5700_FOB_London_Close_USD) as Mean_Coal_RB_5700,
AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as Mean_Coal_RB_6000,
AVG(Coal_India_5500_CFR_London_Close_USD) as Mean_Coal_India_5500,
AVG(Price_WTI) as Mean_Price_WTI,
AVG(Price_Brent_Oil) as Mean_Price_Brent_oil,
AVG(Price_Dubai_Brent_Oil) as Mean_Dubai_Brent_Oil,
AVG(Price_ExxonMobil) as Mean_Price_ExxonMobil,
AVG(Price_Shenhua) as Mean_Price_Shenhua,
AVG(Price_All_Share) as Mean_Price_All_Share,
AVG(Price_Mining) as Mean_Price_Mining,
AVG(Price_LNG_Japan_Korea_Marker_PLATTS) as Mean_Price_LNG,
AVG(Price_ZAR_USD) as Mean_Price_ZAR,
AVG(Price_Natural_Gas) as Mean_Price_Natural_Gas,
AVG(Price_ICE) as Mean_Price_ICE,
AVG(Price_Dutch_TTF) as Mean_Price_Dutch_TTF,
AVG(Price_Indian_en_exg_rate) as Mean_Price_Indian_en_exg_rate
from project.coal;

----------------------------------------------------- Calculated Median for each Columns ------------------------------------------------------------------------

1)  with ranked as(
	select Coal_RB_4800_FOB_London_Close_USD,
	row_number() over(order by Coal_RB_4800_FOB_London_Close_USD) as r,
	count(Coal_RB_4800_FOB_London_Close_USD) over() as c
	from Project.Coal
	),
	median as (
	select Coal_RB_4800_FOB_London_Close_USD as Median_Coal_RB_4800
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median

2)  with ranked as(
	select Coal_RB_5500_FOB_London_Close_USD,
	row_number() over(order by Coal_RB_5500_FOB_London_Close_USD) as r,
	count(Coal_RB_5500_FOB_London_Close_USD) over() as c
	from Project.Coal
	),
	median as (
	select Coal_RB_5500_FOB_London_Close_USD as Median_Coal_RB_5500
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median

3)  with ranked as(
	select Coal_RB_5700_FOB_London_Close_USD,
	row_number() over(order by Coal_RB_5700_FOB_London_Close_USD) as r,
	count(Coal_RB_5700_FOB_London_Close_USD) over() as c
	from Project.Coal
	),
	median as (
	select Coal_RB_5700_FOB_London_Close_USD as Median_Coal_RB_5700
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median

4)  with ranked as(
	select Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
	row_number() over(order by Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as r,
	count(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) over() as c
	from Project.Coal
	),
	median as (
	select Coal_RB_6000_FOB_CurrentWeek_Avg_USD as Median_Coal_RB_6000
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
5)  with ranked as(
	select Coal_India_5500_CFR_London_Close_USD,
	row_number() over(order by Coal_India_5500_CFR_London_Close_USD) as r,
	count(Coal_India_5500_CFR_London_Close_USD) over() as c
	from Project.Coal
	),
	median as (
	select Coal_India_5500_CFR_London_Close_USD as Median_Coal_Indian_5500
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
6)  with ranked as(
	select Price_WTI,
	row_number() over(order by Price_WTI) as r,
	count(Price_WTI) over() as c
	from Project.Coal
	),
	median as (
	select Price_WTI as Median_Price_WTI
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median    
    
7)  with ranked as(
	select Price_Brent_Oil,
	row_number() over(order by Price_Brent_Oil) as r,
	count(Price_Brent_Oil) over() as c
	from Project.Coal
	),
	median as (
	select Price_Brent_Oil as Median_Price_Brent_Oil
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median 
    
8)  with ranked as(
	select Price_Dubai_Brent_Oil,
	row_number() over(order by Price_Dubai_Brent_Oil) as r,
	count(Price_Dubai_Brent_Oil) over() as c
	from Project.Coal
	),
	median as (
	select Price_Dubai_Brent_Oil as Median_Price_Dubai_Brent_Oil
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
9)  with ranked as(
	select Price_ExxonMobil,
	row_number() over(order by Price_ExxonMobil) as r,
	count(Price_ExxonMobil) over() as c
	from Project.Coal
	),
	median as (
	select Price_ExxonMobil as Median_Price_ExxonMobil
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
10) with ranked as(
	select Price_Shenhua,
	row_number() over(order by Price_Shenhua) as r,
	count(Price_Shenhua) over() as c
	from Project.Coal
	),
	median as (
	select Price_Shenhua as Median_Price_Shenhua
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
11) with ranked as(
	select Price_All_Share,
	row_number() over(order by Price_All_Share) as r,
	count(Price_All_Share) over() as c
	from Project.Coal
	),
	median as (
	select Price_All_Share as Median_Price_All_Share
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
12) with ranked as(
	select Price_Mining,
	row_number() over(order by Price_Mining) as r,
	count(Price_Mining) over() as c
	from Project.Coal
	),
	median as (
	select Price_Mining as Median_Price_Mining
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
13) with ranked as(
	select Price_LNG_Japan_Korea_Marker_PLATTS,
	row_number() over(order by Price_LNG_Japan_Korea_Marker_PLATTS) as r,
	count(Price_LNG_Japan_Korea_Marker_PLATTS) over() as c
	from Project.Coal
	),
	median as (
	select Price_LNG_Japan_Korea_Marker_PLATTS as Median_Price_LNG_Japan_Korea_Marker_PLATTS
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
14) with ranked as(
	select Price_ZAR_USD,
	row_number() over(order by Price_ZAR_USD) as r,
	count(Price_ZAR_USD) over() as c
	from Project.Coal
	),
	median as (
	select Price_ZAR_USD as Median_Price_ZAR_USD
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
15) with ranked as(
	select Price_Natural_Gas,
	row_number() over(order by Price_Natural_Gas) as r,
	count(Price_Natural_Gas) over() as c
	from Project.Coal
	),
	median as (
	select Price_Natural_Gas as Median_Price_Natural_Gas
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
16) with ranked as(
	select Price_ICE,
	row_number() over(order by Price_ICE) as r,
	count(Price_ICE) over() as c
	from Project.Coal
	),
	median as (
	select Price_ICE as Median_Price_ICE
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
17) with ranked as(
	select Price_Dutch_TTF,
	row_number() over(order by Price_Dutch_TTF) as r,
	count(Price_Dutch_TTF) over() as c
	from Project.Coal
	),
	median as (
	select Price_Dutch_TTF as Median_Price_Dutch_TTF
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
18) with ranked as(
	select Price_Indian_en_exg_rate,
	row_number() over(order by Price_Indian_en_exg_rate) as r,
	count(Price_Indian_en_exg_rate) over() as c
	from Project.Coal
	),
	median as (
	select Price_Indian_en_exg_rate as Median_Price_Indian_en_exg_rate
	from ranked 
	where r in (floor((c+1)/2), ceiling((c+1)/2))
	)
	select * from median
    
  ----------------------------------------------------------- Calculated Mode for each columns --------------------------------------------------------
  
  1) select Coal_RB_4800_FOB_London_Close_USD as Mode_Coal_RB_4800, count(*)
     from project.coal
     group by Coal_RB_4800_FOB_London_Close_USD
     order by count(*) Desc
	 limit 1
  
  2) select Coal_RB_5500_FOB_London_Close_USD as Mode_Coal_RB_5500, count(*)
     from project.coal
     group by Coal_RB_5500_FOB_London_Close_USD
     order by count(*) Desc
	 limit 1
  
  3) select Coal_RB_5700_FOB_London_Close_USD as Mode_Coal_RB_5700, count(*)
     from project.coal
	 group by Coal_RB_5700_FOB_London_Close_USD
     order by count(*) Desc
	 limit 1
  
  4) select Coal_RB_6000_FOB_CurrentWeek_Avg_USD as Mode_Coal_RB_6000, count(*)
     from project.coal
	 group by Coal_RB_6000_FOB_CurrentWeek_Avg_USD
     order by count(*) Desc
	 limit 1
  
  5) select Coal_India_5500_CFR_London_Close_USD as Mode_Coal_India_5500, count(*)
     from project.coal
	 group by Coal_India_5500_CFR_London_Close_USD
     order by count(*) Desc
	 limit 1
  
  6) select Price_WTI as Mode_Price_WTI, count(*)
     from project.coal
	 group by Price_WTI
     order by count(*) Desc
	 limit 1
     
 7) select Price_Brent_Oil as Mode_Price_Brent_Oil, count(*)
     from project.coal
	 group by Price_Brent_Oil
     order by count(*) Desc
	 limit 1
     
 8) select Price_Dubai_Brent_Oil as Mode_Price_Dubai_Brent_Oil, count(*)
     from project.coal
	 group by Price_Dubai_Brent_Oil
     order by count(*) Desc
	 limit 1
     
9) select Price_ExxonMobil as Mode_Price_ExxonMobil, count(*)
     from project.coal
	 group by Price_ExxonMobil
     order by count(*) Desc
	 limit 1
     
10) select Price_Shenhua as Mode_Price_Shenhua, count(*)
     from project.coal
	 group by Price_Shenhua
     order by count(*) Desc
	 limit 1
     
11) select Price_All_Share as Mode_Price_All_Share, count(*)
     from project.coal
	 group by Price_All_Share
     order by count(*) Desc
	 limit 1
     
12) select Price_Mining as Mode_Price_Mining, count(*)
     from project.coal
	 group by Price_Mining
     order by count(*) Desc
	 limit 1
     
13) select Price_LNG_Japan_Korea_Marker_PLATTS as Mode_Price_LNG_Japan_Korea_Marker_PLATTS, count(*)
     from project.coal
	 group by Price_LNG_Japan_Korea_Marker_PLATTS
     order by count(*) Desc
	 limit 1
     
14) select Price_ZAR_USD as Mode_Price_ZAR_USD, count(*)
     from project.coal
	 group by Price_ZAR_USD
     order by count(*) Desc
	 limit 1
     
15) select Price_Natural_Gas as Mode_Price_Natural_Gas, count(*)
     from project.coal
	 group by Price_Natural_Gas
     order by count(*) Desc
	 limit 1
     
16) select Price_ICE as Mode_Price_ICE, count(*)
     from project.coal
	 group by Price_ICE
     order by count(*) Desc
	 limit 1
     
17) select Price_Dutch_TTF as Mode_Price_Dutch_TTF, count(*)
     from project.coal
	 group by Price_Dutch_TTF
     order by count(*) Desc
	 limit 1
     
18) select Price_Indian_en_exg_rate as Mode_Price_Indian_en_exg_rate, count(*)
     from project.coal
	 group by Price_Indian_en_exg_rate
     order by count(*) Desc
	 limit 1
  
-------------------------------------------------------- Calculated Standard Deviations for each Columns ------------------------------------------------
  
1) select 
stddev_samp(Coal_RB_4800_FOB_London_Close_USD) as STD_Coal_RB_4800,
stddev_samp(Coal_RB_5500_FOB_London_Close_USD) as STD_Coal_RB_5500,
stddev_samp(Coal_RB_5700_FOB_London_Close_USD) as STD_Coal_RB_5700,
stddev_samp(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as STD_Coal_RB_6000,
stddev_samp(Coal_India_5500_CFR_London_Close_USD) as STD_Coal_Indian_5500,
stddev_samp(Price_WTI) as STD_Price_WTI,
stddev_samp(Price_Brent_Oil) as STD_Price_Brent_Oil,
stddev_samp(Price_Dubai_Brent_Oil) as STD_Price_Dubai_Brent_Oil,
stddev_samp(Price_ExxonMobil) as STD_Price_ExxonMobil,
stddev_samp(Price_Shenhua) as STD_Price_Shenhua,
stddev_samp(Price_All_Share) as STD_Price_All_Share,
stddev_samp(Price_Mining) as STD_Price_Mining,
stddev_samp(Price_LNG_Japan_Korea_Marker_PLATTS) as STD_Price_LNG,
stddev_samp(Price_ZAR_USD) as STD_Price_ZAR_USD,
stddev_samp(Price_Natural_Gas) as STD_Price_Natural_Gas,
stddev_samp(Price_ICE) as STD_Price_ICE,
stddev_samp(Price_Dutch_TTF) as STD_Price_Dutch_TTF,
stddev_samp(Price_Indian_en_exg_rate) as STD_Price_Indian_en_exg_rate
from project.coal;

-------------------------------------------------------- Calculated Variance for each columns ------------------------------------------------------------

1) select variance(Coal_RB_4800_FOB_London_Close_USD) as Variance_Coal_RB_4800,
variance(Coal_RB_5500_FOB_London_Close_USD) as variance_Coal_RB_5500,
variance(Coal_RB_5700_FOB_London_Close_USD) as variance_Coal_RB_5700,
variance(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as variance_Coal_RB_6000,
variance(Coal_India_5500_CFR_London_Close_USD) as variance_Coal_Indian_5500,
variance(Price_WTI) as variance_Price_WTI,
variance(Price_Brent_Oil) as variance_Price_Brent_Oil,
variance(Price_Dubai_Brent_Oil) as variance_Price_Dubai_Brent_Oil,
variance(Price_ExxonMobil) as variance_Price_ExxonMobil,
variance(Price_Shenhua) as variance_Price_Shenhua,
variance(Price_All_Share) as variance_Price_All_Share,
variance(Price_Mining) as variance_Price_Mining,
variance(Price_LNG_Japan_Korea_Marker_PLATTS) as variance_Price_LNG,
variance(Price_ZAR_USD) as variance_Price_ZAR_USD,
variance(Price_Natural_Gas) as variance_Price_Natural_Gas,
variance(Price_ICE) as variance_Price_ICE,
variance(Price_Dutch_TTF) as variance_Price_Dutch_TTF,
variance(Price_Indian_en_exg_rate) as variance_Price_Indian_en_exg_rate
from project.coal;

-------------------------------------------------- Calculated Skewness for each columns ------------------------------------------------------------------ 

1)  with SkewCTE as
    (
	select sum(1.0*Coal_RB_4800_FOB_London_Close_USD) as rx,
	sum(power(1.0*Coal_RB_4800_FOB_London_Close_USD,2)) as rx2,
	sum(power(1.0*Coal_RB_4800_FOB_London_Close_USD,3)) as rx3,
	count(1.0*Coal_RB_4800_FOB_London_Close_USD) as rn,
	STDDEV(1.0*Coal_RB_4800_FOB_London_Close_USD) as stdv,
	avg(1.0*Coal_RB_4800_FOB_London_Close_USD) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_coal_RB_4800
	from SkewCTE;
  
2)  with SkewCTE as
	(
	select sum(1.0*Coal_RB_5500_FOB_London_Close_USD) as rx,
	sum(power(1.0*Coal_RB_5500_FOB_London_Close_USD,2)) as rx2,
	sum(power(1.0*Coal_RB_5500_FOB_London_Close_USD,3)) as rx3,
	count(1.0*Coal_RB_5500_FOB_London_Close_USD) as rn,
	STDDEV(1.0*Coal_RB_5500_FOB_London_Close_USD) as stdv,
	avg(1.0*Coal_RB_5500_FOB_London_Close_USD) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Coal_RB_5500
	from SkewCTE; 
  
3)  with SkewCTE as
	(
	select sum(1.0*Coal_RB_5700_FOB_London_Close_USD) as rx,
	sum(power(1.0*Coal_RB_5700_FOB_London_Close_USD,2)) as rx2,
	sum(power(1.0*Coal_RB_5700_FOB_London_Close_USD,3)) as rx3,
	count(1.0*Coal_RB_5700_FOB_London_Close_USD) as rn,
	STDDEV(1.0*Coal_RB_5700_FOB_London_Close_USD) as stdv,
	avg(1.0*Coal_RB_5700_FOB_London_Close_USD) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Coal_RB_5700
	from SkewCTE; 
  
4)  with SkewCTE as
	(
	select sum(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as rx,
	sum(power(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD,2)) as rx2,
	sum(power(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD,3)) as rx3,
	count(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as rn,
	STDDEV(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as stdv,
	avg(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Coal_RB_6000
	from SkewCTE;   
  
5)  with SkewCTE as
	(
	select sum(1.0*Coal_India_5500_CFR_London_Close_USD) as rx,
	sum(power(1.0*Coal_India_5500_CFR_London_Close_USD,2)) as rx2,
	sum(power(1.0*Coal_India_5500_CFR_London_Close_USD,3)) as rx3,
	count(1.0*Coal_India_5500_CFR_London_Close_USD) as rn,
	STDDEV(1.0*Coal_India_5500_CFR_London_Close_USD) as stdv,
	avg(1.0*Coal_India_5500_CFR_London_Close_USD) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Coal_India_5500
	from SkewCTE; 
  
6)  with SkewCTE as
	(
	select sum(1.0*Price_WTI) as rx,
	sum(power(1.0*Price_WTI,2)) as rx2,
	sum(power(1.0*Price_WTI,3)) as rx3,
	count(1.0*Price_WTI) as rn,
	STDDEV(1.0*Price_WTI) as stdv,
	avg(1.0*Price_WTI) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_WTI
	from SkewCTE; 
    
7)  with SkewCTE as
	(
	select sum(1.0*Price_Brent_Oil) as rx,
	sum(power(1.0*Price_Brent_Oil,2)) as rx2,
	sum(power(1.0*Price_Brent_Oil,3)) as rx3,
	count(1.0*Price_Brent_Oil) as rn,
	STDDEV(1.0*Price_Brent_Oil) as stdv,
	avg(1.0*Price_Brent_Oil) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_Brent_Oil
	from SkewCTE; 
    
8)  with SkewCTE as
	(
	select sum(1.0*Price_Dubai_Brent_Oil) as rx,
	sum(power(1.0*Price_Dubai_Brent_Oil,2)) as rx2,
	sum(power(1.0*Price_Dubai_Brent_Oil,3)) as rx3,
	count(1.0*Price_Dubai_Brent_Oil) as rn,
	STDDEV(1.0*Price_Dubai_Brent_Oil) as stdv,
	avg(1.0*Price_Dubai_Brent_Oil) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_Dubai_Brent_Oil
	from SkewCTE; 
    
9)  with SkewCTE as
	(
	select sum(1.0*Price_ExxonMobil) as rx,
	sum(power(1.0*Price_ExxonMobil,2)) as rx2,
	sum(power(1.0*Price_ExxonMobil,3)) as rx3,
	count(1.0*Price_ExxonMobil) as rn,
	STDDEV(1.0*Price_ExxonMobil) as stdv,
	avg(1.0*Price_ExxonMobil) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_ExxonMobil
	from SkewCTE; 
    
10) with SkewCTE as
	(
	select sum(1.0*Price_Shenhua) as rx,
	sum(power(1.0*Price_Shenhua,2)) as rx2,
	sum(power(1.0*Price_Shenhua,3)) as rx3,
	count(1.0*Price_Shenhua) as rn,
	STDDEV(1.0*Price_Shenhua) as stdv,
	avg(1.0*Price_Shenhua) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_Shenhua
	from SkewCTE; 
    
11) with SkewCTE as
	(
	select sum(1.0*Price_All_Share) as rx,
	sum(power(1.0*Price_All_Share,2)) as rx2,
	sum(power(1.0*Price_All_Share,3)) as rx3,
	count(1.0*Price_All_Share) as rn,
	STDDEV(1.0*Price_All_Share) as stdv,
	avg(1.0*Price_All_Share) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_All_Share
	from SkewCTE; 
    
12) with SkewCTE as
	(
	select sum(1.0*Price_Mining) as rx,
	sum(power(1.0*Price_Mining,2)) as rx2,
	sum(power(1.0*Price_Mining,3)) as rx3,
	count(1.0*Price_Mining) as rn,
	STDDEV(1.0*Price_Mining) as stdv,
	avg(1.0*Price_Mining) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_Mining
	from SkewCTE; 
    
13) with SkewCTE as
	(
	select sum(1.0*Price_LNG_Japan_Korea_Marker_PLATTS) as rx,
	sum(power(1.0*Price_LNG_Japan_Korea_Marker_PLATTS,2)) as rx2,
	sum(power(1.0*Price_LNG_Japan_Korea_Marker_PLATTS,3)) as rx3,
	count(1.0*Price_LNG_Japan_Korea_Marker_PLATTS) as rn,
	STDDEV(1.0*Price_LNG_Japan_Korea_Marker_PLATTS) as stdv,
	avg(1.0*Price_LNG_Japan_Korea_Marker_PLATTS) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_LNG
	from SkewCTE;
    
14) with SkewCTE as
	(
	select sum(1.0*Price_ZAR_USD) as rx,
	sum(power(1.0*Price_ZAR_USD,2)) as rx2,
	sum(power(1.0*Price_ZAR_USD,3)) as rx3,
	count(1.0*Price_ZAR_USD) as rn,
	STDDEV(1.0*Price_ZAR_USD) as stdv,
	avg(1.0*Price_ZAR_USD) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_ZAR_USD
	from SkewCTE;
    
15) with SkewCTE as
	(
	select sum(1.0*Price_Natural_Gas) as rx,
	sum(power(1.0*Price_Natural_Gas,2)) as rx2,
	sum(power(1.0*Price_Natural_Gas,3)) as rx3,
	count(1.0*Price_Natural_Gas) as rn,
	STDDEV(1.0*Price_Natural_Gas) as stdv,
	avg(1.0*Price_Natural_Gas) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_Natural_Gas
	from SkewCTE;
    
16) with SkewCTE as
	(
	select sum(1.0*Price_ICE) as rx,
	sum(power(1.0*Price_ICE,2)) as rx2,
	sum(power(1.0*Price_ICE,3)) as rx3,
	count(1.0*Price_ICE) as rn,
	STDDEV(1.0*Price_ICE) as stdv,
	avg(1.0*Price_ICE) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_ICE
	from SkewCTE;
    
17) with SkewCTE as
	(
	select sum(1.0*Price_Dutch_TTF) as rx,
	sum(power(1.0*Price_Dutch_TTF,2)) as rx2,
	sum(power(1.0*Price_Dutch_TTF,3)) as rx3,
	count(1.0*Price_Dutch_TTF) as rn,
	STDDEV(1.0*Price_Dutch_TTF) as stdv,
	avg(1.0*Price_Dutch_TTF) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_Dutch_TTF
	from SkewCTE;
    
18) with SkewCTE as
	(
	select sum(1.0*Price_Indian_en_exg_rate) as rx,
	sum(power(1.0*Price_Indian_en_exg_rate,2)) as rx2,
	sum(power(1.0*Price_Indian_en_exg_rate,3)) as rx3,
	count(1.0*Price_Indian_en_exg_rate) as rn,
	STDDEV(1.0*Price_Indian_en_exg_rate) as stdv,
	avg(1.0*Price_Indian_en_exg_rate) as av
	from project.coal
	)
	select
	(rx3-3*rx2*av+3*rx*av*av-rn*av*av*av)/(stdv*stdv*stdv)*rn/(rn-1)/(rn-2) as skewness_Price_Indian_en_exg_rate
	from SkewCTE;
    
-------------------------------------------------- Calculated Kurtosis for each columns ---------------------------------------------------------------------

1)  with KurtCTE as
	(
	select sum(1.0*Coal_RB_4800_FOB_London_Close_USD) as rx,
	sum(power(1.0*Coal_RB_4800_FOB_London_Close_USD,2)) as rx2,
	sum(power(1.0*Coal_RB_4800_FOB_London_Close_USD,3)) as rx3,
    sum(power(1.0*Coal_RB_4800_FOB_London_Close_USD,4)) as rx4,
	count(1.0*Coal_RB_4800_FOB_London_Close_USD) as rn,
	STDDEV(1.0*Coal_RB_4800_FOB_London_Close_USD) as stdv,
	avg(1.0*Coal_RB_4800_FOB_London_Close_USD) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Coal_RB_4800
	from KurtCTE;

2)  with KurtCTE as
	(
	select sum(1.0*Coal_RB_5500_FOB_London_Close_USD) as rx,
	sum(power(1.0*Coal_RB_5500_FOB_London_Close_USD,2)) as rx2,
	sum(power(1.0*Coal_RB_5500_FOB_London_Close_USD,3)) as rx3,
    sum(power(1.0*Coal_RB_5500_FOB_London_Close_USD,4)) as rx4,
	count(1.0*Coal_RB_5500_FOB_London_Close_USD) as rn,
	STDDEV(1.0*Coal_RB_5500_FOB_London_Close_USD) as stdv,
	avg(1.0*Coal_RB_5500_FOB_London_Close_USD) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Coal_RB_5500
	from KurtCTE;

3)  with KurtCTE as
	(
	select sum(1.0*Coal_RB_5700_FOB_London_Close_USD) as rx,
	sum(power(1.0*Coal_RB_5700_FOB_London_Close_USD,2)) as rx2,
	sum(power(1.0*Coal_RB_5700_FOB_London_Close_USD,3)) as rx3,
    sum(power(1.0*Coal_RB_5700_FOB_London_Close_USD,4)) as rx4,
	count(1.0*Coal_RB_5700_FOB_London_Close_USD) as rn,
	STDDEV(1.0*Coal_RB_5700_FOB_London_Close_USD) as stdv,
	avg(1.0*Coal_RB_5700_FOB_London_Close_USD) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Coal_RB_5700
	from KurtCTE;

4)  with KurtCTE as
	(
	select sum(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as rx,
	sum(power(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD,2)) as rx2,
	sum(power(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD,3)) as rx3,
    sum(power(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD,4)) as rx4,
	count(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as rn,
	STDDEV(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as stdv,
	avg(1.0*Coal_RB_6000_FOB_CurrentWeek_Avg_USD) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Coal_RB_6000_FOB_CurrentWeek_Avg_USD
	from KurtCTE;

5)  with KurtCTE as
	(
	select sum(1.0*Coal_India_5500_CFR_London_Close_USD) as rx,
	sum(power(1.0*Coal_India_5500_CFR_London_Close_USD,2)) as rx2,
	sum(power(1.0*Coal_India_5500_CFR_London_Close_USD,3)) as rx3,
    sum(power(1.0*Coal_India_5500_CFR_London_Close_USD,4)) as rx4,
	count(1.0*Coal_India_5500_CFR_London_Close_USD) as rn,
	STDDEV(1.0*Coal_India_5500_CFR_London_Close_USD) as stdv,
	avg(1.0*Coal_India_5500_CFR_London_Close_USD) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Coal_India_5500_CFR_London_Close_USD
	from KurtCTE;

6) with KurtCTE as
	(
	select sum(1.0*Price_WTI) as rx,
	sum(power(1.0*Price_WTI,2)) as rx2,
	sum(power(1.0*Price_WTI,3)) as rx3,
    sum(power(1.0*Price_WTI,4)) as rx4,
	count(1.0*Price_WTI) as rn,
	STDDEV(1.0*Price_WTI) as stdv,
	avg(1.0*Price_WTI) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_WTI
	from KurtCTE;

7)  with KurtCTE as
	(
	select sum(1.0*Price_Brent_Oil) as rx,
	sum(power(1.0*Price_Brent_Oil,2)) as rx2,
	sum(power(1.0*Price_Brent_Oil,3)) as rx3,
    sum(power(1.0*Price_Brent_Oil,4)) as rx4,
	count(1.0*Price_Brent_Oil) as rn,
	STDDEV(1.0*Price_Brent_Oil) as stdv,
	avg(1.0*Price_Brent_Oil) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_Brent_Oil
	from KurtCTE;

8) with KurtCTE as
	(
	select sum(1.0*Price_Dubai_Brent_Oil) as rx,
	sum(power(1.0*Price_Dubai_Brent_Oil,2)) as rx2,
	sum(power(1.0*Price_Dubai_Brent_Oil,3)) as rx3,
    sum(power(1.0*Price_Dubai_Brent_Oil,4)) as rx4,
	count(1.0*Price_Dubai_Brent_Oil) as rn,
	STDDEV(1.0*Price_Dubai_Brent_Oil) as stdv,
	avg(1.0*Price_Dubai_Brent_Oil) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_Dubai_Brent_Oil
	from KurtCTE;

9) with KurtCTE as
	(
	select sum(1.0*Price_ExxonMobil) as rx,
	sum(power(1.0*Price_ExxonMobil,2)) as rx2,
	sum(power(1.0*Price_ExxonMobil,3)) as rx3,
    sum(power(1.0*Price_ExxonMobil,4)) as rx4,
	count(1.0*Price_ExxonMobil) as rn,
	STDDEV(1.0*Price_ExxonMobil) as stdv,
	avg(1.0*Price_ExxonMobil) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_ExxonMobil
	from KurtCTE;

10) with KurtCTE as
	(
	select sum(1.0*Price_Shenhua) as rx,
	sum(power(1.0*Price_Shenhua,2)) as rx2,
	sum(power(1.0*Price_Shenhua,3)) as rx3,
    sum(power(1.0*Price_Shenhua,4)) as rx4,
	count(1.0*Price_Shenhua) as rn,
	STDDEV(1.0*Price_Shenhua) as stdv,
	avg(1.0*Price_Shenhua) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_Shenhua
	from KurtCTE;

11) with KurtCTE as
	(
	select sum(1.0*Price_All_Share) as rx,
	sum(power(1.0*Price_All_Share,2)) as rx2,
	sum(power(1.0*Price_All_Share,3)) as rx3,
    sum(power(1.0*Price_All_Share,4)) as rx4,
	count(1.0*Price_All_Share) as rn,
	STDDEV(1.0*Price_All_Share) as stdv,
	avg(1.0*Price_All_Share) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_All_Share
	from KurtCTE;

12) with KurtCTE as
	(
	select sum(1.0*Price_Mining) as rx,
	sum(power(1.0*Price_Mining,2)) as rx2,
	sum(power(1.0*Price_Mining,3)) as rx3,
    sum(power(1.0*Price_Mining,4)) as rx4,
	count(1.0*Price_Mining) as rn,
	STDDEV(1.0*Price_Mining) as stdv,
	avg(1.0*Price_Mining) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_Mining
	from KurtCTE;

13) with KurtCTE as
	(
	select sum(1.0*Price_LNG_Japan_Korea_Marker_PLATTS) as rx,
	sum(power(1.0*Price_LNG_Japan_Korea_Marker_PLATTS,2)) as rx2,
	sum(power(1.0*Price_LNG_Japan_Korea_Marker_PLATTS,3)) as rx3,
    sum(power(1.0*Price_LNG_Japan_Korea_Marker_PLATTS,4)) as rx4,
	count(1.0*Price_LNG_Japan_Korea_Marker_PLATTS) as rn,
	STDDEV(1.0*Price_LNG_Japan_Korea_Marker_PLATTS) as stdv,
	avg(1.0*Price_LNG_Japan_Korea_Marker_PLATTS) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_LNG_Japan_Korea_Marker_PLATTS
	from KurtCTE;
    
14) with KurtCTE as
	(
	select sum(1.0*Price_ZAR_USD) as rx,
	sum(power(1.0*Price_ZAR_USD,2)) as rx2,
	sum(power(1.0*Price_ZAR_USD,3)) as rx3,
    sum(power(1.0*Price_ZAR_USD,4)) as rx4,
	count(1.0*Price_ZAR_USD) as rn,
	STDDEV(1.0*Price_ZAR_USD) as stdv,
	avg(1.0*Price_ZAR_USD) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_ZAR_USD
	from KurtCTE;
    
15) with KurtCTE as
	(
	select sum(1.0*Price_Natural_Gas) as rx,
	sum(power(1.0*Price_Natural_Gas,2)) as rx2,
	sum(power(1.0*Price_Natural_Gas,3)) as rx3,
    sum(power(1.0*Price_Natural_Gas,4)) as rx4,
	count(1.0*Price_Natural_Gas) as rn,
	STDDEV(1.0*Price_Natural_Gas) as stdv,
	avg(1.0*Price_Natural_Gas) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_Natural_Gas
	from KurtCTE;
    
16) with KurtCTE as
	(
	select sum(1.0*Price_ICE) as rx,
	sum(power(1.0*Price_ICE,2)) as rx2,
	sum(power(1.0*Price_ICE,3)) as rx3,
    sum(power(1.0*Price_ICE,4)) as rx4,
	count(1.0*Price_ICE) as rn,
	STDDEV(1.0*Price_ICE) as stdv,
	avg(1.0*Price_ICE) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_ICE
	from KurtCTE;
    
17) with KurtCTE as
	(
	select sum(1.0*Price_Dutch_TTF) as rx,
	sum(power(1.0*Price_Dutch_TTF,2)) as rx2,
	sum(power(1.0*Price_Dutch_TTF,3)) as rx3,
    sum(power(1.0*Price_Dutch_TTF,4)) as rx4,
	count(1.0*Price_Dutch_TTF) as rn,
	STDDEV(1.0*Price_Dutch_TTF) as stdv,
	avg(1.0*Price_Dutch_TTF) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_Dutch_TTF
	from KurtCTE;
    
18) with KurtCTE as
	(
	select sum(1.0*Price_Indian_en_exg_rate) as rx,
	sum(power(1.0*Price_Indian_en_exg_rate,2)) as rx2,
	sum(power(1.0*Price_Indian_en_exg_rate,3)) as rx3,
    sum(power(1.0*Price_Indian_en_exg_rate,4)) as rx4,
	count(1.0*Price_Indian_en_exg_rate) as rn,
	STDDEV(1.0*Price_Indian_en_exg_rate) as stdv,
	avg(1.0*Price_Indian_en_exg_rate) as av
	from project.coal
	)
	select
	(rx4 - 4*rx3*av + 6*rx2*av*av - 4*rx*av*av*av + rn*av*av*av*av) /
    (stdv*stdv*stdv*stdv)*rn*(rn+1)/(rn-1)/(rn-2)/(rn-3)-3.0*(rn-1)*(rn-1)/(rn-2)/(rn-3) as Kurtosis_Price_Indian_en_exg_rate
	from KurtCTE;