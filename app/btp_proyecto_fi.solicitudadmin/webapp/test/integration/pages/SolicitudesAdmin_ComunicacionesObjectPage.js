sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'btpproyectofi.solicitudadmin',
            componentId: 'SolicitudesAdmin_ComunicacionesObjectPage',
            contextPath: '/SolicitudesAdmin/Comunicaciones'
        },
        CustomPageDefinitions
    );
});