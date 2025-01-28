DELIMITER //

CREATE TRIGGER after_laboratory_results_insert
AFTER INSERT
ON laboratory_results
FOR EACH ROW
BEGIN
		DECLARE report_date DATE;

		SELECT rd.report_date INTO report_date
		FROM report_dates AS rd
		WHERE rd.id = NEW.report_date_id;

    UPDATE well_tests 
    SET water_cut = NEW.water_cut, 
		mechanical_impurities = NEW.mechanical_impurities 
		WHERE well_id = NEW.well_id 
		AND well_test_date >= NEW.last_lab_date 
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 where lr1.last_lab_date > NEW.last_lab_date
			)
			OR well_test_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  NEW.last_lab_date )
		); 
    -- ORDER BY well_test_date 
    -- LIMIT 1;
    
    UPDATE daily_well_parameters
    SET water_cut = NEW.water_cut,
		mechanical_impurities = NEW.mechanical_impurities,
		oil_loss_ton = (oil_loss_ton * (oil_density * (1 - reported_water_cut / 100) + reported_water_cut / 100) / (1 - reported_water_cut / 100)) / (oil_density * (1 - NEW.water_cut / 100) + NEW.water_cut / 100) * (1 - NEW.water_cut / 100)
		WHERE well_id = NEW.well_id 
		AND report_date >= NEW.last_lab_date
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 WHERE lr1.last_lab_date > NEW.last_lab_date
			)
			OR report_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  NEW.last_lab_date )
		);
END //

CREATE TRIGGER after_laboratory_results_delete
AFTER DELETE
ON laboratory_results
FOR EACH ROW
BEGIN
	DECLARE last_available_water_cut FLOAT;
  DECLARE last_available_mechanical_impurities FLOAT;
	DECLARE report_date DATE;

	SELECT rd.report_date INTO report_date
	FROM report_dates AS rd
	WHERE rd.id = OLD.report_date_id;
    
  SELECT water_cut, mechanical_impurities
	INTO last_available_water_cut, last_available_mechanical_impurities
	FROM laboratory_results
	WHERE well_id = OLD.well_id
	AND last_lab_date < OLD.last_lab_date
	ORDER BY last_lab_date DESC
	LIMIT 1;

	UPDATE well_tests 
	SET water_cut = last_available_water_cut, 
	mechanical_impurities = last_available_mechanical_impurities 
	WHERE well_id = OLD.well_id 
	AND well_test_date >= OLD.last_lab_date 
	AND (
		NOT EXISTS (
			SELECT 1 FROM laboratory_results as lr1 where lr1.last_lab_date > OLD.last_lab_date
		)
		OR well_test_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  OLD.last_lab_date )
	); 

	UPDATE daily_well_parameters
    SET water_cut = last_available_water_cut,
		mechanical_impurities = last_available_mechanical_impurities,
		oil_loss_ton = (oil_loss_ton * (oil_density * (1 - reported_water_cut / 100) + reported_water_cut / 100) / (1 - reported_water_cut / 100)) / (oil_density * (1 - OLD.water_cut / 100) + OLD.water_cut / 100) * (1 - OLD.water_cut / 100)
		WHERE well_id = OLD.well_id 
		AND report_date >= OLD.last_lab_date
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 WHERE lr1.last_lab_date > OLD.last_lab_date
			)
			OR report_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  OLD.last_lab_date )
		);
END //

DELIMITER ;