# Length
[![Discord](https://img.shields.io/discord/798936842808197140?logo=discord)](https://discord.gg/st6SqenRnm) `irc.libera.chat #lengthlang`  
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
| 17          | `rol`   | Rotates the stack to the left: `[ 7 6 5 ]` -> `[ 6 5 7 ]`                        |
| 18          | `swap`  | Swaps the top two values of the stack: `[ 7 6 5 ]` -> `[ 6 7 5 ]`                |
| 20          | `mul`   | Multiplies the top two values on the stack and pushes the result onto the stack. |
| 21          | `div`   | Divides the top two values on the stack and pushes the result onto the stack.    |
| 23          | `pop`   | Pops the top value of the stack                                                  |
| 24          | `gotos` | Sets the program counter to the value on top of the stack                        |
| 25          | `push`  | Pushes the value of the line under it to the stack, and skips that line          |
| 27          | `ror`   | Rotates the stack to the right: `[ 7 6 5 ]` -> `[ 5 7 6 ]`                       |

Esolangs link: https://esolangs.org/wiki/Length (go here instead, its a bit more detailed)
