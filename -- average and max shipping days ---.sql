-- average and max shipping days ---
use project2;

CREATE or replace view averagemax_shiping as 

SELECT ship_mode,
AVG(TIMESTAMPDIFF(DAY,order_date,ship_date)) AS average_shipping_day,
max(TIMESTAMPDIFF(DAY,order_date,ship_date)) as maximum_shipping_day
from project2.train
GROUP BY ship_mode
ORDER BY average_shipping_day DESC;

SELECT * FROM project2.averagemax_shiping;


