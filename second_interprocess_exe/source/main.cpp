////////// Example 1

// #include <boost/interprocess/shared_memory_object.hpp>
// #include <boost/interprocess/mapped_region.hpp>
// #include <cstring>
// #include <cstdlib>
// #include <string>

// int main(int argc, char *argv[])
// {
//    using namespace boost::interprocess;

//    if(argc == 1){  //Parent process
//       //Remove shared memory on construction and destruction
//       struct shm_remove
//       {
//          shm_remove() { shared_memory_object::remove("MySharedMemory"); }
//          ~shm_remove(){ shared_memory_object::remove("MySharedMemory"); }
//       } remover;

//       // Create a shared memory object.
//       shared_memory_object shm (create_only, "MySharedMemory", read_write);

//       //Set size
//       shm.truncate(1000);

//       //Map the whole shared memory in this process
//       mapped_region region(shm, read_write);

//       //Write all the memory to 1
//       std::memset(region.get_address(), 1, region.get_size());

//       //Launch child process
//       std::string s(argv[0]); s += " child ";
//       if(0 != std::system(s.c_str()))
//          return 1;
//    }
//    else{
//       // Open already created shared memory object.
//       shared_memory_object shm (open_only, "MySharedMemory", read_only);

//       // Map the whole shared memory in this process
//       mapped_region region(shm, read_only);

//       // Check that memory was initialized to 1
//       char *mem = static_cast<char*>(region.get_address());
//       for(std::size_t i = 0; i < region.get_size(); ++i)
//          if(*mem++ != 1)
//             return 1;   // Error checking memory
//    }
//    return 0;
// }

/////// Example 2

// #include <boost/interprocess/shared_memory_object.hpp>
// #include <boost/interprocess/mapped_region.hpp>
// #include <iostream>

// using namespace boost::interprocess;

// int main()
// {
//   shared_memory_object shdmem{open_or_create, "Boost", read_write};
//   shdmem.truncate(1024);
//   mapped_region region{shdmem, read_write};
//   std::cout << std::hex << region.get_address() << '\n';
//   std::cout << std::dec << region.get_size() << '\n';
//   mapped_region region2{shdmem, read_only};
//   std::cout << std::hex << region2.get_address() << '\n';
//   std::cout << std::dec << region2.get_size() << '\n';
// }


///////// Example 3

#include <boost/interprocess/shared_memory_object.hpp>
#include <boost/interprocess/mapped_region.hpp>
#include <iostream>

using namespace boost::interprocess;

int main()
{
  shared_memory_object shdmem{open_or_create, "Boost", read_write};
  shdmem.truncate(1024);
  
  mapped_region region2{shdmem, read_write};
  int *i2 = static_cast<int*>(region2.get_address());
  std::cout << *i2 << '\n';
  // std::cin.get();
}