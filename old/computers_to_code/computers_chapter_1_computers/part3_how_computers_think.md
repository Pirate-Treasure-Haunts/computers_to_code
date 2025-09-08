# How Computers Think (Programming & Logic)  
*A Frenly Crash Course, Part 3*

---

## What's Inside

- What are programming languages?
- How do computers “follow” instructions?
- Variables, memory, and thinking like a computer
- Logic, decision-making, and control flow (if, loops, etc)
- How code turns into real-world action
- Frenfacts, sidebars, and confidence boosts!

---

## 1. What’s a Programming Language, Really?

A programming language is just a *way to talk to a computer*.  
It’s how you tell it “do this, then that, and if something changes, do something else.”  
Some languages are chill and easy (Python); others are strict and close to the metal (C, assembly).

**Analogy:**  
A language is like a recipe style. Some cookbooks (languages) say “throw in a handful of flour,” others say “add exactly 47 grams at 23.5°C.”

#### 💡 Fren Fact  
Programming languages aren’t magic. They’re made by people, for people (and their weird needs).

---

## 2. Instructions: The Building Blocks

Computers do **exactly** what you say (even if it’s not what you *meant*).  
Every program is a *list of instructions*—steps the CPU runs, one after another.

### Example:  
- “Add 2 + 2”
- “Store the result”
- “If result is 4, show a smiley face”

#### Analogy:  
Imagine a *super-literal assistant* who never improvises.

---

### Blueprint Diagram: “Instruction Flow”

![Diagram: Instruction Flow](instruction_flow.svg)

---

## 3. Variables: The Computer’s Memory

**Variables** are named boxes where a program stores data (“the score,” “your name,” “the answer to life”).  
Think of them as labeled jars or sticky notes on a whiteboard.

- You can change them anytime (“score = score + 1”).
- The CPU uses *registers* (tiny fast memory) for the most urgent info.
- Everything else is in RAM or storage.

#### 🗃️ Fren Fact  
Variable names are for *you*. The computer doesn’t care if you call it “banana,” “x,” or “totalScore”—as long as it follows the rules.

---

### Blueprint Diagram: Variables and Memory

![Diagram: Variables and Memory](variables_memory.svg)

---

## 4. Logic and Flow: How Decisions Happen

**Logic** is how a computer “decides” what to do:
- **If** something is true, do this (if you’re hungry, eat)
- **Else**, do that (otherwise, nap)
- **Loops** let computers repeat things (while battery > 0: keep going)

**Control flow** = the path a program follows, step by step.

#### Analogy:  
Choose-your-own-adventure books:  
“If you open the door, go to page 45. If you run away, go to page 88.”

---

### Blueprint Diagram: Program Control Flow

![Diagram: Control Flow](control_flow.svg)

---

#### 🔄 Fren Fact  
Loops can run *millions* of times a second. Computers don’t get bored—they *love* repetition.

---

## 5. From Code to Action: The Journey

How does your code become something the computer “does”?
1. **Write code** (high-level language)
2. **Translate code** (compiler or interpreter)
3. **Run machine instructions** (what the CPU actually understands)
4. **Use registers, memory, and logic to do work**

**Diagram:**  
Your code → Translator → Machine code → CPU runs it!

#### 🚦 Fren Fact  
Every button you click, every pixel you see—*all of it* starts as simple instructions moving through this pipeline.

---

## Key Takeaways

- Programming is just telling the computer what to do—in a way it can’t misunderstand.
- Instructions, variables, and logic are the building blocks of every program.
- Computers are fast, literal, and can “branch” and “loop” endlessly.
- All code is turned into simple steps for the CPU, which runs them one at a time.
- If you remember one thing: **Computers think in instructions, one step at a time, but *super fast* and without ever complaining!**

---

## Next Up:  
**Under the Hood (Architecture, Assembly, and Modern Tricks)**  
Peek inside the CPU itself and see how silicon turns code into reality!



