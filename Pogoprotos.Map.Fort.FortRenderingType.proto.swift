// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "FortRenderingType.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Map { public struct Fort { }}}

public extension Pogoprotos.Map.Fort {
  public struct FortRenderingTypeRoot {
    public static var sharedInstance : FortRenderingTypeRoot {
     struct Static {
         static let instance : FortRenderingTypeRoot = FortRenderingTypeRoot()
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

  public enum FortRenderingType:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case Default = 0
    case InternalTest = 1
    public func toString() -> String {
      switch self {
      case .Default: return "DEFAULT"
      case .InternalTest: return "INTERNAL_TEST"
      }
    }
    public static func fromString(str:String) throws -> Pogoprotos.Map.Fort.FortRenderingType {
      switch str {
      case "DEFAULT":  return .Default
      case "INTERNAL_TEST":  return .InternalTest
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .Default: return ".Default"
            case .InternalTest: return ".InternalTest"
        }
    }
  }

  //Enum type declaration end 

}

// @@protoc_insertion_point(global_scope)
