SELECT * FROM first_project.`covid deaths`;
SELECT * FROM first_project.`covid vaccinations`;

Select *
From first_project.`covid deaths`
Where continent is not null 
order by 3,4

SELECT Location, date, total_cases, new_cases, total_deaths, population
From first_project.`covid deaths`
Where continent is not null 
order by 1,2; 

Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From first_project.`covid deaths`
Where location like '%states%'
and continent is not null 
order by 1,2


SELECT Location, date, Population, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
From first_project.`covid deaths`
order by 1,2

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From first_project.`covid deaths`
Group by Location, Population
order by PercentPopulationInfected desc

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From first_project.`covid deaths`
where continent is not null 
--Group By date
order by 1,2