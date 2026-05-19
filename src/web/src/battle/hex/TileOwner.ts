/** playerA = 绿方（下方），playerB = 红方（上方） */
export type TileOwner = 'neutral' | 'playerA' | 'playerB';

export const OWNER_COLORS: Record<TileOwner, number> = {
  neutral: 0x6b7280,
  playerA: 0x22c55e,
  playerB: 0xef4444,
};

export const OWNER_TEXTURE: Record<TileOwner, string> = {
  neutral: 'tile_neutral',
  playerA: 'tile_green',
  playerB: 'tile_red',
};
