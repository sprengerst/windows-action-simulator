# Windows Action Simulator

A lightweight C# library for simulating basic user interactions on Windows — including keyboard input, mouse movement, and clicks — using native Win32 API calls.

![License](https://img.shields.io/github/license/sprengerst/windows-action-simulator)
![Platform](https://img.shields.io/badge/platform-Windows-blue)
![Language](https://img.shields.io/badge/language-C%23-blue)

## Features

- ✅ Simulate keyboard key presses and releases  
- ✅ Move the mouse to specific screen coordinates  
- ✅ Simulate mouse clicks (left, right, middle)  
- ✅ Minimal and dependency-free — built on top of native Windows APIs  
- ✅ Easy to integrate into existing .NET applications  

## Installation

Clone the repository and add the project or class files to your .NET application:

```bash
git clone https://github.com/sprengerst/windows-action-simulator.git
```

Alternatively, you can copy only the core logic into your project if you prefer a lightweight integration.

> **Note:** Currently supports only Windows. Requires `.NET Framework` or `.NET Core` with access to `System.Runtime.InteropServices`.

## Usage

Here’s a quick example:

```csharp
using WindowsActionSimulator;

class Program
{
    static void Main()
    {
        // Move mouse to (100, 100)
        Mouse.MoveTo(100, 100);

        // Left click
        Mouse.Click(Mouse.Button.Left);

        // Press and release the 'A' key
        Keyboard.PressKey(Keys.A);
        Keyboard.ReleaseKey(Keys.A);
    }
}
```

## API Overview

### Mouse

- `Mouse.MoveTo(int x, int y)`
- `Mouse.Click(Mouse.Button button)`
- `Mouse.Press(Mouse.Button button)`
- `Mouse.Release(Mouse.Button button)`

### Keyboard

- `Keyboard.PressKey(Keys key)`
- `Keyboard.ReleaseKey(Keys key)`
- `Keyboard.SendKey(Keys key)`

> `Keys` is the standard `System.Windows.Forms.Keys` enum.

## Contributing

Pull requests, ideas and improvements are welcome. Just fork the repository and submit your changes via PR.

## License

This project is licensed under the [MIT License](LICENSE).

---

**Created with ❤️ by [@sprengerst](https://github.com/sprengerst)**
