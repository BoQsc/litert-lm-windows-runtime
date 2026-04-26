```

C:\Users\Windows10_new\Downloads\litert-lm-single-windows-x64-v0.10.2>C:\Users\Windows10_new\Downloads\litert-lm-single-windows-x64-v0.10.2\bat.cmd

C:\Users\Windows10_new\Downloads\litert-lm-single-windows-x64-v0.10.2>litert-lm-single-windows-x64.exe   --backend=cpu   --model_path="C:\Users\Windows10_new\Downloads\gemma-4-E2B-it.litertlm"   --input_prompt="Hello. Write one short paragraph."
INFO: [external/litert/litert/core/environment.cc:30] Creating LiteRT environment with options
WARNING: [external/litert/litert/runtime/accelerators/auto_registration.cc:78] NPU accelerator could not be loaded and registered: kLiteRtStatusErrorInvalidArgument.
INFO: [external/litert/litert/runtime/accelerators/gpu_registry.cc:162] Loading GPU accelerator(l).
INFO: [external/litert/litert/runtime/accelerators/gpu_registry.cc:162] Loading GPU accelerator(l).
INFO: [external/litert/litert/runtime/accelerators/gpu_registry.cc:162] Loading GPU accelerator(l).
WARNING: [external/litert/litert/runtime/accelerators/gpu_registry.cc:187] GPU accelerator could not be loaded and registered.
INFO: [external/litert/litert/runtime/accelerator_registry.cc:54] RegisterAccelerator: ptr=0000028160AF1720, name=CpuAccelerator
INFO: [external/litert/litert/runtime/accelerators/cpu_registry.cc:40] CPU accelerator registered.
INFO: [external/litert/litert/runtime/magic_number_utils.cc:97] Loaded: num_subgraphs=976, num_signatures=4
INFO: [external/litert/litert/runtime/magic_number_utils.cc:105]   signature=decode, subgraph_index=0, num_tensors=2703, num_inputs=35, num_outputs=32, num_ops=2068
INFO: [external/litert/litert/runtime/magic_number_utils.cc:105]   signature=prefill_1024, subgraph_index=1, num_tensors=1454, num_inputs=35, num_outputs=30, num_ops=1107
INFO: [external/litert/litert/runtime/magic_number_utils.cc:105]   signature=prefill_128, subgraph_index=2, num_tensors=1454, num_inputs=35, num_outputs=30, num_ops=1107
INFO: [external/litert/litert/runtime/magic_number_utils.cc:105]   signature=verify, subgraph_index=3, num_tensors=2887, num_inputs=35, num_outputs=32, num_ops=2243
INFO: [external/litert/litert/runtime/magic_number_utils.cc:109] Magic number configs: num_configs=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:116]   config[0]: magic_number=32003, target_number=4096, signature_prefix=null
INFO: [external/litert/litert/runtime/magic_number_utils.cc:425] 439 tensors of signature decode have been updated for magic number  32003 to target number 4096
INFO: [external/litert/litert/runtime/magic_number_utils.cc:425] 271 tensors of signature prefill_1024 have been updated for magic number  32003 to target number 4096
INFO: [external/litert/litert/runtime/magic_number_utils.cc:425] 270 tensors of signature prefill_128 have been updated for magic number  32003 to target number 4096
INFO: [external/litert/litert/runtime/magic_number_utils.cc:425] 444 tensors of signature verify have been updated for magic number  32003 to target number 4096
INFO: [external/litert/litert/runtime/compiled_model.cc:719] Flatbuffer model initialized directly from incoming litert model.
INFO: Created TensorFlow Lite XNNPACK delegate for CPU.
INFO: [external/litert/litert/core/environment.cc:30] Creating LiteRT environment with options
WARNING: [external/litert/litert/runtime/accelerators/auto_registration.cc:78] NPU accelerator could not be loaded and registered: kLiteRtStatusErrorInvalidArgument.
INFO: [external/litert/litert/runtime/accelerators/gpu_registry.cc:162] Loading GPU accelerator(l).
INFO: [external/litert/litert/runtime/accelerators/gpu_registry.cc:162] Loading GPU accelerator(l).
INFO: [external/litert/litert/runtime/accelerators/gpu_registry.cc:162] Loading GPU accelerator(l).
WARNING: [external/litert/litert/runtime/accelerators/gpu_registry.cc:187] GPU accelerator could not be loaded and registered.
INFO: [external/litert/litert/runtime/accelerator_registry.cc:54] RegisterAccelerator: ptr=000002816A14FB90, name=CpuAccelerator
INFO: [external/litert/litert/runtime/accelerators/cpu_registry.cc:40] CPU accelerator registered.
INFO: [external/litert/litert/runtime/magic_number_utils.cc:97] Loaded: num_subgraphs=1, num_signatures=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:105]   signature=embedder, subgraph_index=0, num_tensors=16, num_inputs=1, num_outputs=1, num_ops=8
INFO: [external/litert/litert/runtime/magic_number_utils.cc:109] Magic number configs: num_configs=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:116]   config[0]: magic_number=32003, target_number=4096, signature_prefix=null
INFO: [external/litert/litert/runtime/compiled_model.cc:719] Flatbuffer model initialized directly from incoming litert model.
INFO: [external/litert/litert/runtime/magic_number_utils.cc:97] Loaded: num_subgraphs=1, num_signatures=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:105]   signature=eoi, subgraph_index=0, num_tensors=1, num_inputs=0, num_outputs=1, num_ops=0
INFO: [external/litert/litert/runtime/magic_number_utils.cc:109] Magic number configs: num_configs=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:116]   config[0]: magic_number=32003, target_number=4096, signature_prefix=null
INFO: [external/litert/litert/runtime/compiled_model.cc:719] Flatbuffer model initialized directly from incoming litert model.
INFO: [external/litert/litert/runtime/compiled_model.cc:1485] Tracked constant output tensor eoi_embedding with locked address
INFO: [external/litert/litert/runtime/magic_number_utils.cc:97] Loaded: num_subgraphs=1, num_signatures=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:105]   signature=eoa, subgraph_index=0, num_tensors=1, num_inputs=0, num_outputs=1, num_ops=0
INFO: [external/litert/litert/runtime/magic_number_utils.cc:109] Magic number configs: num_configs=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:116]   config[0]: magic_number=32003, target_number=4096, signature_prefix=null
INFO: [external/litert/litert/runtime/compiled_model.cc:719] Flatbuffer model initialized directly from incoming litert model.
INFO: [external/litert/litert/runtime/compiled_model.cc:1485] Tracked constant output tensor eoa_embedding with locked address
INFO: [external/litert/litert/runtime/magic_number_utils.cc:97] Loaded: num_subgraphs=1, num_signatures=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:105]   signature=per_layer_embedder, subgraph_index=0, num_tensors=83, num_inputs=1, num_outputs=1, num_ops=42
INFO: [external/litert/litert/runtime/magic_number_utils.cc:109] Magic number configs: num_configs=1
INFO: [external/litert/litert/runtime/magic_number_utils.cc:116]   config[0]: magic_number=32003, target_number=4096, signature_prefix=null
INFO: [external/litert/litert/runtime/compiled_model.cc:719] Flatbuffer model initialized directly from incoming litert model.
input_prompt: Hello. Write one short paragraph.
The old lighthouse stood sentinel against the crashing waves, its beam a solitary, unwavering finger cutting through the inky expanse of the stormy night. A sense of profound solitude hung in the air, broken only by the rhythmic groan of the structure and the relentless roar of the ocean. It was a place where the vastness of the sea met the steadfastness of human vigilance, a quiet testament to endurance against the untamed power of nature.

BenchmarkInfo:
  Init Phases (7):
    - Init Conversation: 0.09 ms
    - Init Executor: 577.30 ms
    - Init LLM metadata: 0.15 ms
    - Init Model assets: 0.49 ms
    - Init Tokenizer: 101.68 ms
    - Init Total: 580.10 ms
--------------------------------------------------
  Time to first token: 0.92 s
--------------------------------------------------
  Prefill Turns (Total 1 turns):
    Prefill Turn 1: Processed 16 tokens in 819.9514ms duration.
      Prefill Speed: 19.51 tokens/sec.
--------------------------------------------------
  Decode Turns (Total 1 turns):
    Decode Turn 1: Processed 88 tokens in 8.7038005s duration.
      Decode Speed: 10.11 tokens/sec.
--------------------------------------------------
  TextToTokenIds Turns (Total 2 turns):
    Turn 1: 11.2us, 1 tokens
    Turn 2: 46.1us, 15 tokens
--------------------------------------------------
--------------------------------------------------

INFO: [external/litert/litert/runtime/accelerator_registry.cc:43] DestroyAccelerator: ptr=000002816A14FB90, name=CpuAccelerator

C:\Users\Windows10_new\Downloads\litert-lm-single-windows-x64-v0.10.2>
```
