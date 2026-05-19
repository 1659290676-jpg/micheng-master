/** 格子归属：中立 / 玩家（绿） / 敌人（红） */
export enum TileFaction {
  Neutral = 0,
  Player = 1,
  Enemy = 2,
}

export function oppositeFaction(f: TileFaction): TileFaction {
  if (f === TileFaction.Player) return TileFaction.Enemy;
  if (f === TileFaction.Enemy) return TileFaction.Player;
  return TileFaction.Neutral;
}
