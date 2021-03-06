// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "SetContactSettingsMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage, rhs: Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasContactSettings == rhs.hasContactSettings) && (!lhs.hasContactSettings || lhs.contactSettings == rhs.contactSettings)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct SetContactSettingsMessageRoot {
    public static var sharedInstance : SetContactSettingsMessageRoot {
     struct Static {
         static let instance : SetContactSettingsMessageRoot = SetContactSettingsMessageRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Player.ContactSettingsRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class SetContactSettingsMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasContactSettings:Bool = false
    public private(set) var contactSettings:Pogoprotos.Data.Player.ContactSettings!
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasContactSettings {
        try output.writeMessage(1, value:contactSettings)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasContactSettings {
          if let varSizecontactSettings = contactSettings?.computeMessageSize(1) {
              serialize_size += varSizecontactSettings
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage? {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasContactSettings {
        jsonMap["contactSettings"] = try contactSettings.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasContactSettings {
        output += "\(indent) contactSettings {\n"
        if let outDescContactSettings = contactSettings {
          output += try outDescContactSettings.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasContactSettings {
                if let hashValuecontactSettings = contactSettings?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuecontactSettings
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage = Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasContactSettings:Bool {
           get {
               return builderResult.hasContactSettings
           }
      }
      public var contactSettings:Pogoprotos.Data.Player.ContactSettings! {
           get {
               if contactSettingsBuilder_ != nil {
                  builderResult.contactSettings = contactSettingsBuilder_.getMessage()
               }
               return builderResult.contactSettings
           }
           set (value) {
               builderResult.hasContactSettings = true
               builderResult.contactSettings = value
           }
      }
      private var contactSettingsBuilder_:Pogoprotos.Data.Player.ContactSettings.Builder! {
           didSet {
              builderResult.hasContactSettings = true
           }
      }
      public func getContactSettingsBuilder() -> Pogoprotos.Data.Player.ContactSettings.Builder {
        if contactSettingsBuilder_ == nil {
           contactSettingsBuilder_ = Pogoprotos.Data.Player.ContactSettings.Builder()
           builderResult.contactSettings = contactSettingsBuilder_.getMessage()
           if contactSettings != nil {
              try! contactSettingsBuilder_.mergeFrom(contactSettings)
           }
        }
        return contactSettingsBuilder_
      }
      public func setContactSettings(value:Pogoprotos.Data.Player.ContactSettings!) -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        self.contactSettings = value
        return self
      }
      public func mergeContactSettings(value:Pogoprotos.Data.Player.ContactSettings) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        if builderResult.hasContactSettings {
          builderResult.contactSettings = try Pogoprotos.Data.Player.ContactSettings.builderWithPrototype(builderResult.contactSettings).mergeFrom(value).buildPartial()
        } else {
          builderResult.contactSettings = value
        }
        builderResult.hasContactSettings = true
        return self
      }
      public func clearContactSettings() -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        contactSettingsBuilder_ = nil
        builderResult.hasContactSettings = false
        builderResult.contactSettings = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage() {
         return self
        }
        if (other.hasContactSettings) {
            try mergeContactSettings(other.contactSettings)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder:Pogoprotos.Data.Player.ContactSettings.Builder = Pogoprotos.Data.Player.ContactSettings.Builder()
            if hasContactSettings {
              try subBuilder.mergeFrom(contactSettings)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            contactSettings = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder()
        if let jsonValueContactSettings = jsonMap["contactSettings"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.contactSettings = try Pogoprotos.Data.Player.ContactSettings.Builder.decodeToBuilder(jsonValueContactSettings).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.SetContactSettingsMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
