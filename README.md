# InterprocessTemplateBoost

A C++ template used for interprocess communication that builds two executables sharing a block of memory.

# Biography of Ruxi and Rusu

In the beginning there was Ruxi, a young and beautiful C++ developer who wanted to share a block of memory between two executables. Ruxi was very happy because he had found a solution, but he was very sad because he had to use a complicated template.

Then one day, Ruxi met Rusu, a young and handsome C++ developer who wanted to share a block of memory between two executables. Rusu was very happy because he had found a solution, but he was very sad because he had to use a complicated template.

Ruxi and Rusu were very sad, so they decided to create a template that would allow them to share a block of memory between two executables in a simple way.

# Usage

To use this template you have to do the following:

Create a class that inherits from the class

SharedMemory

. This class will be used to create a block of memory that will be shared between the two executables.

Create a class that inherits from the class

SharedMemoryClient

. This class will be used to access the block of memory created by the class

SharedMemory

.

Create a class that inherits from the class

SharedMemoryServer

. This class will be used to access the block of memory created by the class

SharedMemory

.

# Example

The following example shows how to use this template to share a block of memory between two executables.

The example is composed of two executables:

SharedMemoryExampleServer

: This executable creates a block of memory that will be shared with the executable

SharedMemoryExampleClient

.

SharedMemoryExampleClient

: This executable accesses the block of memory created by the executable

SharedMemoryExampleServer

.

The block of memory created by the executable SharedMemoryExampleServer is composed of two integers. The first integer is a counter that is incremented by the executable SharedMemoryExampleClient. The second integer is a flag that is used to stop the executable SharedMemoryExampleServer.

The following is the code of the class SharedMemoryExampleServer that inherits from the class SharedMemoryServer:

#include "SharedMemoryServer.h" class SharedMemoryExampleServer : public SharedMemoryServer { public: SharedMemoryExampleServer ( const std :: string & name ) : SharedMemoryServer ( name ) { } void run ( ) { while ( true ) { // If the flag is set to 1, then the server stops if ( getFlag ( ) == 1 ) { break ; } // Increments the counter int counter = getCounter