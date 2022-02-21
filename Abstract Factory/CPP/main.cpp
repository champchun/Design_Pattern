#include <iostream>

class AbstractJuiceProduct {
public:
  virtual ~AbstractJuiceProduct(){};
  virtual std::string juice_function() const = 0;
};

class AppleJuice : public AbstractJuiceProduct {
public:
  std::string juice_function() const override {
    return "Apple juice has been created.";
  }
};

class PumpkinJuice : public AbstractJuiceProduct {
public:
  std::string juice_function() const override {
    return "Pumpkin juice has been created.";
  }
};

class AbstractPieProduct {
public:
  virtual ~AbstractPieProduct(){};
  virtual std::string pie_function() const = 0;
};

class ApplePie : public AbstractPieProduct {
public:
  std::string pie_function() const override {
    return "Apple pie has been created.";
  }
};

class PumpkinPie : public AbstractPieProduct {
public:
  std::string pie_function() const override {
    return "Pumpkin pie has been created.";
  }
};
class AbstractFactory {
public:
  virtual ~AbstractFactory(){};
  virtual AbstractJuiceProduct *create_juice() const = 0;
  virtual AbstractPieProduct *create_pie() const = 0;
};

class AppleFactory : public AbstractFactory {
public:
  AbstractJuiceProduct *create_juice() const override {
    return new AppleJuice();
  }

  AbstractPieProduct *create_pie() const override { return new ApplePie(); }
};

class PumpkinFactory : public AbstractFactory {
public:
  AbstractJuiceProduct *create_juice() const override {
    return new PumpkinJuice();
  }

  AbstractPieProduct *create_pie() const override { return new PumpkinPie(); }
};

void client_order(const AbstractFactory &factory) {
  const AbstractJuiceProduct *juice = factory.create_juice();
  const AbstractPieProduct *pie = factory.create_pie();

  std::cout << juice->juice_function() << std::endl;
  std::cout << pie->pie_function() << std::endl;

  delete juice;
  delete pie;
}

int main() {
  std::cout << "Client: I want apple products." << std::endl;
  AppleFactory *apple_factory = new AppleFactory();
  client_order(*apple_factory);
  delete apple_factory;

  std::cout << "Client: I want pumpkin products." << std::endl;
  PumpkinFactory *pumpkin_factory = new PumpkinFactory();
  client_order(*pumpkin_factory);
  delete pumpkin_factory;

  return 0;
}