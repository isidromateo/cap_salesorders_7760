using {com.logali as logali} from '../db/schema';

service ManageOrders {
    //    entity Orders      as projection on logali.sales_7760.Orders;
    entity Order       as projection on logali.sales_7760.Orders;
    entity OrdersItems as projection on logali.sales_7760.OrdersItems;
}
