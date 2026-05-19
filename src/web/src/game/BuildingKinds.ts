/** 四大类建筑（GDD） */
export type BuildingKind =
  | 'lord_base'
  | 'gold_mine'
  | 'arrow_tower'
  | 'aoe_tower'
  | 'barracks_melee'
  | 'barracks_ranged'
  | 'barracks_flying'
  | 'wall';

export type UnitKind = 'melee' | 'ranged' | 'flying' | 'heavy' | 'siege';

export const BUILDING_TEXTURE: Record<BuildingKind, string> = {
  lord_base: 'ent_lord_base',
  gold_mine: 'ent_gold_mine',
  arrow_tower: 'ent_arrow_tower',
  aoe_tower: 'ent_aoe_tower',
  barracks_melee: 'ent_barracks_melee',
  barracks_ranged: 'ent_barracks_ranged',
  barracks_flying: 'ent_barracks_flying',
  wall: 'ent_wall',
};

export const UNIT_TEXTURE: Record<UnitKind, { player: string; enemy: string }> = {
  melee: { player: 'unit_melee_p', enemy: 'unit_melee_e' },
  ranged: { player: 'unit_ranged_p', enemy: 'unit_ranged_e' },
  flying: { player: 'unit_flying_p', enemy: 'unit_flying_e' },
  heavy: { player: 'unit_heavy_p', enemy: 'unit_heavy_e' },
  siege: { player: 'unit_siege_p', enemy: 'unit_siege_e' },
};
