use flutter_rust_bridge::{RustOpaque, SyncReturn};
pub use std::sync::RwLock;
use std::{
    io::Cursor,
    net::{IpAddr, Ipv4Addr, SocketAddr},
    time::Duration,
};
use suppaftp::FtpStream;

pub struct FtpProvider {
    connection: Option<Box<FtpStream>>,
    host: Option<String>,
    path: Option<String>,
}

#[derive(Debug)]
pub struct FtpUrl {
    path: String,
    host: String,
    user: String,
    pass: String,
}

pub fn initialize_provider() -> SyncReturn<RustOpaque<FtpProvider>> {
    SyncReturn(RustOpaque::new(FtpProvider {
        connection: None,
        host: None,
        path: None,
    }))
}

pub fn initialize_locked_provider() -> SyncReturn<RustOpaque<RwLock<FtpProvider>>> {
    SyncReturn(RustOpaque::new(RwLock::new(FtpProvider {
        connection: None,
        host: None,
        path: None,
    })))
}

pub fn initialize_ftp_url(
    path: String,
    host: String,
    user: String,
    pass: String,
) -> SyncReturn<RustOpaque<FtpUrl>> {
    SyncReturn(RustOpaque::new(FtpUrl {
        path,
        host,
        user,
        pass,
    }))
}

fn connect_internal(provider: &mut FtpProvider, url: &FtpUrl) {
    if provider.connection.is_some() {
        disconnect_internal(provider);
    }

    let addr_str: Vec<&str> = url.host.split('.').collect();
    let addr_nums: Vec<u8> = addr_str.iter().map(|x| x.parse().unwrap()).collect();

    let mut stream = FtpStream::connect_timeout(
        SocketAddr::new(
            IpAddr::V4(Ipv4Addr::new(
                addr_nums[0],
                addr_nums[1],
                addr_nums[2],
                addr_nums[3],
            )),
            21,
        ),
        Duration::from_secs(5),
    )
    .expect("Failed to connect to host");
    stream.login(&url.user, &url.pass).expect("Failed to login");

    provider.connection = Some(Box::new(stream));
    provider.host = Some(url.host.clone());
    provider.path = Some(url.path.clone());
}

pub fn connect(provider_lock: RustOpaque<RwLock<FtpProvider>>, url: RustOpaque<FtpUrl>) {
    let mut provider = provider_lock
        .write()
        .expect("Failed to get writable provider from RwLock");

    connect_internal(&mut provider, &url);
}

#[allow(unused_must_use)]
fn disconnect_internal(provider: &mut FtpProvider) {
    let mut_provider = provider.connection.as_mut();

    if let Some(mut_provider) = mut_provider {
        mut_provider.quit();
    }

    provider.connection = None;
    provider.host = None;
    provider.path = None;
}

pub fn disconnect(provider_lock: RustOpaque<RwLock<FtpProvider>>) {
    let mut provider = provider_lock
        .write()
        .expect("Failed to get writable provider from RwLock");

    disconnect_internal(&mut provider);
}

fn check_connection_internal(provider: &mut FtpProvider, url: &FtpUrl) {
    if provider.connection.is_none() {
        connect_internal(provider, url);
    } else if provider
        .path
        .as_ref()
        .expect("Expect path field to not be None when connection property is not None")
        != &url.path
        || provider
            .host
            .as_ref()
            .expect("Expect host property to not be None when connection property is not None")
            != &url.host
    {
        disconnect_internal(provider);
        connect_internal(provider, url);
    }

    let result = provider.connection.as_mut().unwrap().noop();
    if result.is_err() {
        disconnect_internal(provider);
        connect_internal(provider, url);
    }
}

pub fn check_connection(provider_lock: RustOpaque<RwLock<FtpProvider>>, url: RustOpaque<FtpUrl>) {
    let mut provider = provider_lock
        .write()
        .expect("Failed to read provider from RwLock");

    check_connection_internal(&mut provider, &url)
}

pub fn read_file(
    provider_lock: RustOpaque<RwLock<FtpProvider>>,
    url: RustOpaque<FtpUrl>,
) -> String {
    let mut provider = provider_lock
        .write()
        .expect("Failed to read provider from RwLock");

    check_connection_internal(&mut provider, &url);

    let stream = provider
        .connection
        .as_mut()
        .expect("Expect connection property to not be None after connection checked");

    let raw = stream
        .retr_as_buffer(url.path.as_str())
        .expect("Failed to retrieve file")
        .into_inner();

    let contents = String::from_utf8(raw).expect("Failed to convert to utf8");
    contents
}

pub fn update_file(
    provider_lock: RustOpaque<RwLock<FtpProvider>>,
    url: RustOpaque<FtpUrl>,
    contents: String,
) {
    let mut provider = provider_lock
        .write()
        .expect("Failed to read provider from RwLock");

    check_connection_internal(&mut provider, &url);

    let path = provider
        .path
        .clone()
        .expect("Expect path property to not be None when updating file");

    let stream = provider
        .connection
        .as_mut()
        .expect("Expect connection property to not be None after connection checked");

    stream
        .put_file(path, &mut Cursor::new(contents.as_bytes()))
        .expect("Failed to update file");
}

pub fn delete_file(provider_lock: RustOpaque<RwLock<FtpProvider>>, url: RustOpaque<FtpUrl>) {
    let mut provider = provider_lock
        .write()
        .expect("Failed to read provider from RwLock");

    check_connection_internal(&mut provider, &url);

    let stream = provider
        .connection
        .as_mut()
        .expect("Expect connection property to not be None after connection checked");

    stream.rm(url.path.as_str()).expect("Failed to delete file");
}

pub fn file_exists(
    provider_lock: RustOpaque<RwLock<FtpProvider>>,
    url: RustOpaque<FtpUrl>,
) -> bool {
    let mut provider = provider_lock
        .write()
        .expect("Failed to read provider from RwLock");

    check_connection_internal(&mut provider, &url);

    let stream = provider
        .connection
        .as_mut()
        .expect("Expect connection property to not be None after connection checked");

    stream.size(url.path.as_str()).is_ok()
}

pub fn clear_poison(provider_lock: RustOpaque<RwLock<FtpProvider>>) {
    provider_lock.clear_poison();
}
