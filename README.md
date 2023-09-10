# Name-scroller
"Name Scroller." 🚀 on Basys3 board

Project Description:

In this Verilog module, I've designed a captivating project that brings dynamic scrolling text on 7 segment displays to the Basys-3 FPGA board. The module enables you to display names or any custom messages in a visually appealing way.

Verilog modules:
1.Top module (for switches assigning)
2.BCD module for 7 segment displays
3. Slow clock modules for 1 Hz & 100 Hz frequencies
4.scrolling messages logic 0,1,2 modules

Key Features:

Scrolling Text: The module smoothly scrolls names("HI","IIITS","ECE") or messages across the Basys-3 7 Segment displays.

Customizable: Easily customize the text you want to display, making it ideal for showcasing various projects or announcements.

Eye-catching: Grab attention with this eye-catching display that adds a professional touch to your projects.

Inputs:

"clk": Clock signal for precise synchronization.

"text_input": Input for your name or message.

Outputs:

"display_output": The scrolling text displayed on Basys-3 7segment displays.

How it Works:

` The module in default show's "HI" message.
` If we turn on the switch 1 it shows "IITS" message.
` If we turn on the switch 2 it shows "ECE" message.
` A push button is used to reset the scrolling text to its initial positions.

Why it Matters:

This project not only demonstrates my Verilog skills but also showcases the creative and engaging ways technology can be utilized. It's a small step towards making FPGA technology more accessible and user-friendly.
