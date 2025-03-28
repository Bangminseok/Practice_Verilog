#[Digital Logic Circuit by Verilog HDL](https://docs.google.com/document/d/1i9Qk29RYSsGqpeaAAcgkI_iF8jF4qQJQJzh5cUCM3Aw/edit?usp=sharing)

## preview

### Verilog란 무엇인가?  

Verilog는 디지털 회로 설계를 위한 하드웨어 기술 언어(HDL)이다. 주로 [FPGA](https://ko.wikipedia.org/wiki/FPGA)(Field Programmable Gate Array)와 [ASIC](https://ko.wikipedia.org/wiki/ASIC)(Application Specific Integrated Circuit) 설계에서 사용되며, 디지털 시스템의 동작을 코드로 작성하고 이를 시뮬레이션하여 검증할 수 있는 기능을 제공한다. Verilog를 사용하면 회로의 구조뿐만 아니라 그 동작을 보다 직관적으로 표현할 수 있으며, 코드 기반으로 설계가 이루어지기 때문에 복잡한 시스템의 논리적 흐름을 관리하기에 적합하다.

### Verilog와 심볼 도표의 차이

디지털 회로 설계는 전통적으로 논리 게이트와 연결을 보여주는 심볼 도표(회로도)로 표현되었다. 이러한 회로도는 시각적으로 직관적이지만, 복잡한 설계를 표현하는 데는 한계가 있다. 반면 Verilog는 텍스트 형식으로 회로의 논리 구조와 동작을 정의하여 복잡한 설계를 체계적으로 표현할 수 있다. Verilog는 반복적인 요소나 조건에 따라 회로의 동작을 정의하는 데 유리하여, 대규모 디지털 시스템의 설계와 검증에 보다 효율적이다.

Verilog 설계는 보통 Intel의 Quartus II와 Xilinx의 Vivado 이 두 가지 프로그램을 주로 사용한다. 이 두 프로그램의 기능적 차이는 크게 다르지 않지만, 설계한 코드 파일을 자신의 보드에 업로드하기 위해서는 해당 보드 제작사에서 제공하는 프로그램을 사용해야 한다. 현재 사용하는 보드는 Intel의 Altera DE1 보드이기 때문에 본 문서에서는 주로 Quartus를 이용한다. Vivado에 비해 프로그램이 비교적 가벼워 동작이 원활하다.
 
 앞으로 Verilog 설계를 학습하기 위해서는 Quartus II 혹은 Vivado 중 한 가지 프로그램을 설치하는 것이 필요하다. 설치 방법과 시뮬레이션을 위한 초기 설정에 대해서는 [이 문서](https://docs.google.com/document/d/1CAl7vgwtjQbRC0_mYNztQ-sKSkUFekApna3utvK_RcE/edit?tab=t.0)에서 참조할 수 있다.
