
Single-Port RAM
A Single-Port RAM (Random Access Memory) is a fundamental memory architecture used in digital systems, providing a simple and efficient way to store and retrieve data. This project demonstrates the design and implementation of a single-port RAM using Verilog.

Features
Single Access Point: Allows either a read or write operation at a given clock cycle.
Configurable Depth and Width: Easily scalable to different sizes of memory based on design requirements.
Synchronous Operation: Read and write operations are synchronized with the clock signal.
Efficient Memory Usage: Optimized design for low-resource applications.
Project Highlights
Inputs:

Address: Specifies the memory location to read from or write to.
Data Input: The data to be written into the memory.
Write Enable: Control signal to determine whether a write operation is performed.
Output:

Data Output: The data read from the specified memory location.
Operation Modes:

Write Mode: Data is stored at the given address when Write Enable is active.
Read Mode: Data is retrieved from the given address when Write Enable is inactive.
Memory Initialization:

Option to pre-load memory with specific values or initialize it to zero.
Workflow
Write Operation:

Enable the Write Enable signal.
Provide the address and data input.
On the next clock edge, the data is stored in the specified memory location.
Read Operation:

Disable the Write Enable signal.
Provide the address of the desired memory location.
On the next clock edge, the data is retrieved and output.
