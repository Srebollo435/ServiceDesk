using { BTP_Proyecto_FI as my } from '../db/schema';

@path : '/service/BTP_Proyecto_FISvcs'
service ServiceDesk_BTPService
{

     annotate SolicitudesUser with @restrict :
    [
        { grant : [ 'CREATE', 'DELETE', 'READ', 'UPDATE' ], to : [ 'User' ], where : 'createdBy = $user' }
        
    ];

    annotate SolicitudesAdmin with @restrict :
    [
        { grant : [ '*' ], to : [ 'Admin' ] }
    ];

    annotate TiposDeSolicitud with @restrict :
    [
        { grant : [ '*' ], to : [ 'Admin' ] }
    ];

    @odata.draft.enabled
    entity SolicitudesUser as
        projection on my.Solicitudes;

    @cds.redirection.target : false
    @odata.draft.enabled
    entity SolicitudesAdmin as
        projection on my.Solicitudes;

    @odata.draft.enabled
    entity TiposDeSolicitud as
        projection on my.TiposDeSolicitud;
}

annotate ServiceDesk_BTPService with @requires :
[
    'User',
    'Admin'
];
