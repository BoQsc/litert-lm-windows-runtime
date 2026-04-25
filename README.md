# LiteRT-LM Windows CPU Release 1

This repo skeleton builds an **unofficial native Windows x64 CPU-only LiteRT-LM runtime**.

## Fix included

This version clears `ANDROID_NDK_HOME` and `ANDROID_NDK_ROOT` in the workflow. LiteRT-LM's own Windows CI does this because GitHub Windows runners can expose Android NDK paths that cause Bazel symlink failures.

## GitHub Actions usage

1. Replace your existing `.github/workflows/release-windows-cpu.yml` with this version.
2. Commit the file.
3. Go to **Actions**.
4. Run **Release LiteRT-LM Windows CPU Single EXE**.
5. Use `v0.10.2` first.

## Output

```text
litert-lm-cpu-windows-x64.exe
LICENSE-LiteRT-LM.txt
README.txt
SOURCE.txt
DEPENDENCIES.txt
```

No GPU accelerator DLLs are included.
