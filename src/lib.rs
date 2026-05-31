use zed_extension_api as zed;

struct EmberExtension;

impl zed::Extension for EmberExtension {
    fn new() -> Self {
        Self
    }
}

zed::register_extension!(EmberExtension);
