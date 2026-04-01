; Functions

(call_expression(qualified_identifier(identifier) @function))
(call_expression(field_expression(field_identifier) @function))
(call_expression(identifier) @function)

(template_function (identifier) @function)

(template_method (field_identifier) @function)

(function_declarator (identifier) @function)
(function_declarator (field_identifier) @function)
(function_declarator (qualified_identifier (identifier) @function))

; Destructor
(destructor_name(identifier) @function)
; Functions_End

; Parameters
(parameter_declaration (identifier) @parameter)
(parameter_declaration (reference_declarator (identifier) @parameter))
(parameter_declaration (pointer_declarator (identifier) @parameter))
(parenthesized_declarator(pointer_declarator (identifier) @parameter))
(parameter_declaration (array_declarator (identifier) @parameter))

(optional_parameter_declaration (identifier) @parameter)
(optional_parameter_declaration (reference_declarator(identifier) @parameter))
(optional_parameter_declaration (pointer_declarator(identifier) @parameter))
(optional_parameter_declaration (array_declarator (identifier) @parameter))
; Parameters_End


; variables
(identifier) @variable
(field_declaration (field_identifier) @property)
(field_declaration (reference_declarator(field_identifier) @property))
(field_declaration (pointer_declarator(field_identifier) @property))
(field_declaration (function_declarator(parenthesized_declarator(pointer_declarator(field_identifier)@property))))
(field_declaration (array_declarator(field_identifier) @property))

; Accessing class variable
(field_expression (field_identifier) @property)
; variables_end

; namespaces
(using_declaration (identifier) @namespace)
((namespace_identifier) @namespace)
; namespaces_end

; enums
(enumerator(identifier) @enumMember)
; enums_end

; macros
(preproc_ifdef(identifier) @macro)
(preproc_def(identifier) @macro)
; macros_end

; types
(auto) @type
(primitive_type) @type
((type_identifier) @typeParameter)
(this) @variable.declaration.readonly
; types_end

; access_specifier
(access_specifier) @decorator
; access_specifier_end

; modules
(module_name
  (identifier) @module)
; modules_end

; comments
(comment) @comment
; comments_end

; literals
((false) @number)
((true) @number)
(number_literal) @number
(string_literal) @string
(raw_string_literal) @string
; literals_end

; syntax
[
 "alignas"
 "alignof"
 "and"
 "and_eq"
 "asm"
 "bitand"
 "bitor"
 "break"
 "case"
 "catch"
 "class"
 "compl"
 "concept"
 "const"
 "consteval"
 "constexpr"
 "constinit"
 "continue"
 "co_await"
 "co_return"
 "co_yield"
 "decltype"
 "default"
 "delete"
 "do"
 "else"
 "enum"
 "explicit"
 "export"
 "extern"
 "final"
 "for"
 "friend"
 "goto"
 "if"
 "import"
 "inline"
 "module"
 "mutable"
 "namespace"
 "new"
 "noexcept"
 "not"
 "not_eq"
 "nullptr"
 "operator"
 "or"
 "or_eq"
 "override"
 "register"
 "requires"
 "return"
 "sizeof"
 "static"
 "static_assert"
 "struct"
 "switch"
 "template"
 "thread_local"
 "throw"
 "try"
 "typedef"
 "typename"
 "union"
 "using"
 "virtual"
 "volatile"
 "while"
] @keyword

[
  "!"
","
"."
";"
":"
"?"
"::"
"<"
"<<"
"<="
">"
">>"
">="
"<=>"
"->"
"->*"
".*"
"="
"+"
"-"
"*"
"/"
"%"
"~"
"&"
"^"
"|"
"&&"
"||"
"=="
"!="
 "++"
 "--"
 "+="
 "-="
 "*="
 "/="
 "%="
 "<<="
 ">>="
 "&="
 "|="
 "^="
] @operator
; syntax_end
