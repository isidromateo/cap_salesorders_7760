sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'logali.salesorders7760',
            componentId: 'OrderObjectPage',
            entitySet: 'Order'
        },
        CustomPageDefinitions
    );
});