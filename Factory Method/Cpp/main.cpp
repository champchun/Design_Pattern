#include <iostream>

class Product {
public:
  virtual ~Product(){};
  virtual std::string Operation() const = 0;
};
class AppleJuice : public Product {
public:
  std::string Operation() const override { return "{Made an Apple Juice}"; }
};
class ApplePie : public Product {
public:
  std::string Operation() const override { return "{Made an Apple Pie}"; }
};

class Factory {
public:
  virtual ~Factory(){};
  virtual Product *FactoryMethon() const = 0;
  std::string AnOperator() const {
    Product *product = this->FactoryMethon();
    std::string result =
        "Factory: I got an order, then I do " + product->Operation();
    delete product;
    return result;
  }
};

class AppleJuiceFactory : public Factory {
public:
  Product *FactoryMethon() const override { return new AppleJuice(); }
};

class ApplePieFactory : public Factory {
public:
  Product *FactoryMethon() const override { return new ApplePie(); }
};

void ClientApplication(const Factory &factory) {
  std::cout << "Client: I can't make anything, but I could order.\n"
            << factory.AnOperator() << std::endl;
};

int main(int argc, const char **argv) {
  std::cout << "Let's make an apple juice!" << std::endl;
  Factory *appleJuiceFactory = new AppleJuiceFactory();
  ClientApplication(*appleJuiceFactory);

  std::cout << std::endl;

  std::cout << "Let's make an apple pie!" << std::endl;
  Factory *applePieFactory = new ApplePieFactory();
  ClientApplication(*applePieFactory);
  return 0;
}