<svg width="400" height="110" viewBox="0 0 400 110" xmlns="http://www.w3.org/2000/svg">
  <rect width="400" height="110" fill="#0d2240"/>
  <!-- Instruction boxes -->
  <rect x="30" y="30" width="80" height="50" rx="8" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="70" y="60" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">Step 1</text>
  <rect x="150" y="30" width="80" height="50" rx="8" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="190" y="60" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">Step 2</text>
  <rect x="270" y="30" width="80" height="50" rx="8" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="310" y="60" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">Step 3</text>
  <!-- Arrows -->
  <line x1="110" y1="55" x2="150" y2="55" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <line x1="230" y1="55" x2="270" y2="55" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <!-- Arrowhead -->
  <defs>
    <marker id="arrow" markerWidth="6" markerHeight="6" refX="5" refY="3" orient="auto" markerUnits="strokeWidth">
      <path d="M0,0 L0,6 L6,3 z" fill="#7EC3FF"/>
    </marker>
  </defs>
  <!-- Blueprint border -->
  <rect x="10" y="10" width="380" height="90" rx="12" fill="none" stroke="#395c84" stroke-width="2" stroke-dasharray="8,4"/>
</svg>



<svg width="400" height="160" viewBox="0 0 400 160" xmlns="http://www.w3.org/2000/svg">
  <rect width="400" height="160" fill="#0d2240"/>
  <!-- Variable boxes -->
  <rect x="60" y="30" width="80" height="35" rx="7" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="100" y="53" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">score</text>
  <rect x="170" y="30" width="80" height="35" rx="7" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="210" y="53" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">name</text>
  <rect x="280" y="30" width="80" height="35" rx="7" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="320" y="53" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">lives</text>
  <!-- Memory "shelf" -->
  <rect x="40" y="85" width="320" height="40" rx="10" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="200" y="108" fill="#7EC3FF" font-size="15" font-family="monospace" text-anchor="middle">Memory (RAM)</text>
  <!-- Arrows from variables to memory -->
  <line x1="100" y1="65" x2="100" y2="85" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <line x1="210" y1="65" x2="210" y2="85" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <line x1="320" y1="65" x2="320" y2="85" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <!-- Arrowhead marker -->
  <defs>
    <marker id="arrow" markerWidth="6" markerHeight="6" refX="5" refY="3" orient="auto" markerUnits="strokeWidth">
      <path d="M0,0 L0,6 L6,3 z" fill="#7EC3FF"/>
    </marker>
  </defs>
  <!-- Blueprint border -->
  <rect x="10" y="10" width="380" height="140" rx="13" fill="none" stroke="#395c84" stroke-width="2" stroke-dasharray="8,4"/>
</svg>




<svg width="440" height="210" viewBox="0 0 440 210" xmlns="http://www.w3.org/2000/svg">
  <rect width="440" height="210" fill="#0d2240"/>
  <!-- Start box -->
  <rect x="45" y="90" width="70" height="35" rx="7" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="80" y="112" fill="#7EC3FF" font-size="14" font-family="monospace" text-anchor="middle">Start</text>
  <!-- If/decision -->
  <rect x="145" y="80" width="90" height="55" rx="11" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="190" y="110" fill="#7EC3FF" font-size="14" font-family="monospace" text-anchor="middle">If (X?)</text>
  <!-- True path -->
  <rect x="265" y="40" width="90" height="35" rx="7" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="310" y="62" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">Do A</text>
  <!-- False path -->
  <rect x="265" y="140" width="90" height="35" rx="7" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="310" y="162" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">Do B</text>
  <!-- Merge to End -->
  <rect x="375" y="90" width="60" height="35" rx="7" fill="#19386b" stroke="#7EC3FF" stroke-width="2"/>
  <text x="405" y="112" fill="#7EC3FF" font-size="13" font-family="monospace" text-anchor="middle">End</text>
  <!-- Arrows: Start -> If -->
  <line x1="115" y1="108" x2="145" y2="108" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <!-- If True -> Do A -->
  <line x1="235" y1="92" x2="265" y2="57" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <!-- If False -> Do B -->
  <line x1="235" y1="118" x2="265" y2="157" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <!-- Do A -> End -->
  <line x1="355" y1="57" x2="375" y2="107" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <!-- Do B -> End -->
  <line x1="355" y1="157" x2="375" y2="107" stroke="#7EC3FF" stroke-width="2" marker-end="url(#arrow)"/>
  <!-- Arrowhead marker -->
  <defs>
    <marker id="arrow" markerWidth="6" markerHeight="6" refX="5" refY="3" orient="auto" markerUnits="strokeWidth">
      <path d="M0,0 L0,6 L6,3 z" fill="#7EC3FF"/>
    </marker>
  </defs>
  <!-- Blueprint border -->
  <rect x="10" y="10" width="420" height="190" rx="15" fill="none" stroke="#395c84" stroke-width="2" stroke-dasharray="8,4"/>
</svg>




