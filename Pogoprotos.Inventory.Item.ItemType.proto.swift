// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "ItemType.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Inventory { public struct Item { }}}

public extension Pogoprotos.Inventory.Item {
  public struct ItemTypeRoot {
    public static var sharedInstance : ItemTypeRoot {
     struct Static {
         static let instance : ItemTypeRoot = ItemTypeRoot()
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

  public enum ItemType:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case ItemTypeNone = 0
    case ItemTypePokeball = 1
    case ItemTypePotion = 2
    case ItemTypeRevive = 3
    case ItemTypeMap = 4
    case ItemTypeBattle = 5
    case ItemTypeFood = 6
    case ItemTypeCamera = 7
    case ItemTypeDisk = 8
    case ItemTypeIncubator = 9
    case ItemTypeIncense = 10
    case ItemTypeXpBoost = 11
    case ItemTypeInventoryUpgrade = 12
    public func toString() -> String {
      switch self {
      case .ItemTypeNone: return "ITEM_TYPE_NONE"
      case .ItemTypePokeball: return "ITEM_TYPE_POKEBALL"
      case .ItemTypePotion: return "ITEM_TYPE_POTION"
      case .ItemTypeRevive: return "ITEM_TYPE_REVIVE"
      case .ItemTypeMap: return "ITEM_TYPE_MAP"
      case .ItemTypeBattle: return "ITEM_TYPE_BATTLE"
      case .ItemTypeFood: return "ITEM_TYPE_FOOD"
      case .ItemTypeCamera: return "ITEM_TYPE_CAMERA"
      case .ItemTypeDisk: return "ITEM_TYPE_DISK"
      case .ItemTypeIncubator: return "ITEM_TYPE_INCUBATOR"
      case .ItemTypeIncense: return "ITEM_TYPE_INCENSE"
      case .ItemTypeXpBoost: return "ITEM_TYPE_XP_BOOST"
      case .ItemTypeInventoryUpgrade: return "ITEM_TYPE_INVENTORY_UPGRADE"
      }
    }
    public static func fromString(str:String) throws -> Pogoprotos.Inventory.Item.ItemType {
      switch str {
      case "ITEM_TYPE_NONE":  return .ItemTypeNone
      case "ITEM_TYPE_POKEBALL":  return .ItemTypePokeball
      case "ITEM_TYPE_POTION":  return .ItemTypePotion
      case "ITEM_TYPE_REVIVE":  return .ItemTypeRevive
      case "ITEM_TYPE_MAP":  return .ItemTypeMap
      case "ITEM_TYPE_BATTLE":  return .ItemTypeBattle
      case "ITEM_TYPE_FOOD":  return .ItemTypeFood
      case "ITEM_TYPE_CAMERA":  return .ItemTypeCamera
      case "ITEM_TYPE_DISK":  return .ItemTypeDisk
      case "ITEM_TYPE_INCUBATOR":  return .ItemTypeIncubator
      case "ITEM_TYPE_INCENSE":  return .ItemTypeIncense
      case "ITEM_TYPE_XP_BOOST":  return .ItemTypeXpBoost
      case "ITEM_TYPE_INVENTORY_UPGRADE":  return .ItemTypeInventoryUpgrade
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .ItemTypeNone: return ".ItemTypeNone"
            case .ItemTypePokeball: return ".ItemTypePokeball"
            case .ItemTypePotion: return ".ItemTypePotion"
            case .ItemTypeRevive: return ".ItemTypeRevive"
            case .ItemTypeMap: return ".ItemTypeMap"
            case .ItemTypeBattle: return ".ItemTypeBattle"
            case .ItemTypeFood: return ".ItemTypeFood"
            case .ItemTypeCamera: return ".ItemTypeCamera"
            case .ItemTypeDisk: return ".ItemTypeDisk"
            case .ItemTypeIncubator: return ".ItemTypeIncubator"
            case .ItemTypeIncense: return ".ItemTypeIncense"
            case .ItemTypeXpBoost: return ".ItemTypeXpBoost"
            case .ItemTypeInventoryUpgrade: return ".ItemTypeInventoryUpgrade"
        }
    }
  }

  //Enum type declaration end 

}

// @@protoc_insertion_point(global_scope)
