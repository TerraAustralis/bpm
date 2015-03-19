MacroProcessor is a preprocessor that can process a String and given a startString and an endString it will call a given model (or a pluggable block) to expand the contents found between those markers. The content between one such pair of start/end markers is called a macro.

It can either do one level expansion (not further expanding macros possibly produced by the expansions) or do deep expansion which means it will immediately try to further expand produced expansions. It can also be configured to not recurse, which means it will not process the macro itself before expanding it. If recursing it will do left to right, inner first expansion.

Default is to do both deep and recursive processing, see MacroProcessorTest for more details.

Trivial example just numbering the marked sections recursively showing left to right, inner first:
| proc i |
i _ 0.
proc _ MacroProcessor block: [:x |  i _ i + 1. x, '(', i asString, ')'] between: '[' and: ']'.
proc process: 'Some sections I want numbered: [banana] and ["First [apple] then [orange]"]'

Typical ASP-ish expansion:
| proc |
proc _ MacroProcessor block: [:x | (Compiler evaluate: '3+4') asString] between: '<%' and: '%>'.
proc process: 'This code: 3+4 evaluates to: <% 3+4 %>'

