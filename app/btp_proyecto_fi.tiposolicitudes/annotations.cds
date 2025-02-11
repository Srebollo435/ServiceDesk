using ServiceDesk_BTPService as service from '../../srv/service';
annotate service.TiposDeSolicitud with @(
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
                Label : '{i18n>TipoSolicitud}',
                Value : Nombre,
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
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>TipoSolicitud}',
            Value : Nombre,
        },
    ],
    UI.SelectionFields : [
        
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : Nombre,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : ID,
        },
        TypeImageUrl : 'sap-icon://add-folder',
    },
);

annotate service.TiposDeSolicitud with {
    Nombre @Common.Label : '{i18n>TipoSolicitud}'
};

