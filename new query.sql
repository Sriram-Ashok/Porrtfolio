SELECT * FROM first_project.`covid deaths`;

SELECT * FROM second_project.`covid vaccinations`;


select first_project.`covid deaths`.location,second_project.`covid vaccinations`.hospital_beds_per_thousand
from first_project.`covid deaths`, second_project.`covid vaccinations`
where first_project.`covid deaths`.iso_code = second_project.`covid vaccinations`.iso_code
and first_project.`covid deaths`.continent = second_project.`covid vaccinations`.continent
order by first_project.`covid deaths`.continent

select first_project.`covid deaths`.location,second_project.`covid vaccinations`.population from first_project.`covid deaths` right outer join second_project.`covid vaccinations` on first_project.`covid deaths`.continent = second_project.`covid vaccinations`.continent
