# Secure-by-Construction Design Methodology for CPUs: Implementing Secure Speculation on the RTL

Ever since the Spectre and Meltdown attacks proved Transient Execution Side Channels to be a fundamental vulnerability of modern processors, secure microarchitecture design is a challenge considered urgent by chipmakers. Various countermeasures against these threats were proposed on the electronic system level. However, addressing all possible attack scenarios requires the design and analysis of bit- and cycle-accurate implementations. 

In our paper "[Secure-by-Construction Design Methodology for CPUs: Implementing Secure Speculation on the RTL](https://www.uni-kl.de)", we present a novel secure-by-construction RTL design methodology based on a generic information flow tracking infrastructure. The methodology uses formal verification to systematically detect
possible leakage paths and to customize the generic infrastructure accordingly for the design. We propose an iterative flow which semi-automatically leads to an RTL design that is guaranteed to be secure w.r.t. transient execution attacks. A case study for the methodology is conducted on BOOMv3, an open-source RISC-V processor with a deep out-of-order pipeline, and the resulting secure RTL design is benchmarked on an FPGA setup. Our design outperforms a design based on conservative countermeasures, improving the incurred overhead by 3$\times$ / 4$\times$ (depending on the threat model) while maintaining the same level of security. 


## The Berkeley Out-of-Order RISC-V Processor

The [Berkeley Out-of-Order Machine (BOOM)](https://github.com/riscv-boom/riscv-boom) is a synthesizable and parameterizable open source RV64GC RISC-V core written in the [Chisel](https://chisel.eecs.berkeley.edu/) hardware construction language.
Created at the University of California, Berkeley in the [Berkeley Architecture Research](https://bar.eecs.berkeley.edu/) group, its focus is to create a high performance, synthesizable, and parameterizable core for architecture research.
The current version of the BOOM microarchitecture ([SonicBOOM, or BOOMv3](https://carrv.github.io/2020/papers/CARRV2020_paper_15_Zhao.pdf)) is performance competitive with commercial high-performance out-of-order cores, achieving 6.2 CoreMarks/MHz.


## Hardware Vulnerabilities

The discovery of transient execution attacks has brought a whole new set of challenges to the field of hardware/software security. 
Detected security vulnerabilities such as Spectre and Meltdown and newly discovered variants thereof differ significantly from previously known microarchitectural side channel attacks. Transient execution attacks exploit incorrect speculative or out-of-order execution that usually would not affect the system state as they are reverted after they turn out to be incorrect. Nevertheless, these instructions leave michroarchitectural traces that can be used to read confidential data. 
By influencing the outcome of a speculation and the transient instructions to be executed, attackers can have indirect access to secret data in a system. 
In contrast to previously known side channel attacks, these transient instructions are not part of the program execution at the ISA-level and therefore not visible based on ISA-semantics. As a result, detecting vulnerabilities to transient execution attacks requires considering program execution at the hardware level, which makes the verification problem more challenging.


## Unique Program Execution Checking (UPEC)

UPEC (Unique Program Execution Checking) is a formal approach for detecting vulnerabilities to transient execution attacks in out-of-order processors. This technique has been developed by the [Electronic Design Automation Group](https://www.eit.uni-kl.de/eis/research/) at TU Kaiserslautern, Germany.

The verification suite that can be used to verify the BOOM design against transient execution attacks and further information on the functionality can be found [here](https://github.com/TUK-EIS/upec-boom-verification-suite).

A more detailed description of the employed formal verification technique can be found in:

[1] Fadiheh, M. R., Stoffel, D., Barrett, C., Mitra, S., & Kunz, W. (2019, March). Processor hardware security vulnerabilities and their detection by unique program execution checking. In 2019 Design, Automation & Test in Europe Conference & Exhibition (DATE) (pp. 994-999). IEEE.

[2] Fadiheh, M. R., Müller, J., Brinkmann, R., Mitra, S., Stoffel, D., & Kunz, W. (2020, July). [A formal approach for detecting vulnerabilities to transient execution attacks in out-of-order processors](https://ieeexplore.ieee.org/document/9218572). In 2020 57th ACM/IEEE Design Automation Conference (DAC) (pp. 1-6). IEEE.

[3] Fadiheh, M. R.ezel, A., Mueller, J., Bormann, J., Fung, J., Mitra, S., Stoffel, D. & Kunz, W. (2021). [An Exhaustive Approach to Detecting Transient Execution Side Channels in RTL Designs of Processors](https://arxiv.org/abs/2108.01979). arXiv e-prints, arXiv-2108. 
