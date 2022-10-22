
const fs = require('fs');
const path = require('path');
const { generateTheme } = require('vscode-theme-generator');

const colors = {
    background: '#1d2023',
    foreground: '#d4d4d4',
    red: '#ff5967',
    green: '#98c379',
    yellow: '#e5c07b',
    darkBlue: '#345d7f',
    comment: '#84838b',
    preproc: '#569cd6',
    numeric: '#b5cea8',
    escape: '#d7ba7d',
    variable: '#9cdcfe',
    string: '#ce9178',
    function: '#dcdcaa',
    type: '#4ec9b0',
    control: '#c586c0',
    constant: '#4fc1ff',
    label: '#c8c8c8',
}

const colorSet = {
    type: 'dark',
    base: {
        background: colors.background,
        foreground: colors.foreground,
        color1: colors.darkBlue,
        color2: colors.red,
        color3: colors.green,
        color4: colors.yellow,
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
    ui: { },
    terminal: { },
    overrides: {
        'panel.background': colors.background,
        'titleBar.activeBackground': '#2a2e32',
        'activityBar.background': '#2a2e32',
        'scrollbar.shadow': '#ffffff00',
        'widget.shadow': '#ffffff00',
    },
};

generateTheme('My Theme', colorSet, path.join(__dirname, 'themes/simplydark.json'));

const theme = JSON.parse(fs.readFileSync(path.join(__dirname, 'themes/simplydark.json')));

theme.$schema = 'vscode://schemas/color-theme';
theme.name = 'SimplyDark';
theme.tokenColors = [
    {
        scope: [
            'meta.embedded',
            'source.groovy.embedded'
        ],
        settings: {
            foreground: colors.foreground
        }
    },
    {
        scope: 'emphasis',
        settings: {
            fontStyle: 'italic'
        }
    },
    {
        scope: 'strong',
        settings: {
            fontStyle: 'bold'
        }
    },
    {
        scope: 'header',
        settings: {
            foreground: '#000080'
        }
    },
    {
        scope: 'comment',
        settings: {
            foreground: colors.comment
        }
    },
    {
        scope: 'constant.language',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: [
            'constant.numeric',
            'variable.other.enummember',
            'keyword.operator.plus.exponent',
            'keyword.operator.minus.exponent'
        ],
        settings: {
            foreground: colors.numeric
        }
    },
    {
        scope: 'constant.regexp',
        settings: {
            foreground: '#646695'
        }
    },
    {
        scope: 'entity.name.tag',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'entity.name.tag.css',
        settings: {
            foreground: colors.escape
        }
    },
    {
        scope: 'entity.other.attribute-name',
        settings: {
            foreground: colors.variable
        }
    },
    {
        scope: [
            'entity.other.attribute-name.class.css',
            'entity.other.attribute-name.class.mixin.css',
            'entity.other.attribute-name.id.css',
            'entity.other.attribute-name.parent-selector.css',
            'entity.other.attribute-name.pseudo-class.css',
            'entity.other.attribute-name.pseudo-element.css',
            'source.css.less entity.other.attribute-name.id',
            'entity.other.attribute-name.scss'
        ],
        settings: {
            foreground: colors.escape
        }
    },
    {
        scope: 'invalid',
        settings: {
            foreground: '#f44747'
        }
    },
    {
        scope: 'markup.underline',
        settings: {
            fontStyle: 'underline'
        }
    },
    {
        scope: 'markup.bold',
        settings: {
            fontStyle: 'bold',
            foreground: colors.preproc
        }
    },
    {
        scope: 'markup.heading',
        settings: {
            fontStyle: 'bold',
            foreground: colors.preproc
        }
    },
    {
        scope: 'markup.italic',
        settings: {
            fontStyle: 'italic'
        }
    },
    {
        scope: 'markup.strikethrough',
        settings: {
            fontStyle: 'strikethrough'
        }
    },
    {
        scope: 'markup.inserted',
        settings: {
            foreground: colors.numeric
        }
    },
    {
        scope: 'markup.deleted',
        settings: {
            foreground: colors.string
        }
    },
    {
        scope: 'markup.changed',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'punctuation.definition.quote.begin.markdown',
        settings: {
            foreground: colors.comment
        }
    },
    {
        scope: 'punctuation.definition.list.begin.markdown',
        settings: {
            foreground: '#6796e6'
        }
    },
    {
        scope: 'markup.inline.raw',
        settings: {
            foreground: colors.string
        }
    },
    {
        name: 'brackets of XML/HTML tags',
        scope: 'punctuation.definition.tag',
        settings: {
            foreground: '#808080'
        }
    },
    {
        scope: [
            'meta.preprocessor',
            'entity.name.function.preprocessor'
        ],
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'meta.preprocessor.string',
        settings: {
            foreground: colors.string
        }
    },
    {
        scope: 'meta.preprocessor.numeric',
        settings: {
            foreground: colors.numeric
        }
    },
    {
        scope: 'meta.structure.dictionary.key.python',
        settings: {
            foreground: colors.variable
        }
    },
    {
        scope: 'meta.diff.header',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'storage',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'storage.type',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: [
            'storage.modifier',
            'keyword.operator.noexcept'
        ],
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: [
            'string',
            'meta.embedded.assembly'
        ],
        settings: {
            foreground: colors.string
        }
    },
    {
        scope: 'string.tag',
        settings: {
            foreground: colors.string
        }
    },
    {
        scope: 'string.value',
        settings: {
            foreground: colors.string
        }
    },
    {
        scope: 'string.regexp',
        settings: {
            foreground: '#d16969'
        }
    },
    {
        name: 'String interpolation',
        scope: [
            'punctuation.definition.template-expression.begin',
            'punctuation.definition.template-expression.end',
            'punctuation.section.embedded'
        ],
        settings: {
            foreground: colors.preproc
        }
    },
    {
        name: 'Reset JavaScript string interpolation expression',
        scope: [
            'meta.template.expression'
        ],
        settings: {
            foreground: colors.foreground
        }
    },
    {
        scope: [
            'support.type.vendored.property-name',
            'support.type.property-name',
            'variable.css',
            'variable.scss',
            'variable.other.less',
            'source.coffee.embedded'
        ],
        settings: {
            foreground: colors.variable
        }
    },
    {
        scope: 'keyword',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'keyword.control',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'keyword.operator',
        settings: {
            foreground: colors.foreground
        }
    },
    {
        scope: [
            'keyword.operator.new',
            'keyword.operator.expression',
            'keyword.operator.cast',
            'keyword.operator.sizeof',
            'keyword.operator.alignof',
            'keyword.operator.typeid',
            'keyword.operator.alignas',
            'keyword.operator.instanceof',
            'keyword.operator.logical.python',
            'keyword.operator.wordlike'
        ],
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'keyword.other.unit',
        settings: {
            foreground: colors.numeric
        }
    },
    {
        scope: [
            'punctuation.section.embedded.begin.php',
            'punctuation.section.embedded.end.php'
        ],
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'support.function.git-rebase',
        settings: {
            foreground: colors.variable
        }
    },
    {
        scope: 'constant.sha.git-rebase',
        settings: {
            foreground: colors.numeric
        }
    },
    {
        name: 'coloring of the Java import and package identifiers',
        scope: [
            'storage.modifier.import.java',
            'variable.language.wildcard.java',
            'storage.modifier.package.java'
        ],
        settings: {
            foreground: colors.foreground
        }
    },
    {
        name: 'this.self',
        scope: 'variable.language',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        name: 'Function declarations',
        scope: [
            'entity.name.function',
            'support.function',
            'support.constant.handlebars',
            'source.powershell variable.other.member',
            'entity.name.operator.custom-literal'
        ],
        settings: {
            foreground: colors.function
        }
    },
    {
        name: 'Types declaration and references',
        scope: [
            'meta.return-type',
            'support.class',
            'support.type',
            'entity.name.type',
            'entity.name.namespace',
            'entity.other.attribute',
            'entity.name.scope-resolution',
            'entity.name.class',
            'storage.type.numeric.go',
            'storage.type.byte.go',
            'storage.type.boolean.go',
            'storage.type.string.go',
            'storage.type.uintptr.go',
            'storage.type.error.go',
            'storage.type.rune.go',
            'storage.type.cs',
            'storage.type.generic.cs',
            'storage.type.modifier.cs',
            'storage.type.variable.cs',
            'storage.type.annotation.java',
            'storage.type.generic.java',
            'storage.type.java',
            'storage.type.object.array.java',
            'storage.type.primitive.array.java',
            'storage.type.primitive.java',
            'storage.type.token.java',
            'storage.type.groovy',
            'storage.type.annotation.groovy',
            'storage.type.parameters.groovy',
            'storage.type.generic.groovy',
            'storage.type.object.array.groovy',
            'storage.type.primitive.array.groovy',
            'storage.type.primitive.groovy'
        ],
        settings: {
            foreground: colors.type
        }
    },
    {
        name: 'Types declaration and references, TS grammar specific',
        scope: [
            'meta.type.cast.expr',
            'meta.type.new.expr',
            'support.constant.math',
            'support.constant.dom',
            'support.constant.json',
            'entity.other.inherited-class'
        ],
        settings: {
            foreground: colors.type
        }
    },
    {
        name: 'Control flow / Special keywords',
        scope: [
            'keyword.control',
            'source.cpp keyword.operator.new',
            'keyword.operator.delete',
            'keyword.other.using',
            'keyword.other.operator',
            'entity.name.operator'
        ],
        settings: {
            foreground: colors.control
        }
    },
    {
        name: 'Variable and parameter name',
        scope: [
            'variable',
            'meta.definition.variable.name',
            'support.variable',
            'entity.name.variable',
            'constant.other.placeholder', // placeholders in strings
        ],
        settings: {
            foreground: colors.variable
        }
    },
    {
        name: 'Constants and enums',
        scope: [
            'variable.other.constant',
            'variable.other.enummember'
        ],
        settings: {
            foreground: colors.constant,
        }
    },
    {
        name: 'Object keys, TS grammar specific',
        scope: [
            'meta.object-literal.key'
        ],
        settings: {
            foreground: colors.variable
        }
    },
    {
        name: 'CSS property value',
        scope: [
            'support.constant.property-value',
            'support.constant.font-name',
            'support.constant.media-type',
            'support.constant.media',
            'constant.other.color.rgb-value',
            'constant.other.rgb-value',
            'support.constant.color'
        ],
        settings: {
            foreground: colors.string
        }
    },
    {
        name: 'Regular expression groups',
        scope: [
            'punctuation.definition.group.regexp',
            'punctuation.definition.group.assertion.regexp',
            'punctuation.definition.character-class.regexp',
            'punctuation.character.set.begin.regexp',
            'punctuation.character.set.end.regexp',
            'keyword.operator.negation.regexp',
            'support.other.parenthesis.regexp'
        ],
        settings: {
            foreground: colors.string
        }
    },
    {
        scope: [
            'constant.character.character-class.regexp',
            'constant.other.character-class.set.regexp',
            'constant.other.character-class.regexp',
            'constant.character.set.regexp'
        ],
        settings: {
            foreground: '#d16969'
        }
    },
    {
        scope: [
            'keyword.operator.or.regexp',
            'keyword.control.anchor.regexp'
        ],
        settings: {
            foreground: colors.function
        }
    },
    {
        scope: 'keyword.operator.quantifier.regexp',
        settings: {
            foreground: colors.escape
        }
    },
    {
        scope: 'constant.character',
        settings: {
            foreground: colors.preproc
        }
    },
    {
        scope: 'constant.character.escape',
        settings: {
            foreground: colors.escape
        }
    },
    {
        scope: 'entity.name.label',
        settings: {
            foreground: colors.label
        }
    }
];
theme.semanticHighlighting = true;
theme.semanticTokenColors = {
    newOperator: colors.control,
    stringLiteral: colors.string,
    customLiteral: colors.function,
    numberLiteral: colors.numeric,
};

for (const token of theme.tokenColors) {
    if (token.settings?.fontStyle === 'underline') {
        delete token.settings.fontStyle;
    }
}

fs.writeFileSync(path.join(__dirname, 'themes/simplydark.json'), JSON.stringify(theme, null, 4))

