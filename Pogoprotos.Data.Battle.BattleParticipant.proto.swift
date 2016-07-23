// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "BattleParticipant.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Data { public struct Battle { }}}

public func == (lhs: Pogoprotos.Data.Battle.BattleParticipant, rhs: Pogoprotos.Data.Battle.BattleParticipant) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasActivePokemon == rhs.hasActivePokemon) && (!lhs.hasActivePokemon || lhs.activePokemon == rhs.activePokemon)
  fieldCheck = fieldCheck && (lhs.hasTrainerPublicProfile == rhs.hasTrainerPublicProfile) && (!lhs.hasTrainerPublicProfile || lhs.trainerPublicProfile == rhs.trainerPublicProfile)
  fieldCheck = fieldCheck && (lhs.reversePokemon == rhs.reversePokemon)
  fieldCheck = fieldCheck && (lhs.defeatedPokemon == rhs.defeatedPokemon)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Data.Battle {
  public struct BattleParticipantRoot {
    public static var sharedInstance : BattleParticipantRoot {
     struct Static {
         static let instance : BattleParticipantRoot = BattleParticipantRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Battle.BattlePokemonInfoRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Player.PlayerPublicProfileRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class BattleParticipant : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasActivePokemon:Bool = false
    public private(set) var activePokemon:Pogoprotos.Data.Battle.BattlePokemonInfo!
    public private(set) var hasTrainerPublicProfile:Bool = false
    public private(set) var trainerPublicProfile:Pogoprotos.Data.Player.PlayerPublicProfile!
    public private(set) var reversePokemon:Array<Pogoprotos.Data.Battle.BattlePokemonInfo>  = Array<Pogoprotos.Data.Battle.BattlePokemonInfo>()
    public private(set) var defeatedPokemon:Array<Pogoprotos.Data.Battle.BattlePokemonInfo>  = Array<Pogoprotos.Data.Battle.BattlePokemonInfo>()
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasActivePokemon {
        try output.writeMessage(1, value:activePokemon)
      }
      if hasTrainerPublicProfile {
        try output.writeMessage(2, value:trainerPublicProfile)
      }
      for oneElementReversePokemon in reversePokemon {
          try output.writeMessage(3, value:oneElementReversePokemon)
      }
      for oneElementDefeatedPokemon in defeatedPokemon {
          try output.writeMessage(4, value:oneElementDefeatedPokemon)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasActivePokemon {
          if let varSizeactivePokemon = activePokemon?.computeMessageSize(1) {
              serialize_size += varSizeactivePokemon
          }
      }
      if hasTrainerPublicProfile {
          if let varSizetrainerPublicProfile = trainerPublicProfile?.computeMessageSize(2) {
              serialize_size += varSizetrainerPublicProfile
          }
      }
      for oneElementReversePokemon in reversePokemon {
          serialize_size += oneElementReversePokemon.computeMessageSize(3)
      }
      for oneElementDefeatedPokemon in defeatedPokemon {
          serialize_size += oneElementDefeatedPokemon.computeMessageSize(4)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Data.Battle.BattleParticipant> {
      var mergedArray = Array<Pogoprotos.Data.Battle.BattleParticipant>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Battle.BattleParticipant? {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Data.Battle.BattleParticipant {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Data.Battle.BattleParticipantRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattleParticipant {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Battle.BattleParticipant {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattleParticipant {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Battle.BattleParticipant {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattleParticipant {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
      return Pogoprotos.Data.Battle.BattleParticipant.classBuilder() as! Pogoprotos.Data.Battle.BattleParticipant.Builder
    }
    public func getBuilder() -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
      return classBuilder() as! Pogoprotos.Data.Battle.BattleParticipant.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Battle.BattleParticipant.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Battle.BattleParticipant.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
      return try Pogoprotos.Data.Battle.BattleParticipant.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Data.Battle.BattleParticipant) throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasActivePokemon {
        jsonMap["activePokemon"] = try activePokemon.encode()
      }
      if hasTrainerPublicProfile {
        jsonMap["trainerPublicProfile"] = try trainerPublicProfile.encode()
      }
      if !reversePokemon.isEmpty {
        var jsonArrayReversePokemon:Array<Dictionary<String,AnyObject>> = []
          for oneValueReversePokemon in reversePokemon {
            let ecodedMessageReversePokemon = try oneValueReversePokemon.encode()
            jsonArrayReversePokemon += [ecodedMessageReversePokemon]
          }
        jsonMap["reversePokemon"] = jsonArrayReversePokemon
      }
      if !defeatedPokemon.isEmpty {
        var jsonArrayDefeatedPokemon:Array<Dictionary<String,AnyObject>> = []
          for oneValueDefeatedPokemon in defeatedPokemon {
            let ecodedMessageDefeatedPokemon = try oneValueDefeatedPokemon.encode()
            jsonArrayDefeatedPokemon += [ecodedMessageDefeatedPokemon]
          }
        jsonMap["defeatedPokemon"] = jsonArrayDefeatedPokemon
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Battle.BattleParticipant {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Data.Battle.BattleParticipant {
      return try Pogoprotos.Data.Battle.BattleParticipant.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasActivePokemon {
        output += "\(indent) activePokemon {\n"
        if let outDescActivePokemon = activePokemon {
          output += try outDescActivePokemon.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      if hasTrainerPublicProfile {
        output += "\(indent) trainerPublicProfile {\n"
        if let outDescTrainerPublicProfile = trainerPublicProfile {
          output += try outDescTrainerPublicProfile.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      var reversePokemonElementIndex:Int = 0
      for oneElementReversePokemon in reversePokemon {
          output += "\(indent) reversePokemon[\(reversePokemonElementIndex)] {\n"
          output += try oneElementReversePokemon.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          reversePokemonElementIndex += 1
      }
      var defeatedPokemonElementIndex:Int = 0
      for oneElementDefeatedPokemon in defeatedPokemon {
          output += "\(indent) defeatedPokemon[\(defeatedPokemonElementIndex)] {\n"
          output += try oneElementDefeatedPokemon.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          defeatedPokemonElementIndex += 1
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasActivePokemon {
                if let hashValueactivePokemon = activePokemon?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueactivePokemon
                }
            }
            if hasTrainerPublicProfile {
                if let hashValuetrainerPublicProfile = trainerPublicProfile?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuetrainerPublicProfile
                }
            }
            for oneElementReversePokemon in reversePokemon {
                hashCode = (hashCode &* 31) &+ oneElementReversePokemon.hashValue
            }
            for oneElementDefeatedPokemon in defeatedPokemon {
                hashCode = (hashCode &* 31) &+ oneElementDefeatedPokemon.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Data.Battle.BattleParticipant"
    }
    override public func className() -> String {
        return "Pogoprotos.Data.Battle.BattleParticipant"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Data.Battle.BattleParticipant.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Data.Battle.BattleParticipant = Pogoprotos.Data.Battle.BattleParticipant()
      public func getMessage() -> Pogoprotos.Data.Battle.BattleParticipant {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasActivePokemon:Bool {
           get {
               return builderResult.hasActivePokemon
           }
      }
      public var activePokemon:Pogoprotos.Data.Battle.BattlePokemonInfo! {
           get {
               if activePokemonBuilder_ != nil {
                  builderResult.activePokemon = activePokemonBuilder_.getMessage()
               }
               return builderResult.activePokemon
           }
           set (value) {
               builderResult.hasActivePokemon = true
               builderResult.activePokemon = value
           }
      }
      private var activePokemonBuilder_:Pogoprotos.Data.Battle.BattlePokemonInfo.Builder! {
           didSet {
              builderResult.hasActivePokemon = true
           }
      }
      public func getActivePokemonBuilder() -> Pogoprotos.Data.Battle.BattlePokemonInfo.Builder {
        if activePokemonBuilder_ == nil {
           activePokemonBuilder_ = Pogoprotos.Data.Battle.BattlePokemonInfo.Builder()
           builderResult.activePokemon = activePokemonBuilder_.getMessage()
           if activePokemon != nil {
              try! activePokemonBuilder_.mergeFrom(activePokemon)
           }
        }
        return activePokemonBuilder_
      }
      public func setActivePokemon(value:Pogoprotos.Data.Battle.BattlePokemonInfo!) -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        self.activePokemon = value
        return self
      }
      public func mergeActivePokemon(value:Pogoprotos.Data.Battle.BattlePokemonInfo) throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        if builderResult.hasActivePokemon {
          builderResult.activePokemon = try Pogoprotos.Data.Battle.BattlePokemonInfo.builderWithPrototype(builderResult.activePokemon).mergeFrom(value).buildPartial()
        } else {
          builderResult.activePokemon = value
        }
        builderResult.hasActivePokemon = true
        return self
      }
      public func clearActivePokemon() -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        activePokemonBuilder_ = nil
        builderResult.hasActivePokemon = false
        builderResult.activePokemon = nil
        return self
      }
      public var hasTrainerPublicProfile:Bool {
           get {
               return builderResult.hasTrainerPublicProfile
           }
      }
      public var trainerPublicProfile:Pogoprotos.Data.Player.PlayerPublicProfile! {
           get {
               if trainerPublicProfileBuilder_ != nil {
                  builderResult.trainerPublicProfile = trainerPublicProfileBuilder_.getMessage()
               }
               return builderResult.trainerPublicProfile
           }
           set (value) {
               builderResult.hasTrainerPublicProfile = true
               builderResult.trainerPublicProfile = value
           }
      }
      private var trainerPublicProfileBuilder_:Pogoprotos.Data.Player.PlayerPublicProfile.Builder! {
           didSet {
              builderResult.hasTrainerPublicProfile = true
           }
      }
      public func getTrainerPublicProfileBuilder() -> Pogoprotos.Data.Player.PlayerPublicProfile.Builder {
        if trainerPublicProfileBuilder_ == nil {
           trainerPublicProfileBuilder_ = Pogoprotos.Data.Player.PlayerPublicProfile.Builder()
           builderResult.trainerPublicProfile = trainerPublicProfileBuilder_.getMessage()
           if trainerPublicProfile != nil {
              try! trainerPublicProfileBuilder_.mergeFrom(trainerPublicProfile)
           }
        }
        return trainerPublicProfileBuilder_
      }
      public func setTrainerPublicProfile(value:Pogoprotos.Data.Player.PlayerPublicProfile!) -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        self.trainerPublicProfile = value
        return self
      }
      public func mergeTrainerPublicProfile(value:Pogoprotos.Data.Player.PlayerPublicProfile) throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        if builderResult.hasTrainerPublicProfile {
          builderResult.trainerPublicProfile = try Pogoprotos.Data.Player.PlayerPublicProfile.builderWithPrototype(builderResult.trainerPublicProfile).mergeFrom(value).buildPartial()
        } else {
          builderResult.trainerPublicProfile = value
        }
        builderResult.hasTrainerPublicProfile = true
        return self
      }
      public func clearTrainerPublicProfile() -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        trainerPublicProfileBuilder_ = nil
        builderResult.hasTrainerPublicProfile = false
        builderResult.trainerPublicProfile = nil
        return self
      }
      public var reversePokemon:Array<Pogoprotos.Data.Battle.BattlePokemonInfo> {
           get {
               return builderResult.reversePokemon
           }
           set (value) {
               builderResult.reversePokemon = value
           }
      }
      public func setReversePokemon(value:Array<Pogoprotos.Data.Battle.BattlePokemonInfo>) -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        self.reversePokemon = value
        return self
      }
      public func clearReversePokemon() -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        builderResult.reversePokemon.removeAll(keepCapacity: false)
        return self
      }
      public var defeatedPokemon:Array<Pogoprotos.Data.Battle.BattlePokemonInfo> {
           get {
               return builderResult.defeatedPokemon
           }
           set (value) {
               builderResult.defeatedPokemon = value
           }
      }
      public func setDefeatedPokemon(value:Array<Pogoprotos.Data.Battle.BattlePokemonInfo>) -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        self.defeatedPokemon = value
        return self
      }
      public func clearDefeatedPokemon() -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        builderResult.defeatedPokemon.removeAll(keepCapacity: false)
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        builderResult = Pogoprotos.Data.Battle.BattleParticipant()
        return self
      }
      override public func clone() throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        return try Pogoprotos.Data.Battle.BattleParticipant.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Data.Battle.BattleParticipant {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Data.Battle.BattleParticipant {
        let returnMe:Pogoprotos.Data.Battle.BattleParticipant = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Data.Battle.BattleParticipant) throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        if other == Pogoprotos.Data.Battle.BattleParticipant() {
         return self
        }
        if (other.hasActivePokemon) {
            try mergeActivePokemon(other.activePokemon)
        }
        if (other.hasTrainerPublicProfile) {
            try mergeTrainerPublicProfile(other.trainerPublicProfile)
        }
        if !other.reversePokemon.isEmpty  {
           builderResult.reversePokemon += other.reversePokemon
        }
        if !other.defeatedPokemon.isEmpty  {
           builderResult.defeatedPokemon += other.defeatedPokemon
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder:Pogoprotos.Data.Battle.BattlePokemonInfo.Builder = Pogoprotos.Data.Battle.BattlePokemonInfo.Builder()
            if hasActivePokemon {
              try subBuilder.mergeFrom(activePokemon)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            activePokemon = subBuilder.buildPartial()

          case 18:
            let subBuilder:Pogoprotos.Data.Player.PlayerPublicProfile.Builder = Pogoprotos.Data.Player.PlayerPublicProfile.Builder()
            if hasTrainerPublicProfile {
              try subBuilder.mergeFrom(trainerPublicProfile)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            trainerPublicProfile = subBuilder.buildPartial()

          case 26:
            let subBuilder = Pogoprotos.Data.Battle.BattlePokemonInfo.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            reversePokemon += [subBuilder.buildPartial()]

          case 34:
            let subBuilder = Pogoprotos.Data.Battle.BattlePokemonInfo.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            defeatedPokemon += [subBuilder.buildPartial()]

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        let resultDecodedBuilder = Pogoprotos.Data.Battle.BattleParticipant.Builder()
        if let jsonValueActivePokemon = jsonMap["activePokemon"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.activePokemon = try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder.decodeToBuilder(jsonValueActivePokemon).build()

        }
        if let jsonValueTrainerPublicProfile = jsonMap["trainerPublicProfile"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.trainerPublicProfile = try Pogoprotos.Data.Player.PlayerPublicProfile.Builder.decodeToBuilder(jsonValueTrainerPublicProfile).build()

        }
        if let jsonValueReversePokemon = jsonMap["reversePokemon"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayReversePokemon:Array<Pogoprotos.Data.Battle.BattlePokemonInfo> = []
          for oneValueReversePokemon in jsonValueReversePokemon {
            let messageFromStringReversePokemon = try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder.decodeToBuilder(oneValueReversePokemon).build()

            jsonArrayReversePokemon += [messageFromStringReversePokemon]
          }
          resultDecodedBuilder.reversePokemon = jsonArrayReversePokemon
        }
        if let jsonValueDefeatedPokemon = jsonMap["defeatedPokemon"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayDefeatedPokemon:Array<Pogoprotos.Data.Battle.BattlePokemonInfo> = []
          for oneValueDefeatedPokemon in jsonValueDefeatedPokemon {
            let messageFromStringDefeatedPokemon = try Pogoprotos.Data.Battle.BattlePokemonInfo.Builder.decodeToBuilder(oneValueDefeatedPokemon).build()

            jsonArrayDefeatedPokemon += [messageFromStringDefeatedPokemon]
          }
          resultDecodedBuilder.defeatedPokemon = jsonArrayDefeatedPokemon
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Data.Battle.BattleParticipant.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)