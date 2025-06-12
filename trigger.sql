11. TRIGGER TO UPDATE STOCK AFTER SALE
DELIMITER //
CREATE TRIGGER after_sale_update_stock
AFTER INSERT ON Sales
FOR EACH ROW
BEGIN
  DECLARE current_qty INT;
  SELECT available_quantity INTO current_qty FROM Product WHERE product_id = NEW.product_id;

  IF current_qty >= NEW.product_quantity THEN
    UPDATE Product
    SET available_quantity = current_qty - NEW.product_quantity
    WHERE product_id = NEW.product_id;
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient stock';
  END IF;
END;
//
DELIMITER ;