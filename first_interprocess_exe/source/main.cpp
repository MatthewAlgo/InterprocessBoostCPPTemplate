#include <boost/interprocess/shared_memory_object.hpp>
#include <boost/interprocess/mapped_region.hpp>
#include <iostream>
#include <memory>


using namespace boost::interprocess;

class memoryManipulation {
  std::shared_ptr<shared_memory_object> shared_memory_obj;
  std::shared_ptr<mapped_region> region;

  void debug(std::string message){
    printf("%s", message);
  }
};

int main()
{
  shared_memory_object shdmem{open_or_create, "Boost", read_write}; // open or create shared memory
  shdmem.truncate(1024); // 1KB of memory for the shared memory object
  mapped_region region2{shdmem, read_write}; // map the whole shared memory in this process

  // Change values inside the shared memory
  int *i2 = static_cast<int*>(region2.get_address());
  for (*i2 = 0; *i2 < INT16_MAX; ++*i2 ){
    if(*i2 % 1000 == 0){
      *i2 = 0;
    }
  }
  std::cin.get(); 
  // std::cout << *i2 << '\n';
}