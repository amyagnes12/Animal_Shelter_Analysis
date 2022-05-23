-- Creating table for intakes and outcomes

CREATE TABLE intakes (
	animal_id VARCHAR(7) NOT NULL,
	intake_date DATE NOT NULL,
	intake_type VARCHAR(20) NOT NULL,
	intake_condition VARCHAR(20) NOT NULL,
	animal_type VARCHAR(5) NOT NULL,
	sex_upon_intake VARCHAR(10) NOT NULL,
	age_upon_intake FLOAT NOT NULL,
	breed VARCHAR(50) NOT NULL,
	PRIMARY KEY (animal_id)		
);

CREATE TABLE outcomes (
	animal_id VARCHAR(7) NOT NULL,
	outcome_date date NOT NULL,
	outcome_type VARCHAR(20) NOT NULL,
	age_upon_outcome FLOAT NOT NULL,
	PRIMARY KEY (animal_id)		
);

SELECT * FROM intakes;
SELECT * FROM outcomes;

-- Joining intakes and outcomes tables
CREATE TABLE intakes_outcomes AS
SELECT intakes.animal_id,
intakes.intake_date,
	intakes.intake_type,
	intakes.intake_condition,
	intakes.animal_type,
	intakes.sex_upon_intake,
	intakes.age_upon_intake,
	intakes.breed,
	outcomes.outcome_date,
	outcomes.outcome_type,
	outcomes.age_upon_outcome
FROM intakes
LEFT JOIN outcomes
ON intakes.animal_id = outcomes.animal_id;

SELECT * FROM intakes_outcomes;
SELECT * FROM clean_data;

