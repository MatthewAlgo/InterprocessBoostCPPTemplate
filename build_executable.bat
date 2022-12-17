cmake -S ./first_interprocess_exe -B build/build_firstinterprocess_exe
cmake --build build/build_firstinterprocess_exe --config Release

cmake -S ./second_interprocess_exe -B build/build_secondinterprocess_exe
cmake --build build/build_secondinterprocess_exe --config Release