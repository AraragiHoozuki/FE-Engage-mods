# Engage Enums

## Skill

### Cycle & Life

skill duration, after 《Life》 times of 《Cycle》, skill expires.

```csharp
public enum SkillData.Cycles
{
    None = 0,
    Map = 1,
    PhaseBefore = 2,
    PhaseAfter = 3,
    Fixed = 4,
    Engaged = 5,
    Battled = 6,
    BattledOf = 7, //Battle Offense (Initiating a battle)
    BattledDf = 8, //Battle Defense
}
```

### Timing

```csharp
public enum SkillData.Timings
{
    None = 0,
    Always = 1,
    BattleBefore = 2,
    BattleDetail = 3,
    BattleInvoke = 4,
    BattleStart = 5,
    OrderStart = 6,
    ActionStart = 7,
    AttackStart = 8,
    AttackBranch = 9,
    HitBefore = 10,
    HitAfter = 11,
    HitAffect = 12,
    AttackEnd = 13,
    ActionEnd = 14,
    OrderEnd = 15,
    BattleEnd = 16,
    BattleResult = 17,
    BattleAfter = 18,
    Around = 19,
    Support = 20,
    BattleCommand = 21,
    ActionCommand = 22,
    OverlapCommand = 23,
    SupportCommand = 24,
    FixedNone = 25,
    FixedDone = 26,
    PhaseStart = 27,
}
```

### Target

```csharp
public enum SkillData.Targets
{
    Target = 0,
    Enemy = 1,
    Friend = 2,
    Destroy = 3,
    Pierce = 4,
    Range = 5,
    Around = 6,
    Overlap = 7,
}
```

### Frequency

```csharp
public enum SkillData.Frequencies
{
    Every = 1,
    First = 2,
    Last = 4,
    Mask = 7,
}
```

### Stand

```csharp
public enum SkillData.Stands
{
    None = 0,
    Offence = 1, //Skill activated when initiate a battle
    Defence = 2, // ------------------- enemy initiates----------
}
```

### Act

string array separated by ";". Every 《ActName》 will be 《ActOperation》 by 《ActValue》.

Eg.

- ActNames: 相手の威力;
  
- ActOperations: -;
  
- ActValues: 20;
  

This means that Opponent's power minus 20 (during battle).

### Around

works like Act, but will affect units whin X spaces.

```csharp
public enum SkillData.AroundCenters
{
    None = 0,
    Self = 1,
    Target = 2,
    Link = 3,
}


public enum SkillData.AroundTargets
{
    None = 0,
    Friend = 1,
    Enemy = 2,
    Both = 3,
}
```

AroundName, Operation and Value work like Act.

### HorseSkill, CovertSkill etc.

Eg. HorseSkill: SID\_XXX, skill will be replaced by SID\_XXX when unit cabalgate a horse.

### Give Skill

```csharp
public enum SkillData.GiveTargets
{
    Target = 0,
    Self = 1,
    Chain = 2,
    Around = 3,
    Dance = 4,
}
```

### State

```csharp
public enum SkillData.States
{
    None = 0,
    Poison = 1,
    DeadlyPoison = 2,
    SeverePoison = 4,
    Heal = 8,
    Sleep = 16,
    Silence = 32,
    Charm = 64,
    Confusion = 128,
    Freeze = 256,
    Weakness = 512,
    Stun = 1024,
    Interact = 2048,
    Decoy = 4096,
    NotEnhance = 8192,
    Enhance = 65536,
    Immovable = 131072,
    NotMove = 262144,
    NotWeaponWeight = 524288,
    NotChainAttacked = 1048576,
    IgnoreDebug = -2147483648,
    PoisonMask = 7,
}
```

### Range

- RangeI: Inner range
  
- RangeO: Outer range
  
- RangeAdd, RangeTarget: Targeted weapen type's range + 《RangeAdd》, effect area + 《RangeExtend》
  

### Flag

bitmask flag

```csharp
public enum SkillData.Flags
{
    Invisible = 1,
    EngageAttack = 2,
    EngageCharge = 4,
    EngageLink = 8,
    EngageWait = 16,
    EngageSummon = 32,
    IgnoreEngageAttacking = 64,
    IgnoreNoEngageAttacking = 128,
    EnableChaining = 256,
    EnableDestory = 512,
    EnableCannon = 1024,
    EnableRod = 2048,
    IgnoreAlone = 4096,
    IgnoreMultiAttacking = 8192,
    IgnoreTraining = 16384,
    IgnoreTraial = 32768,
    IgnoreSimulation = 65536,
    ExclusiveDance = 131072,
    RevengeAutoEquip = 262144,
    SwapOrder = 524288,
    InterruptOrder = 1048576,
    ContinueBattle = 2097152,
    ForceLateOrder = 4194304,
    EachSupport = 8388608,
    Reactable = 16777216,
    Remagicable = 33554432,
    BeforeMove = 67108864,
    AllowChainAttack = 134217728,
    AllowChainGuard = 268435456,
    AllowEngageGuard = 536870912,
    ForceChainAttack = 1073741824,
    JoinChainAttack = 2147483648,
    RangeReliance = 4294967296,
    PickupReliance = 8589934592,
    MoveCostFree = 17179869184,
    MoveEnemyPass = 34359738368,
    ResetDisorder = 68719476736,
    ItemHealAround = 137438953472,
    ItemHealGive = 274877906944,
    SelfHealRod = 549755813888,
    OnlyRecvoerRod = 1099511627776,
    DecayEnhance = 2199023255552,
    SubEngageCountLimit = 4398046511104,
    ReverseCount = 8796093022208,
    ReCooking = 17592186044416,
    BasisSkill = 35184372088832,
    Unstoppable = 70368744177664,
    HideChangeGod = 140737488355328,
    OverExpChange = 281474976710656,
    MoveFly = 562949953421312,
    ViewRestriction = 1125899906842624,
    HasIconBmap = 9007199254740992,
    HasContract = 18014398509481984,
    HauntChainAttack = 36028797018963968,
    HasRootCommand = 72057594037927936,
    HasZOC = 144115188075855872,
    HasWork = 288230376151711744,
    HasVision = 576460752303423488,
    NotCondition = 1152921504606846976,
    HasCondition = 2305843009213693952,
    HasEnhance = 4611686018427387904,
    HasRangeTarget = -9223372036854775808,
    IgnoreMask = 127168,
}
```

