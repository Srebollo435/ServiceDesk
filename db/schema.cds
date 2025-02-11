namespace BTP_Proyecto_FI;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    managed,
    temporal,
    sap.common.CodeList
}
from '@sap/cds/common';

entity Solicitudes : managed
{
    key ID : UUID;
    Create : String(100);
    Modifier : String(100);
    Usuario_so : type of managed: createdBy; 
    T_solicitud : Association to one TiposDeSolicitud;
    Estado : Association to one Estado default 'N';
    Urgencia : Association to one Urgencia default 'M';
    Motivo : String(100);
    Asignado : Association to one PersonasSoporte;
    Comunicaciones : Composition of many 
    {
        key ID : UUID;
        timestamp : type of managed:createdAt;
        author : type of managed:createdBy;
        message : String;
    };
}

entity TiposDeSolicitud : managed
{
    key ID : UUID;
    Nombre : String(100);
    solicitudes : Association to one Solicitudes on solicitudes.T_solicitud = $self;
}

entity PersonasSoporte : managed
{
    key ID : UUID;
    Nombre : String(100);
    Apellido1 : String(100);
    Apellido2 : String(100);
    solicitudes : Association to many Solicitudes on solicitudes.Asignado = $self;
}

entity Estado : CodeList
{
    key code : String enum
    {
        new = 'N';
        assigned = 'A';
        in_process = 'I';
        on_hold = 'H';
        resolved = 'R';
        closed = 'C';
    };
    criticality : Integer;
}

entity Urgencia : CodeList
{
    key code : String enum
    {
        high = 'H';
        medium = 'M';
        low = 'L';
    };
    criticality : Integer;
}


