
#include <memory>

struct SomeStruct {
int x;
int y;
};

int main(int, char **) {
  std::unique_ptr<SomeStruct> ptr{new SomeStruct()};
  ptr.reset(nullptr);

  return 0;
}
