# ClassicCastbars

## [v1.6.2](https://github.com/wardz/ClassicCastbars/tree/v1.6.2) (2023-05-28)
[Full Changelog](https://github.com/wardz/ClassicCastbars/compare/v1.6.1...v1.6.2) [Previous Releases](https://github.com/wardz/ClassicCastbars/releases)

- simplify OnUpdate delete cast, set cast failed instead of unknown state  
- cleanup  
- bump retail toc version & add IconTexture  
- update README.md to match curseforge  
- dont think this is necessarry anymore with spell batching removed  
- code cleanups  
- cleanups for handling npcCastUninterruptibleCache & npcCastTimeCache  
- check castImmunityBuffs on aura gained aswell incase caster was buffed by different unit while casting  
- only skip haste modifiers check for playerguid/self, not special cases like uninterruptible state  
- use proper registration for LibClassicDurations  
