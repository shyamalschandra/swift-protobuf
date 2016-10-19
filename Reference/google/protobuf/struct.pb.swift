/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/struct.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation


///   `NullValue` is a singleton enumeration to represent the null value for the
///   `Value` type union.
///  
///    The JSON representation for `NullValue` is JSON `null`.
public enum Google_Protobuf_NullValue: ProtobufEnum {
  public typealias RawValue = Int

  ///   Null value.
  case nullValue // = 0
  case UNRECOGNIZED(Int)

  public init() {
    self = .nullValue
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .nullValue
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public init?(name: String) {
    switch name {
    case "nullValue": self = .nullValue
    default: return nil
    }
  }

  public init?(jsonName: String) {
    switch jsonName {
    case "NULL_VALUE": self = .nullValue
    default: return nil
    }
  }

  public init?(protoName: String) {
    switch protoName {
    case "NULL_VALUE": self = .nullValue
    default: return nil
    }
  }

  public var rawValue: Int {
    get {
      switch self {
      case .nullValue: return 0
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  public var json: String {
    get {
      switch self {
      case .nullValue: return "\"NULL_VALUE\""
      case .UNRECOGNIZED(let i): return String(i)
      }
    }
  }

  public var hashValue: Int { return rawValue }

  public var debugDescription: String {
    get {
      switch self {
      case .nullValue: return ".nullValue"
      case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
      }
    }
  }

}

///   `Struct` represents a structured data value, consisting of fields
///   which map to dynamically typed values. In some languages, `Struct`
///   might be supported by a native representation. For example, in
///   scripting languages like JS a struct is represented as an
///   object. The details of that representation are described together
///   with the proto support for the language.
///  
///   The JSON representation for `Struct` is JSON object.
public struct Google_Protobuf_Struct: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Google_Protobuf_Struct"}
  public var protoMessageName: String {return "Struct"}
  public var protoPackageName: String {return "google.protobuf"}
  public var jsonFieldNames: [String: Int] {return [
    "fields": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "fields": 1,
  ]}

  ///   Unordered map of dynamically typed values.
  public var fields: Dictionary<String,Google_Protobuf_Value> = [:]

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeMapField(fieldType: ProtobufMap<ProtobufString,Google_Protobuf_Value>.self, value: &fields)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if !fields.isEmpty {
      try visitor.visitMapField(fieldType: ProtobufMap<ProtobufString,Google_Protobuf_Value>.self, value: fields, protoFieldNumber: 1, protoFieldName: "fields", jsonFieldName: "fields", swiftFieldName: "fields")
    }
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Struct) -> Bool {
    if fields != other.fields {return false}
    return true
  }
}

///   `Value` represents a dynamically typed value which can be either
///   null, a number, a string, a boolean, a recursive struct value, or a
///   list of values. A producer of value is expected to set one of that
///   variants, absence of any variant indicates an error.
///  
///   The JSON representation for `Value` is JSON value.
public struct Google_Protobuf_Value: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Google_Protobuf_Value"}
  public var protoMessageName: String {return "Value"}
  public var protoPackageName: String {return "google.protobuf"}
  public var jsonFieldNames: [String: Int] {return [
    "nullValue": 1,
    "numberValue": 2,
    "stringValue": 3,
    "boolValue": 4,
    "structValue": 5,
    "listValue": 6,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "null_value": 1,
    "number_value": 2,
    "string_value": 3,
    "bool_value": 4,
    "struct_value": 5,
    "list_value": 6,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Google_Protobuf_Value
    var _kind = Google_Protobuf_Value.OneOf_Kind()

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1, 2, 3, 4, 5, 6:
        handled = try _kind.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      try _kind.traverse(visitor: &visitor, start: 1, end: 7)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _kind != other._kind {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._kind = _kind
      return clone
    }
  }

  private var _storage = _StorageClass()

  public enum OneOf_Kind: ExpressibleByNilLiteral, ProtobufOneofEnum {
    case nullValue(Google_Protobuf_NullValue)
    case numberValue(Double)
    case stringValue(String)
    case boolValue(Bool)
    case structValue(Google_Protobuf_Struct)
    case listValue(Google_Protobuf_ListValue)
    case None

    public init(nilLiteral: ()) {
      self = .None
    }

    public init() {
      self = .None
    }

    public mutating func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      if self != .None && setter.rejectConflictingOneof {
        throw ProtobufDecodingError.duplicatedOneOf
      }
      let handled: Bool
      switch protoFieldNumber {
      case 1:
        var value = Google_Protobuf_NullValue()
        handled = try setter.decodeSingularField(fieldType: Google_Protobuf_NullValue.self, value: &value)
        self = .nullValue(value)
      case 2:
        var value = Double()
        handled = try setter.decodeSingularField(fieldType: ProtobufDouble.self, value: &value)
        self = .numberValue(value)
      case 3:
        var value = String()
        handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &value)
        self = .stringValue(value)
      case 4:
        var value = Bool()
        handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &value)
        self = .boolValue(value)
      case 5:
        var value: Google_Protobuf_Struct?
        handled = try setter.decodeSingularMessageField(fieldType: Google_Protobuf_Struct.self, value: &value)
        if let value = value, handled {
          self = .structValue(value)
        }
      case 6:
        var value: Google_Protobuf_ListValue?
        handled = try setter.decodeSingularMessageField(fieldType: Google_Protobuf_ListValue.self, value: &value)
        if let value = value, handled {
          self = .listValue(value)
        }
      default:
        handled = false
        self = .None
      }
      return handled
    }

