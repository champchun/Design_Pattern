from abc import ABC, abstractmethod

from numpy import product


class Factory(ABC):
    @abstractmethod
    def factory_method(self):
        pass

    def an_operation(self) -> str:
        print("Factory: I'm getting an order. Let's make an pruduct.")
        product = self.factory_method()
        return f"Factory: made the {product.operation()}"


class AppleJuiceFactory(Factory):
    def factory_method(self):
        return AppleJuice()


class ApplePieFactory(Factory):
    def factory_method(self):
        return ApplePie()


class Product(ABC):

    @abstractmethod
    def operation(self) -> str:
        pass


class AppleJuice(Product):
    def operation(self) -> str:
        return f"Apple Juice"


class ApplePie(Product):
    def operation(self) -> str:
        return f"Apple Pie"


def client_code(factory: Factory) -> None:
    print(f"Client: I can't make anything, but I could order.")
    print(f"{factory.an_operation()}", end="")


if __name__ == "__main__":
    print("Let's make apple juice.")
    client_code(AppleJuiceFactory())
    print("\n")

    print("Let's make apple pie.")
    client_code(ApplePieFactory())
    print("\n")
