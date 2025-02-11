using ServiceDesk_BTPService as service from '../../srv/service';
using from '../../db/schema';

annotate service.SolicitudesAdmin with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : Usuario_so,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Estadocode}',
                Value : Estado_code,
                Criticality : Estado.criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Urgenciacode}',
                Value : Urgencia_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Motivo',
                Value : Motivo,
            },
            {
                $Type : 'UI.DataField',
                Value : T_solicitud_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : Asignado_ID,
                Label : '{i18n>Asignadoid}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Comunicaciones',
            ID : 'Comunicaciones',
            Target : 'Comunicaciones/@UI.LineItem#Comunicaciones',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : Usuario_so,
            Label : '{i18n>usuario}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Estadocode}',
            Value : Estado_code,
            Criticality : Estado.criticality,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Urgenciacode}',
            Value : Urgencia_code,
        },
        {
            $Type : 'UI.DataField',
            Value : T_solicitud_ID,
            Label : '{i18n>Tsolicitudid}',
        },
        {
            $Type : 'UI.DataField',
            Value : Asignado_ID,
            Label : '{i18n>Asignadoid}',
        },
    ],
    UI.SelectionFields : [
        Estado_code,
        T_solicitud_ID,
        Usuario_so,
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : ID,
        },
        TypeImageUrl : 'sap-icon://account',
    },
);

annotate service.SolicitudesAdmin with {
    T_solicitud @(
        Common.Label : '{i18n>Tsolicitudid}',
        Common.Text : T_solicitud.Nombre,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'TiposDeSolicitud',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : T_solicitud_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        )
};

annotate service.SolicitudesAdmin with {
    Estado @(
        Common.Label : '{i18n>Estadocode}',
        Common.ValueListWithFixedValues : true,
        Common.Text : Estado.descr,
    )
};

annotate service.SolicitudesAdmin.Comunicaciones with @(
    UI.LineItem #Comunicaciones : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : author,
        },
        {
            $Type : 'UI.DataField',
            Value : message,
            Label : 'message',
        },
        {
            $Type : 'UI.DataField',
            Value : timestamp,
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Detalles Comunicación',
            ID : 'DetallesComunicacin',
            Target : '@UI.FieldGroup#DetallesComunicacin',
        },
    ],
    UI.FieldGroup #DetallesComunicacin : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : author,
            },
            {
                $Type : 'UI.DataField',
                Value : timestamp,
            },
            {
                $Type : 'UI.DataField',
                Value : message,
                Label : 'message',
            },
        ],
    },
    UI.HeaderInfo : {
        TypeImageUrl : 'sap-icon://disconnected',
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : author,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : timestamp,
        },
    },
);

annotate service.SolicitudesAdmin with {
    Urgencia @(
        Common.Text : Urgencia.descr,
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.SolicitudesAdmin with {
    Asignado @(
        Common.Text : Asignado.Nombre,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PersonasSoporte',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Asignado_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.PersonasSoporte with {
    ID @Common.Text : Nombre
};

annotate service.SolicitudesAdmin with {
    Usuario_so @Common.Label : '{i18n>Usuarioso}'
};

annotate service.TiposDeSolicitud with {
    ID @Common.Text : Nombre
};

