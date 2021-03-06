// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "FortSponsor.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Map { public struct Fort { }}}

public extension Pogoprotos.Map.Fort {
  public struct FortSponsorRoot {
    public static var sharedInstance : FortSponsorRoot {
     struct Static {
         static let instance : FortSponsorRoot = FortSponsorRoot()
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

  public enum FortSponsor:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case UnsetSponsor = 0
    case Mcdonalds = 1
    case PokemonStore = 2
    public func toString() -> String {
      switch self {
      case .UnsetSponsor: return "UNSET_SPONSOR"
      case .Mcdonalds: return "MCDONALDS"
      case .PokemonStore: return "POKEMON_STORE"
      }
    }
    public static func fromString(str:String) throws -> Pogoprotos.Map.Fort.FortSponsor {
      switch str {
      case "UNSET_SPONSOR":  return .UnsetSponsor
      case "MCDONALDS":  return .Mcdonalds
      case "POKEMON_STORE":  return .PokemonStore
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .UnsetSponsor: return ".UnsetSponsor"
            case .Mcdonalds: return ".Mcdonalds"
            case .PokemonStore: return ".PokemonStore"
        }
    }
  }

  //Enum type declaration end 

}

// @@protoc_insertion_point(global_scope)
