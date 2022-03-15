   ![Characteristic equations](images/eq_flip_flops.png)
```  
q_{n+1}^D = D 
q_{n+1}^{JK} = J * (not q_n) + (not K) * q_n
    q_{n+1}^T = T * (not q_n) + (not T) * q_n
```

   **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | `q(n+1)` has the same level as `d` |
   | ↑ | 0 | 1 | 0 | `q(n+1)` has the same level as `d` |
   | ↑ | 1 | 1 | 1 | `q(n+1)` has the same level as `d` |
   | ↑ | 1 | 0 | 1 | `q(n+1)` has the same level as `d` |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | 0 | Output did not change |
   | ↑ | 0 | 0 | 1 | 1 | Output did not change |
   | ↑ | 0 | 1 | 0 | 0 | Reset |
   | ↑ | 0 | 1 | 1 | 0 | Reset |
   | ↑ | 1 | 0 | 0 | 1 | Set |
   | ↑ | 1 | 0 | 1 | 1 | Set |
   | ↑ | 1 | 1 | 0 | 1 | Toggle |
   | ↑ | 1 | 1 | 1 | 0 | Toggle |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | Output did not change |
   | ↑ | 0 | 1 | 1 | Output did not change |
   | ↑ | 1 | 0 | 1 | Toggle |
   | ↑ | 1 | 1 | 0 | Toggle |

<a name="part1"></a>