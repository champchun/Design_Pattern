from __future__ import annotations
from abc import ABC, abstractmethod
from distutils.command.build import build
from typing import Any


class TempleBuilder(ABC):

    @abstractmethod
    def __init__(self):
        pass

    @property
    @abstractmethod
    def temple(self) -> None:
        pass

    @abstractmethod
    def reset(self):
        pass

    @abstractmethod
    def build_door(self):
        pass

    @abstractmethod
    def build_walls(self):
        pass

    @abstractmethod
    def build_roof(self):
        pass

    @abstractmethod
    def put_on_the_god(self):
        pass


class MoneyGodTempleBuilder(TempleBuilder):

    def __init__(self) -> None:
        self.reset()

    def reset(self):
        self._temple = MoneyGodTemple()

    @property
    def temple(self) -> MoneyGodTemple:
        temple = self._temple
        self.reset()
        return temple

    def build_door(self):
        self._temple.add(f'Installed the door which painted Door God.')

    def build_walls(self):
        self._temple.add(f'Installed the carving stone wall.')

    def build_roof(self):
        self._temple.add(f'Installed the gradon roof.')

    def put_on_the_god(self):
        self._temple.add(f'Puted on the Money God.')


class MoneyGodTemple():
    def __init__(self) -> None:
        self.parts = []

    def add(self, part: Any) -> None:
        self.parts.append(part)

    def list_parts(self) -> None:
        print(f"Temple parts: {', '.join(self.parts)}", end="")


class MazuGodTempleBuilder(TempleBuilder):

    def __init__(self) -> None:
        self.reset()

    def reset(self):
        self._temple = MazuGodTemple()

    @property
    def temple(self) -> MazuGodTemple:
        temple = self._temple
        self.reset()
        return temple

    def build_door(self):
        self._temple.add(
            f'Installed the door which painted The Eyes and The Ears.')

    def build_walls(self):
        self._temple.add(f'Installed the carving stone wall.')

    def build_roof(self):
        self._temple.add(f'Installed the gradon roof.')

    def put_on_the_god(self):
        self._temple.add(f'Puted on the Mazu.')


class MazuGodTemple():
    def __init__(self) -> None:
        self.parts = []

    def add(self, part: Any) -> None:
        self.parts.append(part)

    def list_parts(self) -> None:
        print(f"Temple parts: {', '.join(self.parts)}", end="")


class Director:

    def __init__(self) -> None:
        self._temple_builder = None

    @property
    def temple_builder(self) -> TempleBuilder:
        return self._temple_builder

    @temple_builder.setter
    def temple_builder(self, builder: TempleBuilder) -> None:
        self._temple_builder = builder

    def builder_empty_temple(self) -> None:
        self._temple_builder.build_walls()
        self._temple_builder.build_door()
        self._temple_builder.build_roof()

    def builder_full_temple(self) -> None:
        self._temple_builder.build_walls()
        self._temple_builder.build_door()
        self._temple_builder.build_roof()
        self._temple_builder.put_on_the_god()


if __name__ == "__main__":

    director = Director()
    builder = MoneyGodTempleBuilder()
    director.temple_builder = builder

    print(f'Standard basic Money god temple:')
    director.builder_empty_temple()
    builder.temple.list_parts()
    print(f"{builder.temple.parts}")
    print("Standard full Money god temple: ")
    director.builder_full_temple()
    builder.temple.list_parts()
    print(f'')

    builder = MazuGodTempleBuilder()
    director.temple_builder = builder

    print(f'Standard basic Mazu temple:')
    director.builder_empty_temple()
    builder.temple.list_parts()
    print("")
    print("Standard full Mazu temple: ")
    director.builder_full_temple()
    builder.temple.list_parts()
    print(f'')
