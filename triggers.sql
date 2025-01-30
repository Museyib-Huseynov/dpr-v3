DELIMITER //

CREATE TRIGGER after_laboratory_results_insert
AFTER INSERT
ON laboratory_results
FOR EACH ROW
BEGIN
    UPDATE well_tests 
    SET water_cut = NEW.water_cut, 
		mechanical_impurities = NEW.mechanical_impurities 
		WHERE well_id = NEW.well_id 
		AND well_test_date >= NEW.last_lab_date 
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 where lr1.last_lab_date > NEW.last_lab_date AND lr1.well_id = NEW.well_id
			)
			OR well_test_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date > NEW.last_lab_date AND lr2.well_id = NEW.well_id )
		); 
    -- ORDER BY well_test_date 
    -- LIMIT 1;
     
    UPDATE daily_well_parameters
    SET oil_loss_ton = 
		CASE 
			WHEN water_cut = 100 OR (NEW.water_cut = 0 AND oil_density = 0) THEN 0
			ELSE (oil_loss_ton * (oil_density * (1 - water_cut / 100) + water_cut / 100) / (1 - water_cut / 100)) * (1 - NEW.water_cut / 100) / (oil_density * (1 - NEW.water_cut / 100) + NEW.water_cut / 100) 
		END,
		water_cut = NEW.water_cut,
		mechanical_impurities = NEW.mechanical_impurities
		WHERE well_id = NEW.well_id 
		AND (SELECT rd.report_date FROM report_dates AS rd WHERE rd.id = report_date_id) >= NEW.last_lab_date
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 WHERE lr1.last_lab_date > NEW.last_lab_date AND lr1.well_id = NEW.well_id
			)
			OR (SELECT rd.report_date FROM report_dates AS rd WHERE rd.id = report_date_id) < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date > NEW.last_lab_date AND lr2.well_id = NEW.well_id)
		);
END //

CREATE TRIGGER after_laboratory_results_delete
AFTER DELETE
ON laboratory_results
FOR EACH ROW
BEGIN
	DECLARE last_available_water_cut FLOAT;
  DECLARE last_available_mechanical_impurities FLOAT;
    
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
			SELECT 1 FROM laboratory_results as lr1 where lr1.last_lab_date > OLD.last_lab_date AND lr1.well_id = OLD.well_id
		)
		OR well_test_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  OLD.last_lab_date AND lr2.well_id = OLD.well_id)
	); 

	UPDATE daily_well_parameters
    SET oil_loss_ton = 
		CASE 
			WHEN water_cut = 100 OR (OLD.water_cut = 0 AND oil_density = 0) THEN 0
			ELSE (oil_loss_ton * (oil_density * (1 - water_cut / 100) + water_cut / 100) / (1 - water_cut / 100)) * (1 - OLD.water_cut / 100) / (oil_density * (1 - OLD.water_cut / 100) + OLD.water_cut / 100) 
		END, 
		water_cut = last_available_water_cut,
		mechanical_impurities = last_available_mechanical_impurities
		WHERE well_id = OLD.well_id 
		AND (SELECT rd.report_date FROM report_dates AS rd WHERE rd.id = report_date_id) >= OLD.last_lab_date
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 WHERE lr1.last_lab_date > OLD.last_lab_date AND lr1.well_id = OLD.well_id
			)
			OR (SELECT rd.report_date FROM report_dates AS rd WHERE rd.id = report_date_id) < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  OLD.last_lab_date AND lr2.well_id = OLD.well_id)
		);
END //

DELIMITER ;