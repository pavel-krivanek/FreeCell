# FreeCell
Based on the old Squeak version

### About

The objective of FreeCell is to move all of the cards to the four "home cells" in the upper right corner. Each home cell will hold one suit and must be filled sequentially starting with the Ace.

There are four "free cells" in the upper left corner that can each hold one card. Cards can be moved from the bottom of a stack to a free cell or to another stack.

When moving a card to another stack, it must have a value that is one less than the exposed card and of a different color.

### How to load

```
Metacello new
  baseline: 'FreeCell';
  repository: 'github://pavel-krivanek/FreeCell/src';
  load.
```

### How to run

Copy maps into the image directory and then evaluate:

```
FreeCell open.
```
