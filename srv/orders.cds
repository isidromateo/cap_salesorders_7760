using {com.logali.sales_7760 as logali} from '../db/schema';

service ManageOrders {
    //    entity Orders      as projection on logali.sales_7760.Orders;
    entity Order       as projection on logali.Orders;
    entity OrdersItems as projection on logali.OrdersItems;
}
