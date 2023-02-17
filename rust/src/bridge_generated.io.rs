use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_initialize_provider() -> support::WireSyncReturn {
    wire_initialize_provider_impl()
}

#[no_mangle]
pub extern "C" fn wire_initialize_locked_provider() -> support::WireSyncReturn {
    wire_initialize_locked_provider_impl()
}

#[no_mangle]
pub extern "C" fn wire_initialize_ftp_url(
    path: *mut wire_uint_8_list,
    host: *mut wire_uint_8_list,
    user: *mut wire_uint_8_list,
    pass: *mut wire_uint_8_list,
) -> support::WireSyncReturn {
    wire_initialize_ftp_url_impl(path, host, user, pass)
}

#[no_mangle]
pub extern "C" fn wire_connect(
    port_: i64,
    provider_lock: wire_RwLockFtpProvider,
    url: wire_FtpUrl,
) {
    wire_connect_impl(port_, provider_lock, url)
}

#[no_mangle]
pub extern "C" fn wire_disconnect(port_: i64, provider_lock: wire_RwLockFtpProvider) {
    wire_disconnect_impl(port_, provider_lock)
}

#[no_mangle]
pub extern "C" fn wire_check_connection(
    port_: i64,
    provider_lock: wire_RwLockFtpProvider,
    url: wire_FtpUrl,
) {
    wire_check_connection_impl(port_, provider_lock, url)
}

#[no_mangle]
pub extern "C" fn wire_read_file(
    port_: i64,
    provider_lock: wire_RwLockFtpProvider,
    url: wire_FtpUrl,
) {
    wire_read_file_impl(port_, provider_lock, url)
}

#[no_mangle]
pub extern "C" fn wire_update_file(
    port_: i64,
    provider_lock: wire_RwLockFtpProvider,
    url: wire_FtpUrl,
    contents: *mut wire_uint_8_list,
) {
    wire_update_file_impl(port_, provider_lock, url, contents)
}

#[no_mangle]
pub extern "C" fn wire_delete_file(
    port_: i64,
    provider_lock: wire_RwLockFtpProvider,
    url: wire_FtpUrl,
) {
    wire_delete_file_impl(port_, provider_lock, url)
}

#[no_mangle]
pub extern "C" fn wire_file_exists(
    port_: i64,
    provider_lock: wire_RwLockFtpProvider,
    url: wire_FtpUrl,
) {
    wire_file_exists_impl(port_, provider_lock, url)
}

#[no_mangle]
pub extern "C" fn wire_clear_poison(port_: i64, provider_lock: wire_RwLockFtpProvider) {
    wire_clear_poison_impl(port_, provider_lock)
}

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_FtpUrl() -> wire_FtpUrl {
    wire_FtpUrl::new_with_null_ptr()
}

#[no_mangle]
pub extern "C" fn new_RwLockFtpProvider() -> wire_RwLockFtpProvider {
    wire_RwLockFtpProvider::new_with_null_ptr()
}

#[no_mangle]
pub extern "C" fn new_uint_8_list_0(len: i32) -> *mut wire_uint_8_list {
    let ans = wire_uint_8_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

// Section: related functions

#[no_mangle]
pub extern "C" fn drop_opaque_FtpProvider(ptr: *const c_void) {
    unsafe {
        Arc::<FtpProvider>::decrement_strong_count(ptr as _);
    }
}

#[no_mangle]
pub extern "C" fn share_opaque_FtpProvider(ptr: *const c_void) -> *const c_void {
    unsafe {
        Arc::<FtpProvider>::increment_strong_count(ptr as _);
        ptr
    }
}

#[no_mangle]
pub extern "C" fn drop_opaque_FtpUrl(ptr: *const c_void) {
    unsafe {
        Arc::<FtpUrl>::decrement_strong_count(ptr as _);
    }
}

#[no_mangle]
pub extern "C" fn share_opaque_FtpUrl(ptr: *const c_void) -> *const c_void {
    unsafe {
        Arc::<FtpUrl>::increment_strong_count(ptr as _);
        ptr
    }
}

#[no_mangle]
pub extern "C" fn drop_opaque_RwLockFtpProvider(ptr: *const c_void) {
    unsafe {
        Arc::<RwLock<FtpProvider>>::decrement_strong_count(ptr as _);
    }
}

#[no_mangle]
pub extern "C" fn share_opaque_RwLockFtpProvider(ptr: *const c_void) -> *const c_void {
    unsafe {
        Arc::<RwLock<FtpProvider>>::increment_strong_count(ptr as _);
        ptr
    }
}

// Section: impl Wire2Api

impl Wire2Api<RustOpaque<FtpUrl>> for wire_FtpUrl {
    fn wire2api(self) -> RustOpaque<FtpUrl> {
        unsafe { support::opaque_from_dart(self.ptr as _) }
    }
}
impl Wire2Api<RustOpaque<RwLock<FtpProvider>>> for wire_RwLockFtpProvider {
    fn wire2api(self) -> RustOpaque<RwLock<FtpProvider>> {
        unsafe { support::opaque_from_dart(self.ptr as _) }
    }
}
impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}

impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
    fn wire2api(self) -> Vec<u8> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}
// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_FtpUrl {
    ptr: *const core::ffi::c_void,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_RwLockFtpProvider {
    ptr: *const core::ffi::c_void,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_8_list {
    ptr: *mut u8,
    len: i32,
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

impl NewWithNullPtr for wire_FtpUrl {
    fn new_with_null_ptr() -> Self {
        Self {
            ptr: core::ptr::null(),
        }
    }
}
impl NewWithNullPtr for wire_RwLockFtpProvider {
    fn new_with_null_ptr() -> Self {
        Self {
            ptr: core::ptr::null(),
        }
    }
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
    unsafe {
        let _ = support::box_from_leak_ptr(ptr);
    };
}
