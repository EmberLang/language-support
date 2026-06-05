; Top-level declarations

(import_declaration
  "import" @context
  path: (_) @name) @item

(struct_declaration
  "struct" @context
  name: (identifier) @name
  type_parameters: (type_parameter_list)? @context) @item

(interface_declaration
  "interface" @context
  name: (identifier) @name
  type_parameters: (type_parameter_list)? @context) @item

(enum_declaration
  "enum" @context
  name: (identifier) @name
  type_parameters: (type_parameter_list)? @context) @item

(const_declaration
  "const" @context
  name: (identifier) @name) @item

(let_declaration
  (let_clause
    "let" @context
    "mut"? @context
    name: (identifier) @name)) @item

(impl_declaration
  "impl" @context
  target: (_) @name) @item

(function_declaration
  "unsafe"? @context
  "fn" @context
  name: (identifier) @name
  type_parameters: (type_parameter_list)? @context
  parameters: (parameter_list) @context
  result: (_) @context) @item

(function_declaration
  !result
  "unsafe"? @context
  "fn" @context
  name: (identifier) @name
  type_parameters: (type_parameter_list)? @context
  parameters: (parameter_list) @context) @item

; Type members

(field_declaration
  name: (identifier) @name
  type: (_) @context) @item

(interface_method
  name: (identifier) @name
  parameters: (parameter_list) @context
  result: (_) @context) @item

(interface_method
  !result
  name: (identifier) @name
  parameters: (parameter_list) @context) @item
