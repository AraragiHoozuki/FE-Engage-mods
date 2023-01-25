# Some Explanations for Skill properties

## Cycle & Life

skill duration, after <Life> times of <Cycle>, skill expires.

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

string array separated by ";". Every <ActName> will be <ActOperation> by <ActValue>.

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
  
- RangeAdd, RangeTarget: Targeted weapen type's range + <RangeAdd>
  

## Flag

bitmask flag

```csharp
public enum SkillData.Flags
{
	public const SkillData.Flags Invisible = 1,
	public const SkillData.Flags EngageAttack = 2,
	public const SkillData.Flags EngageCharge = 4,
	public const SkillData.Flags EngageLink = 8,
	public const SkillData.Flags EngageWait = 16,
	public const SkillData.Flags EngageSummon = 32,
	public const SkillData.Flags IgnoreEngageAttacking = 64,
	public const SkillData.Flags IgnoreNoEngageAttacking = 128,
	public const SkillData.Flags EnableChaining = 256,
	public const SkillData.Flags EnableDestory = 512,
	public const SkillData.Flags EnableCannon = 1024,
	public const SkillData.Flags EnableRod = 2048,
	public const SkillData.Flags IgnoreAlone = 4096,
	public const SkillData.Flags IgnoreMultiAttacking = 8192,
	public const SkillData.Flags IgnoreTraining = 16384,
	public const SkillData.Flags IgnoreTraial = 32768,
	public const SkillData.Flags IgnoreSimulation = 65536,
	public const SkillData.Flags ExclusiveDance = 131072,
	public const SkillData.Flags RevengeAutoEquip = 262144,
	public const SkillData.Flags SwapOrder = 524288,
	public const SkillData.Flags InterruptOrder = 1048576,
	public const SkillData.Flags ContinueBattle = 2097152,
	public const SkillData.Flags ForceLateOrder = 4194304,
	public const SkillData.Flags EachSupport = 8388608,
	public const SkillData.Flags Reactable = 16777216,
	public const SkillData.Flags Remagicable = 33554432,
	public const SkillData.Flags BeforeMove = 67108864,
	public const SkillData.Flags AllowChainAttack = 134217728,
	public const SkillData.Flags AllowChainGuard = 268435456,
	public const SkillData.Flags AllowEngageGuard = 536870912,
	public const SkillData.Flags ForceChainAttack = 1073741824,
	public const SkillData.Flags JoinChainAttack = 2147483648,
	public const SkillData.Flags RangeReliance = 4294967296,
	public const SkillData.Flags PickupReliance = 8589934592,
	public const SkillData.Flags MoveCostFree = 17179869184,
	public const SkillData.Flags MoveEnemyPass = 34359738368,
	public const SkillData.Flags ResetDisorder = 68719476736,
	public const SkillData.Flags ItemHealAround = 137438953472,
	public const SkillData.Flags ItemHealGive = 274877906944,
	public const SkillData.Flags SelfHealRod = 549755813888,
	public const SkillData.Flags OnlyRecvoerRod = 1099511627776,
	public const SkillData.Flags DecayEnhance = 2199023255552,
	public const SkillData.Flags SubEngageCountLimit = 4398046511104,
	public const SkillData.Flags ReverseCount = 8796093022208,
	public const SkillData.Flags ReCooking = 17592186044416,
	public const SkillData.Flags BasisSkill = 35184372088832,
	public const SkillData.Flags Unstoppable = 70368744177664,
	public const SkillData.Flags HideChangeGod = 140737488355328,
	public const SkillData.Flags OverExpChange = 281474976710656,
	public const SkillData.Flags MoveFly = 562949953421312,
	public const SkillData.Flags ViewRestriction = 1125899906842624,
	public const SkillData.Flags HasIconBmap = 9007199254740992,
	public const SkillData.Flags HasContract = 18014398509481984,
	public const SkillData.Flags HauntChainAttack = 36028797018963968,
	public const SkillData.Flags HasRootCommand = 72057594037927936,
	public const SkillData.Flags HasZOC = 144115188075855872,
	public const SkillData.Flags HasWork = 288230376151711744,
	public const SkillData.Flags HasVision = 576460752303423488,
	public const SkillData.Flags NotCondition = 1152921504606846976,
	public const SkillData.Flags HasCondition = 2305843009213693952,
	public const SkillData.Flags HasEnhance = 4611686018427387904,
	public const SkillData.Flags HasRangeTarget = -9223372036854775808,
	public const SkillData.Flags IgnoreMask = 127168,
}
```
