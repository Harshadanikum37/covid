1-select * from Covid..CovidDeaths                      -- USED LIKE FUNCTION
where location like 'India'
order by India ;


2-select * from Covid..CovidDeaths                      -- USED NOT NULL AND ORDER BY
where continent is not null 
order by 3,4


3-select Location, date, total_cases, new_cases, total_deaths, population            -- USED AND OPERATOR 
From  Covid..CovidDeath
Where continent is not null AND Location like 'India'
order by total_cases , new_cases , total_deaths ASC ; 


4-select location , population , total_cases , total_deaths from Covid..CovidDeath    -- USED ORDER BY (DESC) FUNCTION
where location like 'India'
order by total_cases , total_deaths DESC;

 
5-Select max(total_cases) as Highestcases        -- USED AGGREGATE FUNCTION
From Covid..CovidDeath
Where location like 'India';


6-SELECT LOCATION , MAX(TOTAL_CASES) as Highestcases     -- USED GROUP BY CLAUSE
FROM Covid..CovidDeath 
group by location 
order by location ;


7-SELECT  MAX(TOTAL_CASES) AS Highestcases , location , population 
from Covid..CovidDeath 
group by location , population;


8-Select Location, date, Population, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
From Covid..CovidDeath
--Where location like 'india';                                     -- USED PERCENTAGE FORMULA


9-Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From Covid..CovidDeath
Where location like 'India';



10-Select Location, Population,date, MAX(total_cases) as Highestcases,  Max((total_cases/population))*100 as PercentPopulationInfected
From Covid..CovidDeath
--Where location like 'india'
Group by Location, Population,date
order by PercentPopulationInfected desc


11-select dea.continent, dea.location, dea.date, dea.population, vac.total_vaccinations, vac.location
from Covid..CovidDeath dea
inner join Covid..CovidVaccination vac                              -- USED JOINS.
on dea.location = vac.location;
