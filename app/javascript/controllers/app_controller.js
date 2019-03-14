import { Controller } from 'stimulus';

export default class extends Controller {
    connect() {
        console.log(">");
    }
    async updateApp() {
        const resp = await fetch(this.data.get('updatePath'), {
            method: 'POST',
            headers: {
                'X-CSRF-Token': $("meta[name=csrf-token]").attr('content')
            }
        })
    }
}