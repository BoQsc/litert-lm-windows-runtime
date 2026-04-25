# LiteRT-LM Windows CPU Release 1

This repo skeleton builds an **unofficial native Windows x64 CPU-only LiteRT-LM runtime**.

The output package is meant to be simple:

```text
litert-lm-cpu-windows-x64.exe
LICENSE-LiteRT-LM.txt
README.txt
SOURCE.txt
DEPENDENCIES.txt
```

No GPU accelerator DLLs are included.

## What this is

Release 1 targets the official LiteRT-LM C++ demo/runtime entrypoint:

```text
//runtime/engine:litert_lm_main
```

with:

```text
--config=windows
```

and packages the resulting executable as:

```text
litert-lm-cpu-windows-x64.exe
```

## What this is not

This is not the GPU release.

It intentionally excludes:

```text
libLiteRtWebGpuAccelerator.dll
libLiteRtGpuAccelerator.dll
libLiteRt.dll
dxcompiler.dll
dxil.dll
```

The goal is a clean CPU runtime first.

## GitHub Actions usage

1. Create a new GitHub repo.
2. Copy this folder content into that repo.
3. Go to **Actions**.
4. Run **Release LiteRT-LM Windows CPU Single EXE**.
5. Use `v0.10.2` first.
6. Download the workflow artifact or GitHub release zip.

## Local Windows build

Install the prerequisites first:

- Visual Studio 2022 with MSVC C++ toolchain
- Git for Windows
- Git LFS
- Python 3.13
- Java/JDK
- Bazelisk

Then run:

```powershell
.\scripts\local-build-windows-cpu.ps1 -UpstreamTag v0.10.2
```

## Runtime usage

```powershell
.\litert-lm-cpu-windows-x64.exe --backend=cpu --model_path=C:\models\your-model.litertlm
```

Models are not bundled in this release.

## Notes

“Single EXE” here means this package does not ship LiteRT/GPU sidecar DLLs. The executable can still depend on normal Windows system/runtime DLLs.
