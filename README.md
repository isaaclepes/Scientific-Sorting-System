This is a Heavliy modified fork of Magic Sorting System to fit the specific needs of my own server.  I have renamed this version to Scientific Sorting System, because it is going to get technical.

How to build the drop areas

**Items used:**
- Amethyst Block
- Target Block
- Coal Block
- Furnace
- Blast Furnace
- Smoker

Block placement configurations for drop areas.<br />
Note: Sandstone can be substituted for any other bloock.

**Sorting Pad.**<br /><br />
![image](https://user-images.githubusercontent.com/54421422/126387916-37d64f4b-f2a1-41fe-8c80-5d962327189f.png)<br />
![image](https://user-images.githubusercontent.com/54421422/126388878-1423ec14-d181-4301-9f35-140fb8d3130e.png)
<br /><br />
**Super Smelter/Cooker support. Pad configuration is displayed behind the cookers.**<br /><br />
![image](https://user-images.githubusercontent.com/54421422/126388259-f1a21d56-126b-4dec-85eb-bcbc22713eef.png)
<br /><br />
Fuels will accept any items that are burnable.<br />
Furnaces / Smelter / Smoker will only accept items that can be processed by their particular varient<br />
Sort Target will only accept items obtainable in survivial mode (Note, I may have overlooked a couple creative inventory items.  Please let me know.)<br /><br />

**Use /function sss:kit to receive named target blocks needed to set item frame tags.
**
See this video for a demonstration: https://youtu.be/hL7xJ0zZEuI  (Apologies, I didn't have a microphone when I made this video.)

Place a target block in an item frame and the frame will become a target based on the name of the target block.  For example, "Sort Target" will tag an item frame as the destination for sorting. Remove the target block from the frame and replace with the item you wish to be deposited at this item frame.

The target block only needs to be installed for 5 seconds. Any other targeting tags are removed when you switch command blocks.

After 5 seconds, you may remove the target block.  Removing the command block is only required for Sort Targets, becuase you need to place the item to sort in them after tagging.

**Shulkerbox loading modules**.<br /><br />
![image](https://user-images.githubusercontent.com/54421422/126388406-acfcabb2-2238-4206-8416-179c7c521196.png)<br /><br />
These can be placed facing North, South, East, or West and are designed to be tileable.
The target item frames are on the upper hoppers.
The item frames near the comparators are tagged with 'shulker target'
Chests, planks, and slabs can be swapped out as desired.

The datapack checks for the position and power level of the comparitor.  When at maximum power, because the shulker box is full, a redstone block is placed to trigger the piston above.  This shows image shows this occuring with piston missing.<br /><br />
![image](https://user-images.githubusercontent.com/54421422/126388603-11f1ce07-83a3-4dad-b7f7-8376524e638d.png)<br /><br />
And this image shows the piston pushing the shulker box into the hopper<br /><br />
  ![image](https://user-images.githubusercontent.com/54421422/126388811-ae7ab629-81ad-44d5-84ab-124f3a7b4c18.png)<br /><br />

Brown Shulker Boxes named "Warehouse Crate" are automatically generated in front of the comparator if the block is air.  Empty Warehouse Crates are removed from the game if dropped as an item.
  
 

Changes:
Almost complete rewrite of Magic Sorting System

Now sorts 1 to 1, meaning that each item looks for an item frame containing itself.


Target item frames must have a tag as well as the item for matching to allow players to use item frames without conflict.
Multiple target frames for the same item behave as previously, they split between them using sort=random.

Removed the lapis on gold pad, added:

  target block on barrier - Item sorters
  
  furnace on barrier - For super furnaces
  
  blast furnace on barrier - for super smelters
  
  smoker on barrier - for super smokers
  
  coalblock on barrier - Fuel for 'super' smoker/furnace/blast furnace
  
Added functionality for shulker box loader.  Not required for sorting, but together can
make a system that stores filled shulker boxes

Added a catch-all target option

Added a feature that will pull any item in loaded chunks that is over 2 minutes old.  This can be used to prevent items on the ground from accumulating and lagging the server without losing those items.

Magic Sorting System License and Permissions Notice:

**The MIT License (MIT)**

*Copyright (c) 2018 - 2020 Joseph Huckaby*

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

NOT AN OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG.
