using ServiceDesk_BTPService as service from '../../srv/service';
using from '../../db/schema';

annotate service.SolicitudesUser with @(
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
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation',
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
            Value : T_solicitud_ID,
            Label : '{i18n>Tsolicitudid}',
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
    ],
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : Estado_code,
                Label : '{i18n>Estadocode}',
                Criticality : Estado.criticality,
            },
            {
                $Type : 'UI.DataField',
                Value : Urgencia_code,
                Label : '{i18n>Urgenciacode}',
            },
            {
                $Type : 'UI.DataField',
                Value : T_solicitud_ID,
                Label : '{i18n>Tsolicitudid}',
            },
            {
                $Type : 'UI.DataField',
                Value : Motivo,
                Label : 'Motivo',
            },
        ],
    },
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

annotate service.SolicitudesUser with {
    Urgencia @(Common.ValueListWithFixedValues : true,
        Common.Text : Urgencia.descr,
        Common.FieldControl : #ReadOnly,
)};

annotate service.SolicitudesUser with {
    Estado @(Common.ValueListWithFixedValues : true,
        Common.Text : Estado.descr,
)};

annotate service.SolicitudesUser.Comunicaciones with @(
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
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation',
        },
    ],
    UI.FieldGroup #GeneralInformation : {
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
                Value : message,
                Label : 'message',
            },
        ],
    },
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : author,
        },
        TypeName : '',
        TypeNamePlural : '',
        TypeImageUrl : 'sap-icon://chart-axis',
    },
);

annotate service.SolicitudesUser with {
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
            Label : 'Tipo Solicictud',
        },
        Common.ValueListWithFixedValues : true,
        )};

