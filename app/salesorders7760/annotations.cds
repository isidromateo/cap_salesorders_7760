using CatalogService as service from '../../srv/catalog-service';
//annotate  service.Order with @(UI.SelectionFields : [ ID ]);

annotate service.Order with @(UI.HeaderInfo : {ImageUrl : ImageUrl, });

annotate service.Order with {
    ImageUrl @(UI.IsImageURL : true)
};

annotate service.Item with {
    ImageUrl @(UI.IsImageURL : true)
};

//       Cabecera listado    //
annotate CatalogService.Order with @(UI.LineItem : [
    //    {
    //       $Type : 'UI.DataField',
    //        Label : 'ID',
    //        Value : ID,
    //    },
    {
        $Type : 'UI.DataField',
        Label : 'Email',
        Value : Email,
    },
    {
        $Type : 'UI.DataField',
        Label : 'FirstName',
        Value : FirstName,
    },
    {
        $Type : 'UI.DataField',
        Label : 'LastName',
        Value : LastName,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Country',
        Value : Country,
    },
    {
        $Type : 'UI.DataField',
        Label : 'CreatedOn',
        Value : CreatedOn,
    },
//    {
//        $Type : 'UI.DataField',
//        Label : 'ImageUrl',
//        Value : ImageUrl,
//    },
]);

//       Cabecera Navegación    //
annotate CatalogService.Order with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : Email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FirstName',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastName',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreatedOn',
                Value : CreatedOn,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrderStatus',
                Value : OrderStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DeliveryDate',
                Value : DeliveryDate,
            },
        //            {
        //                $Type : 'UI.DataField',
        //                Label : 'ImageUrl',
        //                Value : ImageUrl,
        //            },
        ],
    },
    UI.Facets                      : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet1',
            Label  : 'Order',
            Target : '@UI.FieldGroup#GeneratedGroup1'

        },
        {
            $Type  : 'UI.ReferenceFacet',
            //           ID     : 'GeneratedFacet1',
            Label  : 'Item',
            Target : 'ToItems/@UI.LineItem'
        }
    ]
);


// Posición listado
annotate CatalogService.Item with @(UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Label : 'Ebelp',
        Value : Ebelp,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Name',
        Value : Name,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Description',
        Value : Description,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Releasedate',
        Value : ReleaseDate,
    },
    {
        $Type : 'UI.DataField',
        Label : 'DiscontinuedDate',
        Value : DiscontinuedDate,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Price',
        Value : Price,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Height',
        Value : Height,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Witdth',
        Value : Width,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Depth',
        Value : Depth,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Quantity',
        Value : Quantity,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Unitofmeasur',
        Value : Unitofmeasure,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Imageurl',
        Value : ImageUrl,
    },
],

//    UI.SelectionFields : [

//    ],
);

//]);

//annotate CatalogService with @(UI.SelectionFields : [Item], );

// Posición Navegación
annotate CatalogService.Item with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Ebelp',
                Value : Ebelp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Releasedate',
                Value : ReleaseDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DiscontinuedDate',
                Value : DiscontinuedDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : Price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Height',
                Value : Height,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Witdth',
                Value : Width,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Depth',
                Value : Depth,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quantity',
                Value : Quantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Unitofmeasur',
                Value : Unitofmeasure,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Imageurl',
                Value : ImageUrl,
            },
        ],
    },

    //   UI.SelectionFields             : [
    //    ],

    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'General Information',
        Target : '@UI.FieldGroup#GeneratedGroup1'

    }]
);
