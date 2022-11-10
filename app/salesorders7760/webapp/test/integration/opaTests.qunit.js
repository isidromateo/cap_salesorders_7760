sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'logali/salesorders7760/test/integration/FirstJourney',
		'logali/salesorders7760/test/integration/pages/OrderList',
		'logali/salesorders7760/test/integration/pages/OrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderList, OrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('logali/salesorders7760') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrderList: OrderList,
					onTheOrderObjectPage: OrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);