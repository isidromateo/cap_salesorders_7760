using {com.logali as logali} from '../db/schema';

//service CatalogService {
//    entity SrvOrders      as projection on logali.Orders;
//    entity SrvOrdersItems as projection on logali.OrdersItems;
//}

define service CatalogService {
    entity Order as
        select from logali.sales_7760.Orders {
            ID          @mandatory,
            Email,
            FirstName,
            LastName,
            Country,
            CreatedOn,
            OrderStatus @readonly,
            DeliveryDate,
            ImageUrl,
            ToItems,
        };

    entity Item  as
        select from logali.sales_7760.OrdersItems {
            ID,
            Ebelp,
            Name,
            Description,
            ReleaseDate,
            DiscontinuedDate,
            Price,
            Height,
            Width,
            Depth,
            Quantity @(
                mandatory,
                assert.range : [
                    0.00,
                    20.00
                ]
            ),
            Unitofmeasure,
            ImageUrl,
            ToOrders,
        };
}
