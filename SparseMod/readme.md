# Engage Param Packer

A quality-of-life tool to manage Fire Emblem: Engage gamedata mods.

## Requirements
 - .Net 7
 - Cobalt installed

## Directory Struct
```
\root
    EngageParamPacker.exe
    _config.xml
    \originals
        put here your original gamedata file(in xml format)
    \subfolder1
        _config.xml
        your-mod.xml
        your-mod2.xml
        ...
    \subfolder2
        _config.xml
        your-mod.xml
        your-mod2.xml
        ...
```

## Main Config
_config.xml file under root folder:
```xml
<?xml version="1.0" encoding="utf-8"?>
<Config
    CobaltModPath="C:\Users\Zebit\AppData\Roaming\Ryujinx\sdcard\engage\mods\YourModName"
    Language="cn\cnch"
/>
```

 - CobaltModPath: path to your cobalt mod
 - Language: this determines where to put your message files (in the example: `\patches\msbt\message\cn\cnch\` ). Ps. This app will **Not** automatically create folders that appears in your path.

 ## Subfolder Config
_config.xml file under every folder, for example:
```xml
<?xml version="1.0" encoding="utf-8"?>
<Config
    XmlFile="Skill"
    MessageFile="skill"
    ParamPath="/Book/Sheet[@Name='スキル']/Data"
    ParamIdentifiers="Sid;"
/>
```
the config above means that the app will collect all params in this folder, merge them to `origanals\skill.xml`'s スキル sheet, and save result at `{CobaltModPath}\patches\xml\Skill.xml`, and save corresponding message file at `{CobaltModPath}\\patches\msbt\message\{Language}\skill.txt`.

 ## Subfolder Param Mod:
 each mod file under subfolder should be like:
> ```xml
<?xml version="1.0" encoding="utf-8"?>
<Data>
    <Param Out="" Sid="SID_ZEBIT_ATK_SPD_SOLO" Name="::Atk Spd Splo" Help="::when there is no ally in 1 space&#13;&#10;grant atk,spd+7 during battle" CommandName="" CommandHelp="" CommandWarning="" RootCommandSid="" IconKind="0" IconLabel="Atk_Spd_Solo" IconBmap="" Priority="0" Layer="0" Order="0" Cycle="0" Life="0" Timing="3" Target="0" Frequency="0" Stand="0" Action="0" Condition="周囲の味方数==0" ActNames="威力;攻撃速度;" ActOperations="+;+;" ActValues="7;7;" AroundCenter="0" AroundTarget="0" AroundCondition="" AroundName="" AroundOperation="" AroundValue="" GiveTarget="0" GiveCondition="" GiveSids="" RemoveSids="" SyncConditions="" SyncSids="" RebirthSid="" EngageSid="" ChangeSids="" CooperationSkill="" HorseSkill="" CovertSkill="" HeavySkill="" FlySkill="" MagicSkill="" PranaSkill="" DragonSkill="" AttackRange="" OverlapRange="" OverlapTerrain="" ZocRange="" ZocType="0" Work="0" WorkOperation="" WorkValue="0" Power="0" Rewarp="0" Removable="0" VisionCount="0" Cost="0" MoveSelf="0" MoveTarget="0" RangeTarget="0" RangeI="0" RangeO="0" RangeAdd="0" RangeExtend="0" Flag="64" Efficacy="0" EfficacyValue="0" EfficacyIgnore="0" BadState="0" BadIgnore="0" WeaponProhibit="0" EnhanceLevel="0" EnhanceValue.Hp="0" EnhanceValue.Str="0" EnhanceValue.Tech="0" EnhanceValue.Quick="0" EnhanceValue.Luck="0" EnhanceValue.Def="0" EnhanceValue.Magic="0" EnhanceValue.Mdef="0" EnhanceValue.Phys="0" EnhanceValue.Move="0" WeaponLevel.None="0" WeaponLevel.Sword="0" WeaponLevel.Lance="0" WeaponLevel.Axe="0" WeaponLevel.Bow="0" WeaponLevel.Dagger="0" WeaponLevel.Magic="0" WeaponLevel.Rod="0" WeaponLevel.Fist="0" WeaponLevel.Special="0" EquipIids="" Effect="汎用スキル" InheritanceCost="0" InheritanceSort="0" />
</Data>		
```

 - You can put more than one param entry in one file.
 - Write "ID::Message" for msbt strings. If you omit ID (like the example), the MSBT ID will be generated automatically. ( tip: use `&#13;&#10;` for line break in Message)
 
 
 if you want to overwrite existing entries in original gamedata, you only need put their `ParamIdentifiers` attributes and the attribute you want to change, for example, to change Leuer's personal skill (given the  `ParamIdentifiers` is "Sid;") :
 ```xml
<?xml version="1.0" encoding="utf-8"?>
<Data>
    <Param Out="" Pid="PID_リュール"  CommonSids="Your sids here;"/>
</Data>
 ```

