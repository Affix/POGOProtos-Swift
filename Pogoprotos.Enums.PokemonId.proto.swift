// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "PokemonId.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Enums { }}

public extension Pogoprotos.Enums {
  public struct PokemonIdRoot {
    public static var sharedInstance : PokemonIdRoot {
     struct Static {
         static let instance : PokemonIdRoot = PokemonIdRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  public enum PokemonId:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case Missingno = 0
    case Bulbasaur = 1
    case Ivysaur = 2
    case Venusaur = 3
    case Charmander = 4
    case Charmeleon = 5
    case Charizard = 6
    case Squirtle = 7
    case Wartortle = 8
    case Blastoise = 9
    case Caterpie = 10
    case Metapod = 11
    case Butterfree = 12
    case Weedle = 13
    case Kakuna = 14
    case Beedrill = 15
    case Pidgey = 16
    case Pidgeotto = 17
    case Pidgeot = 18
    case Rattata = 19
    case Raticate = 20
    case Spearow = 21
    case Fearow = 22
    case Ekans = 23
    case Arbok = 24
    case Pikachu = 25
    case Raichu = 26
    case Sandshrew = 27
    case Sandslash = 28
    case NidoranFemale = 29
    case Nidorina = 30
    case Nidoqueen = 31
    case NidoranMale = 32
    case Nidorino = 33
    case Nidoking = 34
    case Clefairy = 35
    case Clefable = 36
    case Vulpix = 37
    case Ninetales = 38
    case Jigglypuff = 39
    case Wigglytuff = 40
    case Zubat = 41
    case Golbat = 42
    case Oddish = 43
    case Gloom = 44
    case Vileplume = 45
    case Paras = 46
    case Parasect = 47
    case Venonat = 48
    case Venomoth = 49
    case Diglett = 50
    case Dugtrio = 51
    case Meowth = 52
    case Persian = 53
    case Psyduck = 54
    case Golduck = 55
    case Mankey = 56
    case Primeape = 57
    case Growlithe = 58
    case Arcanine = 59
    case Poliwag = 60
    case Poliwhirl = 61
    case Poliwrath = 62
    case Abra = 63
    case Kadabra = 64
    case Alakazam = 65
    case Machop = 66
    case Machoke = 67
    case Machamp = 68
    case Bellsprout = 69
    case Weepinbell = 70
    case Victreebel = 71
    case Tentacool = 72
    case Tentacruel = 73
    case Geodude = 74
    case Graveler = 75
    case Golem = 76
    case Ponyta = 77
    case Rapidash = 78
    case Slowpoke = 79
    case Slowbro = 80
    case Magnemite = 81
    case Magneton = 82
    case Farfetchd = 83
    case Doduo = 84
    case Dodrio = 85
    case Seel = 86
    case Dewgong = 87
    case Grimer = 88
    case Muk = 89
    case Shellder = 90
    case Cloyster = 91
    case Gastly = 92
    case Haunter = 93
    case Gengar = 94
    case Onix = 95
    case Drowzee = 96
    case Hypno = 97
    case Krabby = 98
    case Kingler = 99
    case Voltorb = 100
    case Electrode = 101
    case Exeggcute = 102
    case Exeggutor = 103
    case Cubone = 104
    case Marowak = 105
    case Hitmonlee = 106
    case Hitmonchan = 107
    case Lickitung = 108
    case Koffing = 109
    case Weezing = 110
    case Rhyhorn = 111
    case Rhydon = 112
    case Chansey = 113
    case Tangela = 114
    case Kangaskhan = 115
    case Horsea = 116
    case Seadra = 117
    case Goldeen = 118
    case Seaking = 119
    case Staryu = 120
    case Starmie = 121
    case MrMime = 122
    case Scyther = 123
    case Jynx = 124
    case Electabuzz = 125
    case Magmar = 126
    case Pinsir = 127
    case Tauros = 128
    case Magikarp = 129
    case Gyarados = 130
    case Lapras = 131
    case Ditto = 132
    case Eevee = 133
    case Vaporeon = 134
    case Jolteon = 135
    case Flareon = 136
    case Porygon = 137
    case Omanyte = 138
    case Omastar = 139
    case Kabuto = 140
    case Kabutops = 141
    case Aerodactyl = 142
    case Snorlax = 143
    case Articuno = 144
    case Zapdos = 145
    case Moltres = 146
    case Dratini = 147
    case Dragonair = 148
    case Dragonite = 149
    case Mewtwo = 150
    case Mew = 151
    public func toString() -> String {
      switch self {
      case .Missingno: return "MISSINGNO"
      case .Bulbasaur: return "BULBASAUR"
      case .Ivysaur: return "IVYSAUR"
      case .Venusaur: return "VENUSAUR"
      case .Charmander: return "CHARMANDER"
      case .Charmeleon: return "CHARMELEON"
      case .Charizard: return "CHARIZARD"
      case .Squirtle: return "SQUIRTLE"
      case .Wartortle: return "WARTORTLE"
      case .Blastoise: return "BLASTOISE"
      case .Caterpie: return "CATERPIE"
      case .Metapod: return "METAPOD"
      case .Butterfree: return "BUTTERFREE"
      case .Weedle: return "WEEDLE"
      case .Kakuna: return "KAKUNA"
      case .Beedrill: return "BEEDRILL"
      case .Pidgey: return "PIDGEY"
      case .Pidgeotto: return "PIDGEOTTO"
      case .Pidgeot: return "PIDGEOT"
      case .Rattata: return "RATTATA"
      case .Raticate: return "RATICATE"
      case .Spearow: return "SPEAROW"
      case .Fearow: return "FEAROW"
      case .Ekans: return "EKANS"
      case .Arbok: return "ARBOK"
      case .Pikachu: return "PIKACHU"
      case .Raichu: return "RAICHU"
      case .Sandshrew: return "SANDSHREW"
      case .Sandslash: return "SANDSLASH"
      case .NidoranFemale: return "NIDORAN_FEMALE"
      case .Nidorina: return "NIDORINA"
      case .Nidoqueen: return "NIDOQUEEN"
      case .NidoranMale: return "NIDORAN_MALE"
      case .Nidorino: return "NIDORINO"
      case .Nidoking: return "NIDOKING"
      case .Clefairy: return "CLEFAIRY"
      case .Clefable: return "CLEFABLE"
      case .Vulpix: return "VULPIX"
      case .Ninetales: return "NINETALES"
      case .Jigglypuff: return "JIGGLYPUFF"
      case .Wigglytuff: return "WIGGLYTUFF"
      case .Zubat: return "ZUBAT"
      case .Golbat: return "GOLBAT"
      case .Oddish: return "ODDISH"
      case .Gloom: return "GLOOM"
      case .Vileplume: return "VILEPLUME"
      case .Paras: return "PARAS"
      case .Parasect: return "PARASECT"
      case .Venonat: return "VENONAT"
      case .Venomoth: return "VENOMOTH"
      case .Diglett: return "DIGLETT"
      case .Dugtrio: return "DUGTRIO"
      case .Meowth: return "MEOWTH"
      case .Persian: return "PERSIAN"
      case .Psyduck: return "PSYDUCK"
      case .Golduck: return "GOLDUCK"
      case .Mankey: return "MANKEY"
      case .Primeape: return "PRIMEAPE"
      case .Growlithe: return "GROWLITHE"
      case .Arcanine: return "ARCANINE"
      case .Poliwag: return "POLIWAG"
      case .Poliwhirl: return "POLIWHIRL"
      case .Poliwrath: return "POLIWRATH"
      case .Abra: return "ABRA"
      case .Kadabra: return "KADABRA"
      case .Alakazam: return "ALAKAZAM"
      case .Machop: return "MACHOP"
      case .Machoke: return "MACHOKE"
      case .Machamp: return "MACHAMP"
      case .Bellsprout: return "BELLSPROUT"
      case .Weepinbell: return "WEEPINBELL"
      case .Victreebel: return "VICTREEBEL"
      case .Tentacool: return "TENTACOOL"
      case .Tentacruel: return "TENTACRUEL"
      case .Geodude: return "GEODUDE"
      case .Graveler: return "GRAVELER"
      case .Golem: return "GOLEM"
      case .Ponyta: return "PONYTA"
      case .Rapidash: return "RAPIDASH"
      case .Slowpoke: return "SLOWPOKE"
      case .Slowbro: return "SLOWBRO"
      case .Magnemite: return "MAGNEMITE"
      case .Magneton: return "MAGNETON"
      case .Farfetchd: return "FARFETCHD"
      case .Doduo: return "DODUO"
      case .Dodrio: return "DODRIO"
      case .Seel: return "SEEL"
      case .Dewgong: return "DEWGONG"
      case .Grimer: return "GRIMER"
      case .Muk: return "MUK"
      case .Shellder: return "SHELLDER"
      case .Cloyster: return "CLOYSTER"
      case .Gastly: return "GASTLY"
      case .Haunter: return "HAUNTER"
      case .Gengar: return "GENGAR"
      case .Onix: return "ONIX"
      case .Drowzee: return "DROWZEE"
      case .Hypno: return "HYPNO"
      case .Krabby: return "KRABBY"
      case .Kingler: return "KINGLER"
      case .Voltorb: return "VOLTORB"
      case .Electrode: return "ELECTRODE"
      case .Exeggcute: return "EXEGGCUTE"
      case .Exeggutor: return "EXEGGUTOR"
      case .Cubone: return "CUBONE"
      case .Marowak: return "MAROWAK"
      case .Hitmonlee: return "HITMONLEE"
      case .Hitmonchan: return "HITMONCHAN"
      case .Lickitung: return "LICKITUNG"
      case .Koffing: return "KOFFING"
      case .Weezing: return "WEEZING"
      case .Rhyhorn: return "RHYHORN"
      case .Rhydon: return "RHYDON"
      case .Chansey: return "CHANSEY"
      case .Tangela: return "TANGELA"
      case .Kangaskhan: return "KANGASKHAN"
      case .Horsea: return "HORSEA"
      case .Seadra: return "SEADRA"
      case .Goldeen: return "GOLDEEN"
      case .Seaking: return "SEAKING"
      case .Staryu: return "STARYU"
      case .Starmie: return "STARMIE"
      case .MrMime: return "MR_MIME"
      case .Scyther: return "SCYTHER"
      case .Jynx: return "JYNX"
      case .Electabuzz: return "ELECTABUZZ"
      case .Magmar: return "MAGMAR"
      case .Pinsir: return "PINSIR"
      case .Tauros: return "TAUROS"
      case .Magikarp: return "MAGIKARP"
      case .Gyarados: return "GYARADOS"
      case .Lapras: return "LAPRAS"
      case .Ditto: return "DITTO"
      case .Eevee: return "EEVEE"
      case .Vaporeon: return "VAPOREON"
      case .Jolteon: return "JOLTEON"
      case .Flareon: return "FLAREON"
      case .Porygon: return "PORYGON"
      case .Omanyte: return "OMANYTE"
      case .Omastar: return "OMASTAR"
      case .Kabuto: return "KABUTO"
      case .Kabutops: return "KABUTOPS"
      case .Aerodactyl: return "AERODACTYL"
      case .Snorlax: return "SNORLAX"
      case .Articuno: return "ARTICUNO"
      case .Zapdos: return "ZAPDOS"
      case .Moltres: return "MOLTRES"
      case .Dratini: return "DRATINI"
      case .Dragonair: return "DRAGONAIR"
      case .Dragonite: return "DRAGONITE"
      case .Mewtwo: return "MEWTWO"
      case .Mew: return "MEW"
      }
    }
    public static func fromString(str:String) throws -> Pogoprotos.Enums.PokemonId {
      switch str {
      case "MISSINGNO":  return .Missingno
      case "BULBASAUR":  return .Bulbasaur
      case "IVYSAUR":  return .Ivysaur
      case "VENUSAUR":  return .Venusaur
      case "CHARMANDER":  return .Charmander
      case "CHARMELEON":  return .Charmeleon
      case "CHARIZARD":  return .Charizard
      case "SQUIRTLE":  return .Squirtle
      case "WARTORTLE":  return .Wartortle
      case "BLASTOISE":  return .Blastoise
      case "CATERPIE":  return .Caterpie
      case "METAPOD":  return .Metapod
      case "BUTTERFREE":  return .Butterfree
      case "WEEDLE":  return .Weedle
      case "KAKUNA":  return .Kakuna
      case "BEEDRILL":  return .Beedrill
      case "PIDGEY":  return .Pidgey
      case "PIDGEOTTO":  return .Pidgeotto
      case "PIDGEOT":  return .Pidgeot
      case "RATTATA":  return .Rattata
      case "RATICATE":  return .Raticate
      case "SPEAROW":  return .Spearow
      case "FEAROW":  return .Fearow
      case "EKANS":  return .Ekans
      case "ARBOK":  return .Arbok
      case "PIKACHU":  return .Pikachu
      case "RAICHU":  return .Raichu
      case "SANDSHREW":  return .Sandshrew
      case "SANDSLASH":  return .Sandslash
      case "NIDORAN_FEMALE":  return .NidoranFemale
      case "NIDORINA":  return .Nidorina
      case "NIDOQUEEN":  return .Nidoqueen
      case "NIDORAN_MALE":  return .NidoranMale
      case "NIDORINO":  return .Nidorino
      case "NIDOKING":  return .Nidoking
      case "CLEFAIRY":  return .Clefairy
      case "CLEFABLE":  return .Clefable
      case "VULPIX":  return .Vulpix
      case "NINETALES":  return .Ninetales
      case "JIGGLYPUFF":  return .Jigglypuff
      case "WIGGLYTUFF":  return .Wigglytuff
      case "ZUBAT":  return .Zubat
      case "GOLBAT":  return .Golbat
      case "ODDISH":  return .Oddish
      case "GLOOM":  return .Gloom
      case "VILEPLUME":  return .Vileplume
      case "PARAS":  return .Paras
      case "PARASECT":  return .Parasect
      case "VENONAT":  return .Venonat
      case "VENOMOTH":  return .Venomoth
      case "DIGLETT":  return .Diglett
      case "DUGTRIO":  return .Dugtrio
      case "MEOWTH":  return .Meowth
      case "PERSIAN":  return .Persian
      case "PSYDUCK":  return .Psyduck
      case "GOLDUCK":  return .Golduck
      case "MANKEY":  return .Mankey
      case "PRIMEAPE":  return .Primeape
      case "GROWLITHE":  return .Growlithe
      case "ARCANINE":  return .Arcanine
      case "POLIWAG":  return .Poliwag
      case "POLIWHIRL":  return .Poliwhirl
      case "POLIWRATH":  return .Poliwrath
      case "ABRA":  return .Abra
      case "KADABRA":  return .Kadabra
      case "ALAKAZAM":  return .Alakazam
      case "MACHOP":  return .Machop
      case "MACHOKE":  return .Machoke
      case "MACHAMP":  return .Machamp
      case "BELLSPROUT":  return .Bellsprout
      case "WEEPINBELL":  return .Weepinbell
      case "VICTREEBEL":  return .Victreebel
      case "TENTACOOL":  return .Tentacool
      case "TENTACRUEL":  return .Tentacruel
      case "GEODUDE":  return .Geodude
      case "GRAVELER":  return .Graveler
      case "GOLEM":  return .Golem
      case "PONYTA":  return .Ponyta
      case "RAPIDASH":  return .Rapidash
      case "SLOWPOKE":  return .Slowpoke
      case "SLOWBRO":  return .Slowbro
      case "MAGNEMITE":  return .Magnemite
      case "MAGNETON":  return .Magneton
      case "FARFETCHD":  return .Farfetchd
      case "DODUO":  return .Doduo
      case "DODRIO":  return .Dodrio
      case "SEEL":  return .Seel
      case "DEWGONG":  return .Dewgong
      case "GRIMER":  return .Grimer
      case "MUK":  return .Muk
      case "SHELLDER":  return .Shellder
      case "CLOYSTER":  return .Cloyster
      case "GASTLY":  return .Gastly
      case "HAUNTER":  return .Haunter
      case "GENGAR":  return .Gengar
      case "ONIX":  return .Onix
      case "DROWZEE":  return .Drowzee
      case "HYPNO":  return .Hypno
      case "KRABBY":  return .Krabby
      case "KINGLER":  return .Kingler
      case "VOLTORB":  return .Voltorb
      case "ELECTRODE":  return .Electrode
      case "EXEGGCUTE":  return .Exeggcute
      case "EXEGGUTOR":  return .Exeggutor
      case "CUBONE":  return .Cubone
      case "MAROWAK":  return .Marowak
      case "HITMONLEE":  return .Hitmonlee
      case "HITMONCHAN":  return .Hitmonchan
      case "LICKITUNG":  return .Lickitung
      case "KOFFING":  return .Koffing
      case "WEEZING":  return .Weezing
      case "RHYHORN":  return .Rhyhorn
      case "RHYDON":  return .Rhydon
      case "CHANSEY":  return .Chansey
      case "TANGELA":  return .Tangela
      case "KANGASKHAN":  return .Kangaskhan
      case "HORSEA":  return .Horsea
      case "SEADRA":  return .Seadra
      case "GOLDEEN":  return .Goldeen
      case "SEAKING":  return .Seaking
      case "STARYU":  return .Staryu
      case "STARMIE":  return .Starmie
      case "MR_MIME":  return .MrMime
      case "SCYTHER":  return .Scyther
      case "JYNX":  return .Jynx
      case "ELECTABUZZ":  return .Electabuzz
      case "MAGMAR":  return .Magmar
      case "PINSIR":  return .Pinsir
      case "TAUROS":  return .Tauros
      case "MAGIKARP":  return .Magikarp
      case "GYARADOS":  return .Gyarados
      case "LAPRAS":  return .Lapras
      case "DITTO":  return .Ditto
      case "EEVEE":  return .Eevee
      case "VAPOREON":  return .Vaporeon
      case "JOLTEON":  return .Jolteon
      case "FLAREON":  return .Flareon
      case "PORYGON":  return .Porygon
      case "OMANYTE":  return .Omanyte
      case "OMASTAR":  return .Omastar
      case "KABUTO":  return .Kabuto
      case "KABUTOPS":  return .Kabutops
      case "AERODACTYL":  return .Aerodactyl
      case "SNORLAX":  return .Snorlax
      case "ARTICUNO":  return .Articuno
      case "ZAPDOS":  return .Zapdos
      case "MOLTRES":  return .Moltres
      case "DRATINI":  return .Dratini
      case "DRAGONAIR":  return .Dragonair
      case "DRAGONITE":  return .Dragonite
      case "MEWTWO":  return .Mewtwo
      case "MEW":  return .Mew
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .Missingno: return ".Missingno"
            case .Bulbasaur: return ".Bulbasaur"
            case .Ivysaur: return ".Ivysaur"
            case .Venusaur: return ".Venusaur"
            case .Charmander: return ".Charmander"
            case .Charmeleon: return ".Charmeleon"
            case .Charizard: return ".Charizard"
            case .Squirtle: return ".Squirtle"
            case .Wartortle: return ".Wartortle"
            case .Blastoise: return ".Blastoise"
            case .Caterpie: return ".Caterpie"
            case .Metapod: return ".Metapod"
            case .Butterfree: return ".Butterfree"
            case .Weedle: return ".Weedle"
            case .Kakuna: return ".Kakuna"
            case .Beedrill: return ".Beedrill"
            case .Pidgey: return ".Pidgey"
            case .Pidgeotto: return ".Pidgeotto"
            case .Pidgeot: return ".Pidgeot"
            case .Rattata: return ".Rattata"
            case .Raticate: return ".Raticate"
            case .Spearow: return ".Spearow"
            case .Fearow: return ".Fearow"
            case .Ekans: return ".Ekans"
            case .Arbok: return ".Arbok"
            case .Pikachu: return ".Pikachu"
            case .Raichu: return ".Raichu"
            case .Sandshrew: return ".Sandshrew"
            case .Sandslash: return ".Sandslash"
            case .NidoranFemale: return ".NidoranFemale"
            case .Nidorina: return ".Nidorina"
            case .Nidoqueen: return ".Nidoqueen"
            case .NidoranMale: return ".NidoranMale"
            case .Nidorino: return ".Nidorino"
            case .Nidoking: return ".Nidoking"
            case .Clefairy: return ".Clefairy"
            case .Clefable: return ".Clefable"
            case .Vulpix: return ".Vulpix"
            case .Ninetales: return ".Ninetales"
            case .Jigglypuff: return ".Jigglypuff"
            case .Wigglytuff: return ".Wigglytuff"
            case .Zubat: return ".Zubat"
            case .Golbat: return ".Golbat"
            case .Oddish: return ".Oddish"
            case .Gloom: return ".Gloom"
            case .Vileplume: return ".Vileplume"
            case .Paras: return ".Paras"
            case .Parasect: return ".Parasect"
            case .Venonat: return ".Venonat"
            case .Venomoth: return ".Venomoth"
            case .Diglett: return ".Diglett"
            case .Dugtrio: return ".Dugtrio"
            case .Meowth: return ".Meowth"
            case .Persian: return ".Persian"
            case .Psyduck: return ".Psyduck"
            case .Golduck: return ".Golduck"
            case .Mankey: return ".Mankey"
            case .Primeape: return ".Primeape"
            case .Growlithe: return ".Growlithe"
            case .Arcanine: return ".Arcanine"
            case .Poliwag: return ".Poliwag"
            case .Poliwhirl: return ".Poliwhirl"
            case .Poliwrath: return ".Poliwrath"
            case .Abra: return ".Abra"
            case .Kadabra: return ".Kadabra"
            case .Alakazam: return ".Alakazam"
            case .Machop: return ".Machop"
            case .Machoke: return ".Machoke"
            case .Machamp: return ".Machamp"
            case .Bellsprout: return ".Bellsprout"
            case .Weepinbell: return ".Weepinbell"
            case .Victreebel: return ".Victreebel"
            case .Tentacool: return ".Tentacool"
            case .Tentacruel: return ".Tentacruel"
            case .Geodude: return ".Geodude"
            case .Graveler: return ".Graveler"
            case .Golem: return ".Golem"
            case .Ponyta: return ".Ponyta"
            case .Rapidash: return ".Rapidash"
            case .Slowpoke: return ".Slowpoke"
            case .Slowbro: return ".Slowbro"
            case .Magnemite: return ".Magnemite"
            case .Magneton: return ".Magneton"
            case .Farfetchd: return ".Farfetchd"
            case .Doduo: return ".Doduo"
            case .Dodrio: return ".Dodrio"
            case .Seel: return ".Seel"
            case .Dewgong: return ".Dewgong"
            case .Grimer: return ".Grimer"
            case .Muk: return ".Muk"
            case .Shellder: return ".Shellder"
            case .Cloyster: return ".Cloyster"
            case .Gastly: return ".Gastly"
            case .Haunter: return ".Haunter"
            case .Gengar: return ".Gengar"
            case .Onix: return ".Onix"
            case .Drowzee: return ".Drowzee"
            case .Hypno: return ".Hypno"
            case .Krabby: return ".Krabby"
            case .Kingler: return ".Kingler"
            case .Voltorb: return ".Voltorb"
            case .Electrode: return ".Electrode"
            case .Exeggcute: return ".Exeggcute"
            case .Exeggutor: return ".Exeggutor"
            case .Cubone: return ".Cubone"
            case .Marowak: return ".Marowak"
            case .Hitmonlee: return ".Hitmonlee"
            case .Hitmonchan: return ".Hitmonchan"
            case .Lickitung: return ".Lickitung"
            case .Koffing: return ".Koffing"
            case .Weezing: return ".Weezing"
            case .Rhyhorn: return ".Rhyhorn"
            case .Rhydon: return ".Rhydon"
            case .Chansey: return ".Chansey"
            case .Tangela: return ".Tangela"
            case .Kangaskhan: return ".Kangaskhan"
            case .Horsea: return ".Horsea"
            case .Seadra: return ".Seadra"
            case .Goldeen: return ".Goldeen"
            case .Seaking: return ".Seaking"
            case .Staryu: return ".Staryu"
            case .Starmie: return ".Starmie"
            case .MrMime: return ".MrMime"
            case .Scyther: return ".Scyther"
            case .Jynx: return ".Jynx"
            case .Electabuzz: return ".Electabuzz"
            case .Magmar: return ".Magmar"
            case .Pinsir: return ".Pinsir"
            case .Tauros: return ".Tauros"
            case .Magikarp: return ".Magikarp"
            case .Gyarados: return ".Gyarados"
            case .Lapras: return ".Lapras"
            case .Ditto: return ".Ditto"
            case .Eevee: return ".Eevee"
            case .Vaporeon: return ".Vaporeon"
            case .Jolteon: return ".Jolteon"
            case .Flareon: return ".Flareon"
            case .Porygon: return ".Porygon"
            case .Omanyte: return ".Omanyte"
            case .Omastar: return ".Omastar"
            case .Kabuto: return ".Kabuto"
            case .Kabutops: return ".Kabutops"
            case .Aerodactyl: return ".Aerodactyl"
            case .Snorlax: return ".Snorlax"
            case .Articuno: return ".Articuno"
            case .Zapdos: return ".Zapdos"
            case .Moltres: return ".Moltres"
            case .Dratini: return ".Dratini"
            case .Dragonair: return ".Dragonair"
            case .Dragonite: return ".Dragonite"
            case .Mewtwo: return ".Mewtwo"
            case .Mew: return ".Mew"
        }
    }
  }

  //Enum type declaration end 

}

// @@protoc_insertion_point(global_scope)
