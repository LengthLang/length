# Length
A programming language based on line length
## Guide
| Line Length | Name    | Description                                                                      |
|-------------|---------|----------------------------------------------------------------------------------|
| 9           | `inp`   | Pushes the ascii value of the first byte of stdin to the stack.                  |
| 10          | `add`   | Adds the top two values on the stack and pushes the result onto the stack.       |
| 11          | `sub`   | Subtracts the top two values on the stack and pushes the result onto the stack.  |
| 12          | `dup`   | Duplicates the top value of the stack.                                           |
| 13          | `cond`  | If the top value of the stack is 0, skip the next instruction. Then pop it.      |
| 14          | `gotou` | Sets the program counter to the value of the line under the instruction.         |
| 15          | `outn`  | Pops the top of the stack, and outputs it as a number.                           |
| 16          | `outa`  | Pops the top of the stack, and outputs its ascii value.                          |
| 20          | `mul`   | Multiplies the top two values on the stack and pushes the result onto the stack. |
| 21          | `div`   | Divides the top two values on the stack and pushes the result onto the stack.    |

Esolangs link: https://esolangs.org/wiki/Length
