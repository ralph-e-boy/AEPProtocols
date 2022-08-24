// Generated using Sourcery 1.8.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable vertical_whitespace

import AEPCore
import AEPIdentity
import AEPLifecycle
import AEPServices
import AEPSignal
import Foundation

// MARK: MobileCoreProtocol , based on MobileCore

public protocol MobileCoreProtocol {
    // MARK: - variables

    static var extensionVersion: String { get }
    static var messagingDelegate: MessagingDelegate? { get set }

    // MARK: - functions

    static func registerExtensions(_ extensions: [NSObject.Type],
                                   _ completion: (() -> Void)?) -> Void
    static func registerExtension(_ exten: Extension.Type,
                                  _ completion: (() -> Void)?) -> Void
    static func unregisterExtension(_ exten: Extension.Type,
                                    _ completion: (() -> Void)?) -> Void
    static func getRegisteredExtensions() -> String
    static func dispatch(event: Event) -> Void
    static func dispatch(event: Event,
                         timeout: TimeInterval,
                         responseCallback: @escaping (Event?) -> Void) -> Void
    static func registerEventListener(type: String,
                                      source: String,
                                      listener: @escaping EventListener) -> Void
    static func setAdvertisingIdentifier(_ identifier: String?) -> Void
    static func setPushIdentifier(_ deviceToken: Data?) -> Void
    static func setWrapperType(_ type: WrapperType) -> Void
    static func setLogLevel(_ level: LogLevel) -> Void
    static func setAppGroup(_ group: String?) -> Void
    static func collectMessageInfo(_ messageInfo: [String: Any]) -> Void
    static func collectLaunchInfo(_ userInfo: [String: Any]) -> Void
    static func collectPii(_ data: [String: Any]) -> Void
}

// end generated protocol

extension MobileCore: MobileCoreProtocol {}

// swiftlint:disable vertical_whitespace

import AEPCore
import AEPIdentity
import AEPLifecycle
import AEPServices
import AEPSignal
import Foundation

// MobileCoreInterface, based on MobileCore
public enum MobileCoreInterface {
    public static var extensionVersion: String = ""
    public static var messagingDelegate: MessagingDelegate?

    public static func registerExtensions(_: [NSObject.Type],
                                          _: (() -> Void)?) {}

    public static func registerExtension(_: Extension.Type,
                                         _: (() -> Void)?) {}

    public static func unregisterExtension(_: Extension.Type,
                                           _: (() -> Void)?) {}

    public static func getRegisteredExtensions() -> String {
        ""
    }

    public static func dispatch(event _: Event) {}

    public static func dispatch(event _: Event,
                                timeout _: TimeInterval,
                                responseCallback _: @escaping (Event?) -> Void) {}

    public static func registerEventListener(type _: String,
                                             source _: String,
                                             listener _: @escaping EventListener) {}

    public static func setAdvertisingIdentifier(_: String?) {}

    public static func setPushIdentifier(_: Data?) {}

    public static func setWrapperType(_: WrapperType) {}

    public static func setLogLevel(_: LogLevel) {}

    public static func setAppGroup(_: String?) {}

    public static func collectMessageInfo(_: [String: Any]) {}

    public static func collectLaunchInfo(_: [String: Any]) {}

    public static func collectPii(_: [String: Any]) {}
}

extension MobileCoreInterface: MobileCoreProtocol {}
