//@ui5-bundle btpproyectofi/solicituduser/Component-preload.js
sap.ui.require.preload({
	"btpproyectofi/solicituduser/Component.js":function(){
sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("btpproyectofi.solicituduser.Component",{metadata:{manifest:"json"}})});
},
	"btpproyectofi/solicituduser/i18n/i18n.properties":'# This is the resource bundle for btpproyectofi.solicituduser\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=SolicitudUser\n\n#YDES: Application description\nappDescription=UI solicutd de usuario\n\n#XFLD,39\nflpTitle=SolicitudUser\n',
	"btpproyectofi/solicituduser/manifest.json":'{"_version":"1.60.0","sap.app":{"id":"btpproyectofi.solicituduser","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.16.3","toolsId":"50de28c9-e3d0-4160-bdf7-d8656db9229e"},"dataSources":{"mainService":{"uri":"service/BTP_Proyecto_FISvcs/","type":"OData","settings":{"annotations":[],"odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"btpproyectofisolicituduser-display":{"semanticObject":"btpproyectofisolicituduser","action":"display","title":"{{flpTitle}}","signature":{"parameters":{},"additionalParameters":"allowed"}},"btp_proyecto_fi.tiposolicitudes-display":{"semanticObject":"btp_proyecto_fitiposolicitudes","action":"display","signature":{"parameters":{},"additionalParameters":"allowed"}}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.120.13","libs":{"sap.m":{},"sap.ui.core":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"btpproyectofi.solicituduser.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"SolicitudesUserList","target":"SolicitudesUserList"},{"pattern":"SolicitudesUser({key}):?query:","name":"SolicitudesUserObjectPage","target":"SolicitudesUserObjectPage"},{"pattern":"SolicitudesUser({key})/Comunicaciones({key2}):?query:","name":"SolicitudesUser_ComunicacionesObjectPage","target":"SolicitudesUser_ComunicacionesObjectPage"}],"targets":{"SolicitudesUserList":{"type":"Component","id":"SolicitudesUserList","name":"sap.fe.templates.ListReport","options":{"settings":{"contextPath":"/SolicitudesUser","variantManagement":"Page","navigation":{"SolicitudesUser":{"detail":{"route":"SolicitudesUserObjectPage"}}},"controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"tableSettings":{"type":"ResponsiveTable"}}},"initialLoad":"Enabled"}}},"SolicitudesUserObjectPage":{"type":"Component","id":"SolicitudesUserObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/SolicitudesUser","navigation":{"Comunicaciones":{"detail":{"route":"SolicitudesUser_ComunicacionesObjectPage"}}}}}},"SolicitudesUser_ComunicacionesObjectPage":{"type":"Component","id":"SolicitudesUser_ComunicacionesObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/SolicitudesUser/Comunicaciones"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"BTP_Proyecto_FI.service"}}'
});
//# sourceMappingURL=Component-preload.js.map
