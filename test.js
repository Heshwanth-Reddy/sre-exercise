const { JSDOM } = require('jsdom');

const { document } = new JSDOM('<!doctype html><html><body></body></html>').window;
global.document = document;
global.window = document.defaultView;

const script = require('./script.js');

describe('Single Page Web App Tests', () => {
    let titleElement;
    let changeButton;

    beforeEach(() => {
        // Load index.html into the testing environment
        document.body.innerHTML = '';
        document.body.innerHTML = `
            <h1 id="title">Hello, RiskNarrative!</h1>
        `;
        titleElement = document.getElementById('title');
    });

    test('Initial title is correct', () => {
        expect(titleElement.textContent).toBe('Hello, RiskNarrative!');
    });
});