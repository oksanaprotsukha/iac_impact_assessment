-- emission factors for ec
CREATE VIEW ec_emission_factors AS	
SELECT ee.year, ee.state, ee.emission_type, (ee.amount/eg.generation_megawatthours) AS "ec_emission_factor" FROM iac.main.ec_generation eg
JOIN iac.main.ec_emissions ee ON eg.year = ee.year AND eg.state = ee.state
WHERE
    eg.type_of_producer = 'Total Electric Power Industry' AND
    eg.energy_source = 'Total' AND
    ee.producer_type = 'Total Electric Power Industry' AND
    ee.energy_source = 'All Sources'
    
    
    
-- primary view
CREATE VIEW iac_integrated AS
SELECT *, (ef.ec_emission_factor * ir.conserved) AS 'emissions_avoided', ROUND(ia.plant_cost/ia.plant_usage,2) AS ec_price_per_kWh
FROM iac.main.iac_recc ir
	JOIN iac_assess ia 
	    ON ir.id = ia.id 
	   AND ir.sourccode = ia.source_code
	JOIN iac.main.ec_emission_factors ef 
	    ON ef.year = ir.fy  
	   AND ef.state = ia.state
	JOIN ARC2 a ON a.specific_code = ir.arc2
	WHERE 
	    ir.sourccode = 'EC' 
	    AND ir.source_rank = 'PSOURCCODE';

	   
