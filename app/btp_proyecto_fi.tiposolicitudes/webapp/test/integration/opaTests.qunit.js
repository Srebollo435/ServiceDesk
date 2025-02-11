sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'btpproyectofi/tiposolicitudes/test/integration/FirstJourney',
		'btpproyectofi/tiposolicitudes/test/integration/pages/TiposDeSolicitudList',
		'btpproyectofi/tiposolicitudes/test/integration/pages/TiposDeSolicitudObjectPage'
    ],
    function(JourneyRunner, opaJourney, TiposDeSolicitudList, TiposDeSolicitudObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('btpproyectofi/tiposolicitudes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTiposDeSolicitudList: TiposDeSolicitudList,
					onTheTiposDeSolicitudObjectPage: TiposDeSolicitudObjectPage
                }
            },
            opaJourney.run
        );
    }
);