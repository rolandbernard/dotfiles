
const fs = require('fs');
const path = require('path');
const { generateTheme } = require('vscode-theme-generator');

const colors = {
    red: '#e06c75',
    purered: '#ff0000',
    orange: '#ff922b',
    green: '#98c379',
    yellow: '#e5c07b',
    whisky: '#d19a66',
    blue: '#61afef',
    purple: '#af98e6',
    aqua: '#56b6c2',
    white: '#d7d7d7',
    black: '#181a1f',
    backgroun: '#21252b',
    backgroundlin: '#252930',
    backgroundcolum: '#2d323a',
    foreground: '#bbbbbb',
    grey: '#abb2bf',
    punctuation: '#7c8696',
    dark: '#40454a',
}

const colorSet = {
    base: {
        background: '#17161c',
        foreground: colors.foreground,
        color1: colors.blue,
        color2: colors.red,
        color3: colors.green,
        color4: colors.yellow
    },
    syntax: {
        comment: colors.grey,
        identifier: colors.foreground,
        string: colors.green,
        number: colors.aqua,
        boolean: colors.aqua,
        class: colors.blue,
        classMember: colors.white,
        type: colors.blue,
        function: colors.whisky,
        functionCall: colors.whisky,
        stringEscape: colors.punctuation,
        storage: colors.blue,
        modifier: colors.aqua,
        keyword: colors.red,
    },
};

generateTheme('My Theme', colorSet, path.join(__dirname, 'themes/theme.json'));

const theme = JSON.parse(fs.readFileSync(path.join(__dirname, 'themes/theme.json')));

theme.name = 'SimplyDark'
theme.tokenColors.push({
    name: 'Property',
    scope: 'variable.other.property',
    settings: {
      foreground: colors.white
    }
});
theme.tokenColors.push({
    name: 'PreProc',
    scope: 'entity.name.function.preprocessor, variable.other.enummember',
    settings: {
      foreground: colors.aqua
    }
});

for (const token of theme.tokenColors) {
    if (token.settings?.fontStyle === 'underline') {
        delete token.settings.fontStyle;
    }
}

fs.writeFileSync(path.join(__dirname, 'themes/theme.json'), JSON.stringify(theme, null, 4))
