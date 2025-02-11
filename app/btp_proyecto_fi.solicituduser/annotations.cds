using ServiceDesk_BTPService as service from '../../srv/service';
using from '../../db/schema';

annotate service.SolicitudesUser with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : '{i18n>ID_code}',
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
                Label : '{i18n>Tsolicitudid}',
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
            Label : '{i18n>TipoSolicitud}',
        },
        {
            $Type : 'UI.DataField',
            Value : Motivo,
            Label : 'Motivo',
        },
    ],
    UI.SelectionFields : [
        Urgencia_code,
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
        TypeImageUrl : 'sap-icon://activity-individual',
    },
);

annotate service.SolicitudesUser with {
    T_solicitud @(
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
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Nombre',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        )
};

annotate service.SolicitudesUser with {
    Urgencia @(
        Common.Label : '{i18n>Urgenciacode}',
        Common.ValueListWithFixedValues : true,
        Common.Text : Urgencia.descr,
    )
};

annotate service.SolicitudesUser.Comunicaciones with @(
    UI.LineItem #Comunicaciones : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
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
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : author,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : timestamp,
        },
        TypeImageUrl : 'sap-icon://chart-axis',
    },
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
                Value : message,
                Label : 'message',
            },
            {
                $Type : 'UI.DataField',
                Value : author,
            },
            {
                $Type : 'UI.DataField',
                Value : timestamp,
            },
        ],
    },
);


annotate service.SolicitudesUser with {
    Estado @(
        Common.Text : Estado.descr,
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Estado with {
    code @Common.Text : descr
};

