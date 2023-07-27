# 2. Bash Script - 10 Times "Best School" Using While Loop

## Task Description
Write a Bash script that displays the text "Best School" 10 times using a while loop.

## Usage
1. Clone the repository `alx-system_engineering-devops`.
2. Navigate to the `0x04-loops_conditions_and_parsing` directory.
3. Execute the Bash script `2-while_best_school`.

```bash
sylvain@ubuntu$ ./2-while_best_school
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
sylvain@ubuntu$
```

## File
Location: `alx-system_engineering-devops/0x04-loops_conditions_and_parsing/2-while_best_school`

---

# 3. Bash Script - 10 Times "Best School" Using Until Loop

## Task Description
Write a Bash script that displays the text "Best School" 10 times using an until loop.

## Usage
1. Clone the repository `alx-system_engineering-devops`.
2. Navigate to the `0x04-loops_conditions_and_parsing` directory.
3. Execute the Bash script `3-until_best_school`.

```bash
sylvain@ubuntu$ ./3-until_best_school
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
sylvain@ubuntu$
```

## File
Location: `alx-system_engineering-devops/0x04-loops_conditions_and_parsing/3-until_best_school`

---

# 4. Bash Script - 10 Times "Best School" and "Hi" on 9th Iteration Using While Loop and If Statement

## Task Description
Write a Bash script that displays the text "Best School" 10 times. On the 9th iteration, it should display "Hi" on a new line.

## Usage
1. Clone the repository `alx-system_engineering-devops`.
2. Navigate to the `0x04-loops_conditions_and_parsing` directory.
3. Execute the Bash script `4-if_9_say_hi`.

```bash
sylvain@ubuntu$ ./4-if_9_say_hi
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Best School
Hi
Best School
sylvain@ubuntu$
```

## File
Location: `alx-system_engineering-devops/0x04-loops_conditions_and_parsing/4-if_9_say_hi`

---

# 5. Bash Script - Loop from 1 to 10 with Conditions

## Task Description
Write a Bash script that loops from 1 to 10 and displays "bad luck" on the 4th iteration, "good luck" on the 8th iteration, and "Best School" for the other iterations.

## Usage
1. Clone the repository `alx-system_engineering-devops`.
2. Navigate to the `0x04-loops_conditions_and_parsing` directory.
3. Execute the Bash script `5-4_bad_luck_8_is_your_chance`.

```bash
sylvain@ubuntu$ ./5-4_bad_luck_8_is_your_chance
Best School
Best School
Best School
bad luck
Best School
Best School
Best School
good luck
Best School
Best School
sylvain@ubuntu$
```

## File
Location: `alx-system_engineering-devops/0x04-loops_conditions_and_parsing/5-4_bad_luck_8_is_your_chance`

---

# 6. Bash Script - Superstitious Numbers

## Task Description
Write a Bash script that displays numbers from 1 to 20 and, for specific iterations, displays additional text based on the number.

- For the 4th iteration: "bad luck from China"
- For the 9th iteration: "bad luck from Japan"
- For the 17th iteration: "bad luck from Italy"

## Usage
1. Clone the repository `alx-system_engineering-devops`.
2. Navigate to the `0x04-loops_conditions_and_parsing` directory.
3. Execute the Bash script `6-superstitious_numbers`.

```bash
sylvain@ubuntu$ ./6-superstitious_numbers
1
2
3
4
bad luck from China
5
6
7
8
9
bad luck from Japan
10
11
12
13
14
15
16
17
bad luck from Italy
18
19
20
sylvain@ubuntu$
```

## File
Location: `alx-system_engineering-devops/0x04-loops_conditions_and_parsing/6-superstitious_numbers`

---

# 7. Bash Script - Clock

## Task Description
Write a Bash script that displays the time for 12 hours and 59 minutes.

- Display hours from 0 to 12.
- Display minutes from 1 to 59.

## Usage
1. Clone the repository `alx-system_engineering-devops`.
2. Navigate to the `0x04-loops_conditions_and_parsing` directory.
3. Execute the Bash script `7-clock` and use the `head` command to display only the first 70 lines.

```bash
sylvain@ubuntu$ ./7-clock | head -n 70
Hour: 0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
Hour: 1
1
2
3
4
5
6
7
8
9
sylvain@ubuntu$
```

## File
Location: `alx-system_engineering-devops/0x04-loops_conditions_and_parsing/7-clock`

---

# 8. Bash Script - List Files After First Dash

## Task Description
Write a Bash script that displays the content of the current directory in a list format. It should display only the part of the name after the first dash.

## Usage
1. Clone the repository `alx-system_engineering-devops`.
2. Navigate to the `0x04-loops_conditions_and_parsing` directory.
3. Execute the Bash script `8-for_ls`.

```bash
sylvain@ubuntu$ ls
100-read_and_cut              1-for_best_school         6-superstitious_numbers
101-tell_the_story_of_passwd  2-while_best_school       7-clock
102-lets_parse_apache_logs    3-until_best_school       8-for_ls
103-dig_the-data              4-if_9_say_hi                  9-to_file_or_not_to_file
10-fizzbuzz                   5-4_bad