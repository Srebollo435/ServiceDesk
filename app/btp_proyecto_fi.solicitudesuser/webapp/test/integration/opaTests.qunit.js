sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'btpproyectofi/solicitudesuser/test/integration/FirstJourney',
		'btpproyectofi/solicitudesuser/test/integration/pages/SolicitudesUserList',
		'btpproyectofi/solicitudesuser/test/integration/pages/SolicitudesUserObjectPage',
		'btpproyectofi/solicitudesuser/test/integration/pages/SolicitudesUser_ComunicacionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudesUserList, SolicitudesUserObjectPage, SolicitudesUser_ComunicacionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('btpproyectofi/solicitudesuser') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSolicitudesUserList: SolicitudesUserList,
					onTheSolicitudesUserObjectPage: SolicitudesUserObjectPage,
					onTheSolicitudesUser_ComunicacionesObjectPage: SolicitudesUser_ComunicacionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);