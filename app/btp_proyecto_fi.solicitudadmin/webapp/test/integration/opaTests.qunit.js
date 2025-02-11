sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'btpproyectofi/solicitudadmin/test/integration/FirstJourney',
		'btpproyectofi/solicitudadmin/test/integration/pages/SolicitudesAdminList',
		'btpproyectofi/solicitudadmin/test/integration/pages/SolicitudesAdminObjectPage',
		'btpproyectofi/solicitudadmin/test/integration/pages/SolicitudesAdmin_ComunicacionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesAdminList, SolicitudesAdminObjectPage, SolicitudesAdmin_ComunicacionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('btpproyectofi/solicitudadmin') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSolicitudesAdminList: SolicitudesAdminList,
					onTheSolicitudesAdminObjectPage: SolicitudesAdminObjectPage,
					onTheSolicitudesAdmin_ComunicacionesObjectPage: SolicitudesAdmin_ComunicacionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);