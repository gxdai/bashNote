# `threading` vs `multiprocessing` in python
The `threading` module uses threads, the `multiprocessing` module uses processes. THe difference is that threads run in the same memory space, while processes have separate memory. This makes it a bit harder to share objects between processes with multiprocessing. Since threads use the same memory, precautions have to be taken or tow threads will write to the same memory at the same time.

Spawning processes is a bit slower than spawning threads. Once they are running, there is not much difference.
