import { LightningElement, api } from 'lwc';

const COLUMNS = [{}]

export default class RelatedList extends LightningElement {
    columns = COLUMNS;
    listTitle;
    icon;
    containsData = false;
    data;
    errors;
    @api recordId;
}