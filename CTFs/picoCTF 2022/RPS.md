# picoCTF 2022 - RPS (Binary Exploitation)

## Description

Here's a program that plays rock, paper, scissors against you. I hear something good happens if you win 5 times in a row.

Connect to the program with netcat:

```bash
$ nc saturn.picoctf.net 53865
```

The program's source code with the flag redacted can be downloaded [here](https://artifacts.picoctf.net/c/443/game-redacted.c).

## Solution

From the source code, we need to win 5 times to obtain the flag.

```c

if (play()) {
        wins++;
      } else {
        wins = 0;
      }

      if (wins >= 5) {
        puts("Congrats, here's the flag!");
        puts(flag);
      }
      ...
```

Then, we need to play to return `true` for 5 times.

The code for checking who wins are below

```c

char* hands[3] = {"rock", "paper", "scissors"};
char* loses[3] = {"paper", "scissors", "rock"};

...

int computer_turn = rand() % 3;
if (strstr(player_turn, loses[computer_turn])) {
    puts("You win! Play again?");
    return true;
  }
```

The computer choose a random number from 0 to 2 which means that the second parameter of `strstr` are "rock", "paper", or "scissors".
The function `strstr` will find the first occupance of a string and return that pointer if it exist; return null otherwise.
In order to let `strstr` always find somehting, we just need to include all possible strings as input like `rockpaperscissors`.

Do that 5 times, we have the flag. 

## Flag

`picoCTF{50M3_3X7R3M3_1UCK_B69E01B8}`
