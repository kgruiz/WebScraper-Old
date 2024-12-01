  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Plugin ](/docs/reference/foundations/plugin/)

#  plugin

A WebAssembly plugin.

Typst is capable of interfacing with plugins compiled to WebAssembly. Plugin
functions may accept multiple [ byte buffers
](/docs/reference/foundations/bytes/) as arguments and return a single byte
buffer. They should typically be wrapped in idiomatic Typst functions that
perform the necessary conversions between native Typst types and bytes.

Plugins run in isolation from your system, which means that printing, reading
files, or anything like that will not be supported for security reasons. To
run as a plugin, a program needs to be compiled to a 32-bit shared WebAssembly
library. Many compilers will use the [ WASI ABI ](https://wasi.dev/) by
default or as their only option (e.g. emscripten), which allows printing,
reading files, etc. This ABI will not directly work with Typst. You will
either need to compile to a different target or [ stub all functions
](https://github.com/astrale-sharp/wasm-minimal-protocol/blob/master/wasi-
stub) .

##  Plugins and Packages

Plugins are distributed as packages. A package can make use of a plugin simply
by including a WebAssembly file and loading it. Because the byte-based plugin
interface is quite low-level, plugins are typically exposed through wrapper
functions, that also live in the same package.

##  Purity

Plugin functions must be pure: Given the same arguments, they must always
return the same value. The reason for this is that Typst functions must be
pure (which is quite fundamental to the language design) and, since Typst
function can call plugin functions, this requirement is inherited. In
particular, if a plugin function is called twice with the same arguments,
Typst might cache the results and call your function only once.

##  Example

    
    
    #let myplugin = plugin("hello.wasm")
    #let concat(a, b) = str(
      myplugin.concatenate(
        bytes(a),
        bytes(b),
      )
    )
    
    #concat("hello", "world")
    

![Preview](/assets/docs/Vj65tyYDxxD3OHZUaiQ94QAAAAAAAAAA.png)

##  Protocol

To be used as a plugin, a WebAssembly module must conform to the following
protocol:

###  Exports

A plugin module can export functions to make them callable from Typst. To
conform to the protocol, an exported function should:

  * Take ` n ` 32-bit integer arguments ` a_1 ` , ` a_2 ` , ..., ` a_n ` (interpreted as lengths, so ` usize/size_t ` may be preferable), and return one 32-bit integer. 

  * The function should first allocate a buffer ` buf ` of length ` a_1 + a_2 + ... + a_n ` , and then call ` wasm_minimal_protocol_write_args_to_buffer(buf.ptr) ` . 

  * The ` a_1 ` first bytes of the buffer now constitute the first argument, the ` a_2 ` next bytes the second argument, and so on. 

  * The function can now do its job with the arguments and produce an output buffer. Before returning, it should call ` wasm_minimal_protocol_send_result_to_host ` to send its result back to the host. 

  * To signal success, the function should return ` 0 ` . 

  * To signal an error, the function should return ` 1 ` . The written buffer is then interpreted as an UTF-8 encoded error message. 

###  Imports

Plugin modules need to import two functions that are provided by the runtime.
(Types and functions are described using WAT syntax.)

  * ` (import "typst_env" "wasm_minimal_protocol_write_args_to_buffer" (func (param i32))) `

Writes the arguments for the current function into a plugin-allocated buffer.
When a plugin function is called, it  receives the lengths  of its input
buffers as arguments. It should then allocate a buffer whose capacity is at
least the sum of these lengths. It should then call this function with a ` ptr
` to the buffer to fill it with the arguments, one after another.

  * ` (import "typst_env" "wasm_minimal_protocol_send_result_to_host" (func (param i32 i32))) `

Sends the output of the current function to the host (Typst). The first
parameter shall be a pointer to a buffer ( ` ptr ` ), while the second is the
length of that buffer ( ` len ` ). The memory pointed at by ` ptr ` can be
freed immediately after this function returns. If the message should be
interpreted as an error message, it should be encoded as UTF-8.

##  Resources

For more resources, check out the [ wasm-minimal-protocol repository
](https://github.com/astrale-sharp/wasm-minimal-protocol) . It contains:

  * A list of example plugin implementations and a test runner for these examples 
  * Wrappers to help you write your plugin in Rust (Zig wrapper in development) 
  * A stubber for WASI 

##  Constructor

Question mark

If a type has a constructor, you can call it like a function to create a new
value of the type.

Creates a new plugin from a WebAssembly file.

plugin  (

[ str ](/docs/reference/foundations/str/)

)  -> [ plugin ](/docs/reference/foundations/plugin/)

####  ` path `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Path to a WebAssembly file.

For more details, see the [ Paths section ](/docs/reference/syntax/#paths) .

[ ![â](/assets/icons/16-arrow-right.svg) Panic  Previous page
](/docs/reference/foundations/panic/) [ ![â](/assets/icons/16-arrow-
right.svg) Regex  Next page  ](/docs/reference/foundations/regex/)

