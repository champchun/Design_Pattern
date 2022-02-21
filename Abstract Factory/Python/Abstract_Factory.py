
from __future__ import annotations
from abc import ABC, abstractmethod


class AbstractFactory(ABC):
    @abstractmethod
    def create_juice(self) -> AbstractJuiceProduct:
        pass

    @abstractmethod
    def create_pie(self) -> AbstractPieProduct:
        pass


class AppleFactory(AbstractFactory):

    def create_juice(self) -> AbstractJuiceProduct:
        return AppleJuice()

    def create_pie(self) -> AbstractPieProduct:
        return ApplePie()


class PumpkinFactory(AbstractFactory):

    def create_juice(self) -> AbstractJuiceProduct:
        return PumpkinJuice()

    def create_pie(self) -> AbstractPieProduct:
        return PumpkinPie()


class AbstractPieProduct(ABC):
    @abstractmethod
    def pie_function(self) -> None:
        pass


class ApplePie(AbstractPieProduct):
    def pie_function(self) -> str:
        return "Apple pie has been made."


class PumpkinPie(AbstractPieProduct):
    def pie_function(self) -> str:
        return "Pumpkin pie has been made."


class AbstractJuiceProduct(ABC):
    @abstractmethod
    def juice_function(self) -> None:
        pass

    @abstractmethod
    def juice_and_pie_function(self, collaborator: AbstractPieProduct) -> None:
        pass


class AppleJuice(AbstractJuiceProduct):
    def juice_function(self) -> str:
        return "Apple juice has been created."

    def juice_and_pie_function(self, collaborator: AbstractPieProduct) -> str:
        result = collaborator.pie_function()
        return f'{result} And made a apple juice for you.\n{self.juice_function()}'


class PumpkinJuice(AbstractJuiceProduct):
    def juice_function(self) -> str:
        return "Pumpkin juice has been created."

    def juice_and_pie_function(self, collaborator: AbstractPieProduct) -> str:
        result = collaborator.pie_function()
        return f'{result} And we are making a pumpkin juice for you.\n{self.juice_function()}'


def client_order(factory: AbstractFactory) -> None:

    juice_product = factory.create_juice()
    pie_product = factory.create_pie()

    print(f'{juice_product.juice_and_pie_function(pie_product)}')


if __name__ == "__main__":
    print(f"Client: I want apple products")
    client_order(AppleFactory())

    print(f"")

    print(f"Client: I want Pumpkin products")
    client_order(PumpkinFactory())
