default: gen lint

gen:
    flutter pub get
    flutter_rust_bridge_codegen \
        --rust-input rust/src/api.rs \
        --dart-output lib/bridge_generated.dart \

lint:
    cd rust && cargo fmt
    dart format .

clean:
    flutter clean
    cd rust && cargo clean
    
serve *args='':
    flutter pub run flutter_rust_bridge:serve {{args}}