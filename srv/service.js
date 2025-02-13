/**
 * Code is auto-generated by Application Logic, DO NOT EDIT.
 * @version(2.0)
 */


const cds = require('@sap/cds');


class ServiceDesk_BTPService extends cds.ApplicationService {
    async init() {

        console.log("Empieza la lógica")
        this.before("UPDATE", "SolicitudesUser", (request) => this.onUpdateUser(request));
        this.before("UPDATE", "SolicitudesAdmin", (request) => this.onUpdateAdmin(request));
        this.before("CREATE", "SolicitudesUser", (request) => this.onCreateUser(request));

        return super.init();
    }

    async onCreateUser(request){
        const data = await request.data;
        const isUser = request.user.is('User');
        console.log(data);

        if(isUser){
            if(data.Estado_code !== 'N'){
                await request.reject('No puedes crear');
                return;
            }
            if (data.Urgencia_code !== 'M'){
                await request.reject('No puedes crear');
                return;
            }
           
        }
    }

    async onUpdateAdmin(request){
        const { Estado_code } = await SELECT.one(request.subject, i => i.Estado_code).where({ ID: request.data.ID });
        const isAdmin = request.user.is('Admin');
        if(isAdmin){
            
            if (Estado_code === 'C') {
                await request.reject('La solicitud esta cerrada no puede modificarla.');
                return;
            }
        }

    }

    async onUpdateUser(request) {
        const data = await request.data;
        const { Estado_code } = await SELECT.one(request.subject, i => i.Estado_code).where({ ID: request.data.ID });
        const isUser = request.user.is('User'); // Verifica si el usuario tiene el rol "User"
        
        
        if(isUser){
            if (Estado_code === 'C') {
                const currentlyData = await SELECT.one(request.subject).where({ ID: request.data.ID });
                console.log(currentlyData)
                if (data.Motivo !== currentlyData.Motivo) {
                    await request.reject('No puede modificar el motivo sin cambiar el estado.');
                    return;
                }
        
                if (data.Tipo_solicitud_ID !== currentlyData.Tipo_solicitud_ID) {
                    await request.reject('No puede modificar el tipo de solicitud sin cambiar el estado.');
                    return;
                }
        
                if (data.Urgencia_code !== currentlyData.Urgencia_code) {
                   await request.reject('No puede modificar la urgencia sin cambiar el estado.');
                   return;
                } 
                return;
            }
        }
        // Si el estado no es "Cerrado" y el usuario es "User", validar cambios permitidos
    }
    
}


module.exports = {
    ServiceDesk_BTPService
};