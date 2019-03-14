import { Controller } from 'stimulus';
import consumer from '../consumer';

export default class extends Controller {
    static targets = [ 'appId', 'log' ];

    connect() {
        consumer.subscriptions.create({
            channel: 'LogChannel',
            id: this.appIdTarget.value
        }, {
            received: (data) => {
                const currentText = this.logTarget.innerHTML;
                const newLines = data.split('\n');
                const currentLines = currentText.split("\n").slice(-newLines.length);
                currentLines.forEach((l,i) => {
                    if(newLines[i] !== l) {
                        this.logTarget.innerHTML += `\n${newLines[i]}`;
                        this.logTarget.scroll(this.logTarget.scrollLeft, this.logTarget.scrollHeight);
                    }
                });
            }
        });
    }
}