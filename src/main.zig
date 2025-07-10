//! Call JavaScript from Zig Example
const std = @import("std");
const webui = @import("webui");
const html = @embedFile("index.html");

pub fn main() !void {
    // Create a window
    var nwin = webui.newWindow();

    // Show the window
    try nwin.show(html);
    // _ = nwin.showBrowser(html, .Chrome);

    // Wait until all windows get closed
    webui.wait();

    // Free all memory resources (Optional)
    webui.clean();
}
