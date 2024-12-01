  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ System ](/docs/reference/foundations/sys)

#  System

Module for system interactions.

This module defines the following items:

  * The ` sys.version ` constant (of type [ ` version ` ](/docs/reference/foundations/version/ "`version`") ) that specifies the currently active Typst compiler version. 

  * The ` sys.inputs ` [ dictionary ](/docs/reference/foundations/dictionary/ "dictionary") , which makes external inputs available to the project. An input specified in the command line as ` --input key=value ` becomes available under ` sys.inputs.key ` as ` "value"  ` . To include spaces in the value, it may be enclosed with single or double quotes. 

The value is always of type [ string ](/docs/reference/foundations/str/) .
More complex data may be parsed manually using functions like [ ` json.decode
` ](/docs/reference/data-loading/json/#definitions-decode) .

[ ![â](/assets/icons/16-arrow-right.svg) Style  Previous page
](/docs/reference/foundations/style/) [ ![â](/assets/icons/16-arrow-
right.svg) Type  Next page  ](/docs/reference/foundations/type/)

