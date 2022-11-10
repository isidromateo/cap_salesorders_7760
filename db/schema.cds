using {
    cuid,
    managed
} from '@sap/cds/common';

namespace com.logali;

type Dec : Decimal(16, 2);

context sales_7760 {

    entity Orders {
        key ID           : String;
            ToId         : Association to one OrdersItems
                               on ToId.ID = ID;
            Email        : String(65);
            FirstName    : String(30);
            LastName     : String(30);
            Country      : String;
            CreatedOn    : Date default $now;
            DeliveryDate : Date;
            OrderStatus  : String(1);
            ImageUrl     : String;
                ToItems      : Composition of many OrdersItems
                                   on ToItems.ToOrders = $self;
    };

    entity OrdersItems : cuid {
        key ID               : String;
            ToId             : Association to one Orders
                                   on ToId.ID = ID;
        key Ebelp            : String;
            Name             : localized String not null;
            Description      : localized String;
            ReleaseDate      : Date;
            DiscontinuedDate : Date;
            Price            : Dec;
            Height           : type of Price;
            Width            : Decimal(16, 2);
            Depth            : Decimal(16, 2);
            Quantity         : Decimal(16, 2);
            Unitofmeasure    : String(3);
            ImageUrl         : String;
            ToOrders         : Association to Orders;
  //                ToOrders         : Composition of many Orders
  //                                       on ToOrders.ToItems = ID;


    }
}
