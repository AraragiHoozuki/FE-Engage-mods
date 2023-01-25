# Some Explanations for Skill properties

## Cycle & Life

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

## Timing

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

## Target

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

## Frequency

```csharp
public enum SkillData.Frequencies
{
	Every = 1,
	First = 2,
	Last = 4,
	Mask = 7,
}
```

## Stand

```csharp
public enum SkillData.Stands
{
	None = 0,
	Offence = 1, //Skill activated when initiate a battle
	Defence = 2, // ------------------- enemy initiates----------
}
```

## Act

string array separated by ";". Every 《ActName》 will be 《ActOperation》 by 《ActValue》.

Eg.

- ActNames: 相手の威力;
  
- ActOperations: -;
  
- ActValues: 20;
  

This means that Opponent's power minus 20 (during battle).

## Around

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

## HorseSkill, CovertSkill etc.

Eg. HorseSkill: SID\_XXX, skill will be replaced by SID\_XXX when unit cabalgate a horse.

## Range

- RangeI: Inner range
  
- RangeO: Outer range
  
- RangeAdd, RangeTarget: Targeted weapen type's range + 《RangeAdd》
  

## Flag

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
