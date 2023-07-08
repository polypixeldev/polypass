// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.62.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'dart:ffi' as ffi;

abstract class Libpolypass {
  FtpProvider initializeProvider({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kInitializeProviderConstMeta;

  RwLockFtpProvider initializeLockedProvider({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kInitializeLockedProviderConstMeta;

  FtpUrl initializeFtpUrl(
      {required String path,
      required String host,
      required String user,
      required String pass,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kInitializeFtpUrlConstMeta;

  Future<void> connect(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectConstMeta;

  Future<void> disconnect(
      {required RwLockFtpProvider providerLock, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDisconnectConstMeta;

  Future<void> checkConnection(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCheckConnectionConstMeta;

  Future<String> readFile(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReadFileConstMeta;

  Future<void> updateFile(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      required String contents,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kUpdateFileConstMeta;

  Future<void> deleteFile(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDeleteFileConstMeta;

  Future<bool> fileExists(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kFileExistsConstMeta;

  Future<void> clearPoison(
      {required RwLockFtpProvider providerLock, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kClearPoisonConstMeta;

  DropFnType get dropOpaqueFtpProvider;
  ShareFnType get shareOpaqueFtpProvider;
  OpaqueTypeFinalizer get FtpProviderFinalizer;

  DropFnType get dropOpaqueFtpUrl;
  ShareFnType get shareOpaqueFtpUrl;
  OpaqueTypeFinalizer get FtpUrlFinalizer;

  DropFnType get dropOpaqueRwLockFtpProvider;
  ShareFnType get shareOpaqueRwLockFtpProvider;
  OpaqueTypeFinalizer get RwLockFtpProviderFinalizer;
}

@sealed
class FtpProvider extends FrbOpaque {
  final Libpolypass bridge;
  FtpProvider.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueFtpProvider;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueFtpProvider;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.FtpProviderFinalizer;
}

@sealed
class FtpUrl extends FrbOpaque {
  final Libpolypass bridge;
  FtpUrl.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueFtpUrl;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueFtpUrl;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.FtpUrlFinalizer;
}

@sealed
class RwLockFtpProvider extends FrbOpaque {
  final Libpolypass bridge;
  RwLockFtpProvider.fromRaw(int ptr, int size, this.bridge)
      : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueRwLockFtpProvider;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueRwLockFtpProvider;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.RwLockFtpProviderFinalizer;
}

class LibpolypassImpl implements Libpolypass {
  final LibpolypassPlatform _platform;
  factory LibpolypassImpl(ExternalLibrary dylib) =>
      LibpolypassImpl.raw(LibpolypassPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory LibpolypassImpl.wasm(FutureOr<WasmModule> module) =>
      LibpolypassImpl(module as ExternalLibrary);
  LibpolypassImpl.raw(this._platform);
  FtpProvider initializeProvider({dynamic hint}) {
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_initialize_provider(),
      parseSuccessData: _wire2api_FtpProvider,
      constMeta: kInitializeProviderConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitializeProviderConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "initialize_provider",
        argNames: [],
      );

  RwLockFtpProvider initializeLockedProvider({dynamic hint}) {
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_initialize_locked_provider(),
      parseSuccessData: _wire2api_RwLockFtpProvider,
      constMeta: kInitializeLockedProviderConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitializeLockedProviderConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "initialize_locked_provider",
        argNames: [],
      );

  FtpUrl initializeFtpUrl(
      {required String path,
      required String host,
      required String user,
      required String pass,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    var arg1 = _platform.api2wire_String(host);
    var arg2 = _platform.api2wire_String(user);
    var arg3 = _platform.api2wire_String(pass);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () =>
          _platform.inner.wire_initialize_ftp_url(arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_FtpUrl,
      constMeta: kInitializeFtpUrlConstMeta,
      argValues: [path, host, user, pass],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitializeFtpUrlConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "initialize_ftp_url",
        argNames: ["path", "host", "user", "pass"],
      );

  Future<void> connect(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint}) {
    var arg0 = _platform.api2wire_RwLockFtpProvider(providerLock);
    var arg1 = _platform.api2wire_FtpUrl(url);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_connect(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectConstMeta,
      argValues: [providerLock, url],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connect",
        argNames: ["providerLock", "url"],
      );

  Future<void> disconnect(
      {required RwLockFtpProvider providerLock, dynamic hint}) {
    var arg0 = _platform.api2wire_RwLockFtpProvider(providerLock);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_disconnect(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kDisconnectConstMeta,
      argValues: [providerLock],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDisconnectConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "disconnect",
        argNames: ["providerLock"],
      );

  Future<void> checkConnection(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint}) {
    var arg0 = _platform.api2wire_RwLockFtpProvider(providerLock);
    var arg1 = _platform.api2wire_FtpUrl(url);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_check_connection(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kCheckConnectionConstMeta,
      argValues: [providerLock, url],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCheckConnectionConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "check_connection",
        argNames: ["providerLock", "url"],
      );

  Future<String> readFile(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint}) {
    var arg0 = _platform.api2wire_RwLockFtpProvider(providerLock);
    var arg1 = _platform.api2wire_FtpUrl(url);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_read_file(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kReadFileConstMeta,
      argValues: [providerLock, url],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kReadFileConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "read_file",
        argNames: ["providerLock", "url"],
      );

  Future<void> updateFile(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      required String contents,
      dynamic hint}) {
    var arg0 = _platform.api2wire_RwLockFtpProvider(providerLock);
    var arg1 = _platform.api2wire_FtpUrl(url);
    var arg2 = _platform.api2wire_String(contents);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_update_file(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kUpdateFileConstMeta,
      argValues: [providerLock, url, contents],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kUpdateFileConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "update_file",
        argNames: ["providerLock", "url", "contents"],
      );

  Future<void> deleteFile(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint}) {
    var arg0 = _platform.api2wire_RwLockFtpProvider(providerLock);
    var arg1 = _platform.api2wire_FtpUrl(url);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_delete_file(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kDeleteFileConstMeta,
      argValues: [providerLock, url],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDeleteFileConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "delete_file",
        argNames: ["providerLock", "url"],
      );

  Future<bool> fileExists(
      {required RwLockFtpProvider providerLock,
      required FtpUrl url,
      dynamic hint}) {
    var arg0 = _platform.api2wire_RwLockFtpProvider(providerLock);
    var arg1 = _platform.api2wire_FtpUrl(url);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_file_exists(port_, arg0, arg1),
      parseSuccessData: _wire2api_bool,
      constMeta: kFileExistsConstMeta,
      argValues: [providerLock, url],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kFileExistsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "file_exists",
        argNames: ["providerLock", "url"],
      );

  Future<void> clearPoison(
      {required RwLockFtpProvider providerLock, dynamic hint}) {
    var arg0 = _platform.api2wire_RwLockFtpProvider(providerLock);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_clear_poison(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kClearPoisonConstMeta,
      argValues: [providerLock],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kClearPoisonConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "clear_poison",
        argNames: ["providerLock"],
      );

  DropFnType get dropOpaqueFtpProvider =>
      _platform.inner.drop_opaque_FtpProvider;
  ShareFnType get shareOpaqueFtpProvider =>
      _platform.inner.share_opaque_FtpProvider;
  OpaqueTypeFinalizer get FtpProviderFinalizer =>
      _platform.FtpProviderFinalizer;

  DropFnType get dropOpaqueFtpUrl => _platform.inner.drop_opaque_FtpUrl;
  ShareFnType get shareOpaqueFtpUrl => _platform.inner.share_opaque_FtpUrl;
  OpaqueTypeFinalizer get FtpUrlFinalizer => _platform.FtpUrlFinalizer;

  DropFnType get dropOpaqueRwLockFtpProvider =>
      _platform.inner.drop_opaque_RwLockFtpProvider;
  ShareFnType get shareOpaqueRwLockFtpProvider =>
      _platform.inner.share_opaque_RwLockFtpProvider;
  OpaqueTypeFinalizer get RwLockFtpProviderFinalizer =>
      _platform.RwLockFtpProviderFinalizer;

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  FtpProvider _wire2api_FtpProvider(dynamic raw) {
    return FtpProvider.fromRaw(raw[0], raw[1], this);
  }

  FtpUrl _wire2api_FtpUrl(dynamic raw) {
    return FtpUrl.fromRaw(raw[0], raw[1], this);
  }

  RwLockFtpProvider _wire2api_RwLockFtpProvider(dynamic raw) {
    return RwLockFtpProvider.fromRaw(raw[0], raw[1], this);
  }

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class LibpolypassPlatform extends FlutterRustBridgeBase<LibpolypassWire> {
  LibpolypassPlatform(ffi.DynamicLibrary dylib) : super(LibpolypassWire(dylib));

// Section: api2wire

  @protected
  wire_FtpUrl api2wire_FtpUrl(FtpUrl raw) {
    final ptr = inner.new_FtpUrl();
    _api_fill_to_wire_FtpUrl(raw, ptr);
    return ptr;
  }

  @protected
  wire_RwLockFtpProvider api2wire_RwLockFtpProvider(RwLockFtpProvider raw) {
    final ptr = inner.new_RwLockFtpProvider();
    _api_fill_to_wire_RwLockFtpProvider(raw, ptr);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

  late final OpaqueTypeFinalizer _FtpProviderFinalizer =
      OpaqueTypeFinalizer(inner._drop_opaque_FtpProviderPtr);
  OpaqueTypeFinalizer get FtpProviderFinalizer => _FtpProviderFinalizer;
  late final OpaqueTypeFinalizer _FtpUrlFinalizer =
      OpaqueTypeFinalizer(inner._drop_opaque_FtpUrlPtr);
  OpaqueTypeFinalizer get FtpUrlFinalizer => _FtpUrlFinalizer;
  late final OpaqueTypeFinalizer _RwLockFtpProviderFinalizer =
      OpaqueTypeFinalizer(inner._drop_opaque_RwLockFtpProviderPtr);
  OpaqueTypeFinalizer get RwLockFtpProviderFinalizer =>
      _RwLockFtpProviderFinalizer;
// Section: api_fill_to_wire

  void _api_fill_to_wire_FtpUrl(FtpUrl apiObj, wire_FtpUrl wireObj) {
    wireObj.ptr = apiObj.shareOrMove();
  }

  void _api_fill_to_wire_RwLockFtpProvider(
      RwLockFtpProvider apiObj, wire_RwLockFtpProvider wireObj) {
    wireObj.ptr = apiObj.shareOrMove();
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class LibpolypassWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  LibpolypassWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  LibpolypassWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  WireSyncReturn wire_initialize_provider() {
    return _wire_initialize_provider();
  }

  late final _wire_initialize_providerPtr =
      _lookup<ffi.NativeFunction<WireSyncReturn Function()>>(
          'wire_initialize_provider');
  late final _wire_initialize_provider =
      _wire_initialize_providerPtr.asFunction<WireSyncReturn Function()>();

  WireSyncReturn wire_initialize_locked_provider() {
    return _wire_initialize_locked_provider();
  }

  late final _wire_initialize_locked_providerPtr =
      _lookup<ffi.NativeFunction<WireSyncReturn Function()>>(
          'wire_initialize_locked_provider');
  late final _wire_initialize_locked_provider =
      _wire_initialize_locked_providerPtr
          .asFunction<WireSyncReturn Function()>();

  WireSyncReturn wire_initialize_ftp_url(
    ffi.Pointer<wire_uint_8_list> path,
    ffi.Pointer<wire_uint_8_list> host,
    ffi.Pointer<wire_uint_8_list> user,
    ffi.Pointer<wire_uint_8_list> pass,
  ) {
    return _wire_initialize_ftp_url(
      path,
      host,
      user,
      pass,
    );
  }

  late final _wire_initialize_ftp_urlPtr = _lookup<
      ffi.NativeFunction<
          WireSyncReturn Function(
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_initialize_ftp_url');
  late final _wire_initialize_ftp_url = _wire_initialize_ftp_urlPtr.asFunction<
      WireSyncReturn Function(
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>)>();

  void wire_connect(
    int port_,
    wire_RwLockFtpProvider provider_lock,
    wire_FtpUrl url,
  ) {
    return _wire_connect(
      port_,
      provider_lock,
      url,
    );
  }

  late final _wire_connectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, wire_RwLockFtpProvider, wire_FtpUrl)>>('wire_connect');
  late final _wire_connect = _wire_connectPtr
      .asFunction<void Function(int, wire_RwLockFtpProvider, wire_FtpUrl)>();

  void wire_disconnect(
    int port_,
    wire_RwLockFtpProvider provider_lock,
  ) {
    return _wire_disconnect(
      port_,
      provider_lock,
    );
  }

  late final _wire_disconnectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, wire_RwLockFtpProvider)>>('wire_disconnect');
  late final _wire_disconnect = _wire_disconnectPtr
      .asFunction<void Function(int, wire_RwLockFtpProvider)>();

  void wire_check_connection(
    int port_,
    wire_RwLockFtpProvider provider_lock,
    wire_FtpUrl url,
  ) {
    return _wire_check_connection(
      port_,
      provider_lock,
      url,
    );
  }

  late final _wire_check_connectionPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, wire_RwLockFtpProvider,
              wire_FtpUrl)>>('wire_check_connection');
  late final _wire_check_connection = _wire_check_connectionPtr
      .asFunction<void Function(int, wire_RwLockFtpProvider, wire_FtpUrl)>();

  void wire_read_file(
    int port_,
    wire_RwLockFtpProvider provider_lock,
    wire_FtpUrl url,
  ) {
    return _wire_read_file(
      port_,
      provider_lock,
      url,
    );
  }

  late final _wire_read_filePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, wire_RwLockFtpProvider,
              wire_FtpUrl)>>('wire_read_file');
  late final _wire_read_file = _wire_read_filePtr
      .asFunction<void Function(int, wire_RwLockFtpProvider, wire_FtpUrl)>();

  void wire_update_file(
    int port_,
    wire_RwLockFtpProvider provider_lock,
    wire_FtpUrl url,
    ffi.Pointer<wire_uint_8_list> contents,
  ) {
    return _wire_update_file(
      port_,
      provider_lock,
      url,
      contents,
    );
  }

  late final _wire_update_filePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, wire_RwLockFtpProvider, wire_FtpUrl,
              ffi.Pointer<wire_uint_8_list>)>>('wire_update_file');
  late final _wire_update_file = _wire_update_filePtr.asFunction<
      void Function(int, wire_RwLockFtpProvider, wire_FtpUrl,
          ffi.Pointer<wire_uint_8_list>)>();

  void wire_delete_file(
    int port_,
    wire_RwLockFtpProvider provider_lock,
    wire_FtpUrl url,
  ) {
    return _wire_delete_file(
      port_,
      provider_lock,
      url,
    );
  }

  late final _wire_delete_filePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, wire_RwLockFtpProvider,
              wire_FtpUrl)>>('wire_delete_file');
  late final _wire_delete_file = _wire_delete_filePtr
      .asFunction<void Function(int, wire_RwLockFtpProvider, wire_FtpUrl)>();

  void wire_file_exists(
    int port_,
    wire_RwLockFtpProvider provider_lock,
    wire_FtpUrl url,
  ) {
    return _wire_file_exists(
      port_,
      provider_lock,
      url,
    );
  }

  late final _wire_file_existsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, wire_RwLockFtpProvider,
              wire_FtpUrl)>>('wire_file_exists');
  late final _wire_file_exists = _wire_file_existsPtr
      .asFunction<void Function(int, wire_RwLockFtpProvider, wire_FtpUrl)>();

  void wire_clear_poison(
    int port_,
    wire_RwLockFtpProvider provider_lock,
  ) {
    return _wire_clear_poison(
      port_,
      provider_lock,
    );
  }

  late final _wire_clear_poisonPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, wire_RwLockFtpProvider)>>('wire_clear_poison');
  late final _wire_clear_poison = _wire_clear_poisonPtr
      .asFunction<void Function(int, wire_RwLockFtpProvider)>();

  wire_FtpUrl new_FtpUrl() {
    return _new_FtpUrl();
  }

  late final _new_FtpUrlPtr =
      _lookup<ffi.NativeFunction<wire_FtpUrl Function()>>('new_FtpUrl');
  late final _new_FtpUrl = _new_FtpUrlPtr.asFunction<wire_FtpUrl Function()>();

  wire_RwLockFtpProvider new_RwLockFtpProvider() {
    return _new_RwLockFtpProvider();
  }

  late final _new_RwLockFtpProviderPtr =
      _lookup<ffi.NativeFunction<wire_RwLockFtpProvider Function()>>(
          'new_RwLockFtpProvider');
  late final _new_RwLockFtpProvider =
      _new_RwLockFtpProviderPtr.asFunction<wire_RwLockFtpProvider Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void drop_opaque_FtpProvider(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _drop_opaque_FtpProvider(
      ptr,
    );
  }

  late final _drop_opaque_FtpProviderPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'drop_opaque_FtpProvider');
  late final _drop_opaque_FtpProvider = _drop_opaque_FtpProviderPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<ffi.Void> share_opaque_FtpProvider(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _share_opaque_FtpProvider(
      ptr,
    );
  }

  late final _share_opaque_FtpProviderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>)>>('share_opaque_FtpProvider');
  late final _share_opaque_FtpProvider = _share_opaque_FtpProviderPtr
      .asFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>();

  void drop_opaque_FtpUrl(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _drop_opaque_FtpUrl(
      ptr,
    );
  }

  late final _drop_opaque_FtpUrlPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'drop_opaque_FtpUrl');
  late final _drop_opaque_FtpUrl =
      _drop_opaque_FtpUrlPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<ffi.Void> share_opaque_FtpUrl(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _share_opaque_FtpUrl(
      ptr,
    );
  }

  late final _share_opaque_FtpUrlPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>)>>('share_opaque_FtpUrl');
  late final _share_opaque_FtpUrl = _share_opaque_FtpUrlPtr
      .asFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>();

  void drop_opaque_RwLockFtpProvider(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _drop_opaque_RwLockFtpProvider(
      ptr,
    );
  }

  late final _drop_opaque_RwLockFtpProviderPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'drop_opaque_RwLockFtpProvider');
  late final _drop_opaque_RwLockFtpProvider = _drop_opaque_RwLockFtpProviderPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<ffi.Void> share_opaque_RwLockFtpProvider(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _share_opaque_RwLockFtpProvider(
      ptr,
    );
  }

  late final _share_opaque_RwLockFtpProviderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>)>>('share_opaque_RwLockFtpProvider');
  late final _share_opaque_RwLockFtpProvider =
      _share_opaque_RwLockFtpProviderPtr
          .asFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_RwLockFtpProvider extends ffi.Struct {
  external ffi.Pointer<ffi.Void> ptr;
}

class wire_FtpUrl extends ffi.Struct {
  external ffi.Pointer<ffi.Void> ptr;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
