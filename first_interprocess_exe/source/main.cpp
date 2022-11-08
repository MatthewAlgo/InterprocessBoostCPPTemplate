#include <memory.h>
#include <string>
#include <boost/interprocess/allocators/allocator.hpp>
#include <boost/interprocess/containers/vector.hpp>
#include <boost/interprocess/managed_shared_memory.hpp>
#include <boost/interprocess/shared_memory_object.hpp>
#include <iostream>

using namespace boost::interprocess;

class sharedMemoryClass {
  std::shared_ptr<shared_memory_object> shared_memory_obj;


  void debug(std::string message){
    printf("%s", message);
  }

public:
  sharedMemoryClass() {
    shared_memory_obj = std::make_shared<shared_memory_object>(create_only  // only create
                                                               ,
                                                               "shared_memory"  // name
                                                               ,
                                                               read_write  // read-write mode
    );
  }
  void read_from_shared() {
    managed_shared_memory segment(open_only, "shared_memory");
    // Create an allocator of ints that allocates ints from the managed_shared_memory.
    typedef allocator<int, managed_shared_memory::segment_manager> ShmemAllocator;
    typedef vector<int, ShmemAllocator> MyVector;
    // Initialize shared memory STL-compatible allocator
    ShmemAllocator alloc_inst(segment.get_segment_manager());
    // Construct a vector named "MyVector" in shared memory with argument alloc_inst
    MyVector *myvector = segment.find<MyVector>("MyVector").first;
    for (int i = 0; i < myvector->size(); i++) {
      std::cout << "myvector[" << i << "] = " << (*myvector)[i] << std::endl;
    }
  }

  void write_to_shared() {
    shared_memory_object shm_obj(open_only  // only create
                                 ,
                                 "shared_memory"  // name
                                 ,
                                 read_write  // read-write mode
    );
    // Set size
    shm_obj.truncate(1000);
    // Map the whole shared memory in this process
    managed_shared_memory segment(open_only, "shared_memory");
    typedef allocator<int, managed_shared_memory::segment_manager> ShmemAllocator;
    typedef vector<int, ShmemAllocator> MyVector;
    ShmemAllocator alloc_inst(segment.get_segment_manager());
    MyVector *myvector = segment.construct<MyVector>("MyVector")(alloc_inst);
    for (int i = 0; i < 100; ++i) {
      std::cout<<"pushing "<<i<<std::endl;
      myvector->push_back(i);
    }
  }

};

int main() {
  sharedMemoryClass shared_memory;
  shared_memory.write_to_shared();
  shared_memory.read_from_shared();

  std::cin.get();
  shared_memory_object::remove("shared_memory");
  return 0;
}