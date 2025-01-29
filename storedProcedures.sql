DELIMITER //

CREATE PROCEDURE DeleteTodayEntries()
BEGIN
    DELETE FROM flowmeters WHERE DATE(created_at) = CURDATE();
    DELETE FROM well_stock WHERE DATE(created_at) = CURDATE();
    DELETE FROM completions WHERE DATE(created_at) = CURDATE();
    DELETE FROM well_downtime_reasons WHERE DATE(created_at) = CURDATE();
    DELETE FROM daily_well_parameters WHERE DATE(created_at) = CURDATE();
    DELETE FROM well_tests WHERE DATE(created_at) = CURDATE();
    DELETE FROM laboratory_results WHERE DATE(created_at) = CURDATE();
END //

CREATE PROCEDURE DeleteAllEntries()
BEGIN
    TRUNCATE TABLE flowmeters;
    TRUNCATE TABLE well_stock;
    TRUNCATE TABLE completions;
    TRUNCATE TABLE well_downtime_reasons;
    TRUNCATE TABLE daily_well_parameters;
    TRUNCATE TABLE well_tests;
    TRUNCATE TABLE laboratory_results;
END //

CREATE PROCEDURE DeleteEntries(IN reportDate DATE, IN platform INT )
BEGIN
    DECLARE reportDateId INT;

    SET SQL_SAFE_UPDATES = 0;

    SELECT rd.id INTO reportDateId
    FROM report_dates AS rd
    WHERE rd.report_date = reportDate;

    DELETE flowmeters
    FROM flowmeters 
    INNER JOIN platforms ON flowmeters.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL);

    DELETE well_stock
    FROM well_stock
    INNER JOIN wells ON well_stock.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL);

    DELETE completions
    FROM completions
    INNER JOIN wells ON completions.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL);

    DELETE well_downtime_reasons
    FROM well_downtime_reasons
    INNER JOIN wells ON well_downtime_reasons.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL); 

    DELETE daily_well_parameters
    FROM daily_well_parameters
    INNER JOIN wells ON daily_well_parameters.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL); 

    DELETE well_tests
    FROM well_tests
    INNER JOIN wells ON well_tests.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL); 

    DELETE laboratory_results
    FROM laboratory_results
    INNER JOIN wells ON laboratory_results.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL); 

    SET SQL_SAFE_UPDATES = 1;
END //

DELIMITER ;