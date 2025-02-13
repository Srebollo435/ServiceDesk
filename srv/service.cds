using { BTP_Proyecto_FI as my } from '../db/schema';

@path : '/service/BTP_Proyecto_FISvcs'
service ServiceDesk_BTPService
{
    annotate SolicitudesAdmin with @restrict :
    [
        { grant : [ '*' ], to : [ 'Admin' ] }
    ];

    annotate SolicitudesUser with @restrict :
    [
        { grant : [ 'CREATE', 'DELETE', 'READ', 'UPDATE' ], to : [ 'User' ], where : 'createdBy = $user' }
    ];

    annotate TiposDeSolicitud with @restrict :
    [
        { grant : [ '*' ], to : [ 'Admin' ] },
        { grant : [ 'READ' ], to : [ 'User' ] }
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

    @odata.draft.enabled
    entity PersonasSoporte as
        projection on my.PersonasSoporte;
}

annotate ServiceDesk_BTPService with @requires :
[
    'User',
    'Admin'
];