    public func traverse(visitor: inout ProtobufVisitor, start: Int, end: Int) throws {
      switch self {
      case .nullValue(let v):
        if start <= 1 && 1 < end {
          try visitor.visitSingularField(fieldType: Google_Protobuf_NullValue.self, value: v, protoFieldNumber: 1, protoFieldName: "null_value", jsonFieldName: "nullValue", swiftFieldName: "nullValue")
        }
      case .numberValue(let v):
        if start <= 2 && 2 < end {
          try visitor.visitSingularField(fieldType: ProtobufDouble.self, value: v, protoFieldNumber: 2, protoFieldName: "number_value", jsonFieldName: "numberValue", swiftFieldName: "numberValue")
        }
      case .stringValue(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: v, protoFieldNumber: 3, protoFieldName: "string_value", jsonFieldName: "stringValue", swiftFieldName: "stringValue")
        }
      case .boolValue(let v):
        if start <= 4 && 4 < end {
          try visitor.visitSingularField(fieldType: ProtobufBool.self, value: v, protoFieldNumber: 4, protoFieldName: "bool_value", jsonFieldName: "boolValue", swiftFieldName: "boolValue")
        }
      case .structValue(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 5, protoFieldName: "struct_value", jsonFieldName: "structValue", swiftFieldName: "structValue")
        }
      case .listValue(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 6, protoFieldName: "list_value", jsonFieldName: "listValue", swiftFieldName: "listValue")
        }
      case .None:
        break
      }
    }
  }

  ///   Represents a null value.
  public var nullValue: Google_Protobuf_NullValue {
    get {
      if case .nullValue(let v) = _storage._kind {
        return v
      }
      return Google_Protobuf_NullValue.nullValue
    }
    set {
      _uniqueStorage()._kind = .nullValue(newValue)
    }
  }

  ///   Represents a double value.
  public var numberValue: Double {
    get {
      if case .numberValue(let v) = _storage._kind {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._kind = .numberValue(newValue)
    }
  }

  ///   Represents a string value.
  public var stringValue: String {
    get {
      if case .stringValue(let v) = _storage._kind {
        return v
      }
      return ""
    }
    set {
      _uniqueStorage()._kind = .stringValue(newValue)
    }
  }

  ///   Represents a boolean value.
  public var boolValue: Bool {
    get {
      if case .boolValue(let v) = _storage._kind {
        return v
      }
      return false
    }
    set {
      _uniqueStorage()._kind = .boolValue(newValue)
    }
  }

  ///   Represents a structured value.
  public var structValue: Google_Protobuf_Struct {
    get {
      if case .structValue(let v) = _storage._kind {
        return v
      }
      return Google_Protobuf_Struct()
    }
    set {
      _uniqueStorage()._kind = .structValue(newValue)
    }
  }

  ///   Represents a repeated `Value`.
  public var listValue: Google_Protobuf_ListValue {
    get {
      if case .listValue(let v) = _storage._kind {
        return v
      }
      return Google_Protobuf_ListValue()
    }
    set {
      _uniqueStorage()._kind = .listValue(newValue)
    }
  }

  public var kind: OneOf_Kind {
    get {return _storage._kind}
    set {
      _uniqueStorage()._kind = newValue
    }
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Value) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   `ListValue` is a wrapper around a repeated field of values.
///  
///   The JSON representation for `ListValue` is JSON array.
public struct Google_Protobuf_ListValue: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Google_Protobuf_ListValue"}
  public var protoMessageName: String {return "ListValue"}
  public var protoPackageName: String {return "google.protobuf"}
  public var jsonFieldNames: [String: Int] {return [
    "values": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "values": 1,
  ]}

  ///   Repeated field of dynamically typed values.
  public var values: [Google_Protobuf_Value] = []

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Value.self, value: &values)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if !values.isEmpty {
      try visitor.visitRepeatedMessageField(value: values, protoFieldNumber: 1, protoFieldName: "values", jsonFieldName: "values", swiftFieldName: "values")
    }
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_ListValue) -> Bool {
    if values != other.values {return false}
    return true
  }
}

public func ==(lhs: Google_Protobuf_Value.OneOf_Kind, rhs: Google_Protobuf_Value.OneOf_Kind) -> Bool {
  switch (lhs, rhs) {
  case (.nullValue(let l), .nullValue(let r)): return l == r
  case (.numberValue(let l), .numberValue(let r)): return l == r
  case (.stringValue(let l), .stringValue(let r)): return l == r
  case (.boolValue(let l), .boolValue(let r)): return l == r
  case (.structValue(let l), .structValue(let r)): return l == r
  case (.listValue(let l), .listValue(let r)): return l == r
  case (.None, .None): return true
  default: return false
  }
}
