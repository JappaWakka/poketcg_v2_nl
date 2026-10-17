###############################################################################
# Imports
###############################################################################

from typing import List

from dataclasses import dataclass, field
import sys

###############################################################################
# Core
###############################################################################


@dataclass
class Card:
    pass


@dataclass
class PokemonCard(Card):
    pass


@dataclass
class PlayerState:
    active: PokemonCard
    bench: List[PokemonCard] = field(default_factory=list)
    hand: List[Card] = field(default_factory=list)
    deck: List[Card] = field(default_factory=list)
    discard: List[Card] = field(default_factory=list)


@dataclass
class GameState:
    player: PlayerState
    opponent: PlayerState


###############################################################################
# Entry Point
###############################################################################


def main(args: List[str]) -> int:
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
