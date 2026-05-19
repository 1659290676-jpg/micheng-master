export interface CardRow {
  id: string;
  name: string;
}

export interface CardsFile {
  cards: CardRow[];
}

export interface DeckStarterFile {
  cardIds: string[];
}