## Items

### Use Type

```csharp
public enum ItemData.UseTypes
{
    None = 0,
    Attack = 1,
    Heal = 2,
    RestHeal = 3,
    Revive = 4,
    Warp = 5,
    Rescue = 6,
    EngageAdd = 7,
    Rewarp = 8,
    Freeze = 9,
    Sleep = 10,
    Silence = 11,
    Charm = 12,
    Berserk = 13,
    Weakness = 14,
    Again = 15,
    Torch = 16,
    Food = 17,
    Rest = 18,
    SightUp = 19,
    WeaponLevelUp = 20,
    GrowUp = 21,
    Enhance = 22,
    CCMaster = 23,
    CCChange = 24,
    CCExtra = 25,
    Creation = 26,
    Draw = 27,
    GainExp = 28,
    Stun = 29,
    Detox = 30,
    GiveSkill = 31,
    Foodstuff = 32,
    Gift = 33,
    Material = 34,
    FishingRod = 35,
    Bless = 36,
    BlessRest = 37,
    BlessPlus = 38,
    BlessRestPlus = 39,
    CCEnchant = 40,
    CCGunner = 41,
    GainSkillPoint = 42,
}
```

### Item Kinds

```csharp
public enum ItemData.Kinds
{
    None = 0,
    Sword = 1,
    Lance = 2,
    Axe = 3,
    Bow = 4,
    Dagger = 5,
    Magic = 6,
    Rod = 7,
    Fist = 8,
    Special = 9,
    Tool = 10,
    Shield = 11,
    Accessory = 12,
    Precious = 13,
    RefineIron = 14,
    RefineSteel = 15,
    RefineSilver = 16,
    PieceOfBond = 17,
    Gold = 18,
    Num = 19,
    WeaponNum = 10,
}
```

### Rod Types

```csharp
public enum ItemData.RodTypes
{
    None = 0;
    Basic = 1;
    Heal = 2;
    Interference = 3;
}
```

### Add Targets

```csharp
public enum ItemData.AddTargets
{
    None = 0;
    Self = 1;
    Around = 2;
    Whole = 3;
}
```

### Item Flags

```csharp
public enum ItemData.Flags
{
    Rarity = 1,
    NotTrade = 2,
    CanUse = 4,
    OnlyChapter = 8,
    OnlyEnemy = 16,
    OnlyMale = 32,
    OnlyFemale = 64,
    Engage = 128,
    IgnoreWeaponLevel = 256,
    Unpublic = 512,
    NotEntrust = 1024,
    InvertInteract = 2048,
    Download = 4096,
    KeyDoor = 8192,
    KeyTreasureBox = 16384,
    AIUnequipable = 32768,
    ReverseAttribute = 65536,
    LunchBox = 131072,
    SimpleHelp = 262144,
    RangeTarget = 524288,
    IgnoreCombat = 1048576,
    ForcedCombat = 2097152,
    Bless = 16777216,
    Breath = 33554432,
    Dragon = 67108864,
    Bullet = 134217728,
}
```

## Person

### Country

```csharp
public enum PersonData.Country
{
	// Fields
	Free = 0,
	Lithos = 1,
	Filene = 2,
	Brodia = 3,
	Ircion = 4,
	Solum = 5,
	Gradlon = 6,
}
```

### ExistDieTiming

```csharp
public enum PersonData.Timing
{
	None = 0,
	Begin = 1,
	End = 2,
	Chapter = 3,
	Eternal = 4,
}
```

### Color

```csharp
public enum PersonData.Colors
{
	None = 0,
	Red = 1,
	Green = 2,
	Blue = 3,
}
```

### Flag

```csharp
public enum PersonData.Flags
{
	CandidateForFriend = 1,
	BelongName = 2,
	Talent = 4,
	IgnoreJobSkillRemove = 8,
	DarkWarp = 16,
	DressReverse = 32,
	SimpleUI = 64,
	DerivedHero = 128,
	SummonWarp = 256,
}
```

## God

### Flag

```csharp
public enum GodData.Flags
{
	NoAddExp = 1,
	EnableRingList = 2,
	UnitIconDarkness = 4,
	GaugeDarkness = 8,
	OnlyEngageWeapon = 16,
	Armlet = 32,
	Hero = -2147483648,
}
```

## Generic Enum

### Weapon Attr

```csharp
public enum WeaponMask.Flag 
{
    None = 1,
    Sword = 2,
    Lance = 4,
    Axe = 8,GainSkillPoint
    Bow = 16,
    Dagger = 32,
    Magic = 64,
    Rod = 128,
    Fist = 256,
    Special = 512,
}
```
