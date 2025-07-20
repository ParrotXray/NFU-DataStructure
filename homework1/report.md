# 41143154

作業一

## 解題說明

本作業包含兩個主要問題：

### 問題一：Ackermann 函數
Ackermann 函數是一個經典的遞迴函數，定義如下：
```
A(m, n) = {
    n + 1,                   if m = 0
    A(m-1, 1),               if m > 0 and n = 0
    A(m-1, A(m, n-1)),       if m > 0 and n > 0
}
```

#### 解題策略
1. **遞迴實作**：直接按照數學定義實現遞迴版本
2. **記憶化優化**：使用 Memoization 技術，透過動態矩陣儲存已計算結果
3. **迭代實作**：使用明確的堆疊結構，將遞迴轉換為迭代形式，避免系統堆疊限制
4. **動態記憶體管理**：當矩陣容量不足時，自動擴展存儲空間

### 問題二：Power Set 生成
Power Set 是指一個集合的所有子集合所組成的集合。

#### 解題策略
1. **遞迴版本**：使用**減治法**（Decrease and Conquer）概念，每次移除一個元素，將問題縮減為更小的子問題
2. **迭代版本**：使用**位元遮罩**（Bit Masking）技術，透過位元運算直接生成所有子集
3. **矩陣存儲**：使用自定義矩陣結構存儲所有子集

## 程式實作

### 問題一：Ackermann 函數

#### 核心資料結構
```cpp
typedef struct {
    int32_t *data;
    int32_t rows; 
    int32_t cols; 
    int32_t capacity;
    int32_t extend_ratio;
} MatrixList;
```

#### 關鍵函數實現
1. **記憶化查表機制**：
   - `get_from_table()`: 檢查是否已計算過
   - `store_to_table()`: 儲存計算結果
   - `extend_matrix()`: 動態擴展矩陣容量

2. **記憶化版本**：
   ```cpp
   int32_t ackermann_function_memoization(int32_t m, int32_t n) {
       if (m < 0 || n < 0) {
           return INVALID_VALUE;
       }
       
       int32_t cached_value = get_from_table(m, n);
       if (cached_value != NOT_COMPUTED) {
           return cached_value;
       }
       
       int32_t result;
       if (m == 0) {
           result = n + 1;
       } else if (m > 0 && n == 0) {
           result = ackermann_function_memoization(m - 1, 1);
       } else {
           result = ackermann_function_memoization(m - 1, ackermann_function_memoization(m, n - 1));
       }
       
       store_to_table(m, n, result);
       return result;
   }
   ```

3. **迭代版本**：
   ```cpp
   int32_t ackermann_function_iterative(int32_t m, int32_t n) {
       // 使用堆疊結構模擬遞迴
       int32_t* m_stack = (int32_t*)malloc(sizeof(int32_t) * MAX_STACK_SIZE);
       int32_t* n_stack = (int32_t*)malloc(sizeof(int32_t) * MAX_STACK_SIZE);
       
       int32_t stack_top = 0;
       m_stack[stack_top] = m;
       n_stack[stack_top] = n;
       ++stack_top;
       
       int32_t result = 0;
       
       while (stack_top > 0) {
           --stack_top;
           int32_t curr_m = m_stack[stack_top];
           int32_t curr_n = n_stack[stack_top];
           
           if (curr_m == 0) {
               result = curr_n + 1;
               if (stack_top > 0) {
                   n_stack[stack_top - 1] = result;
               }
           } else if (curr_n == 0) {
               m_stack[stack_top] = curr_m - 1;
               n_stack[stack_top] = 1;
               ++stack_top;
           } else {
               // 模擬 A(m-1, A(m, n-1)) 的兩階段計算
               m_stack[stack_top] = curr_m - 1;
               n_stack[stack_top] = -1;  // 標記為待填入的位置
               ++stack_top;
               
               m_stack[stack_top] = curr_m;
               n_stack[stack_top] = curr_n - 1;
               ++stack_top;
           }
       }
       
       free(m_stack);
       free(n_stack);
       return result;
   }
   ```

### 問題二：Power Set 生成

#### 核心資料結構
```cpp
typedef struct {
    MatrixList* matrix;
    int32_t* subset_sizes;
    int32_t subset_count;
    int32_t max_subset_size;
} PowerSetMatrix;
```

#### 關鍵演算法實現
1. **遞迴版本（減治法）**：
   - 使用減治法（Decrease and Conquer），每次處理較小的子問題
   - 對每個現有子集，生成包含當前元素的新子集

2. **迭代版本（位元遮罩）**：
   ```cpp
   PowerSetMatrix* powerset_matrix_iterative(int32_t* set, int32_t set_size) {
       int32_t total_subsets = 1 << set_size;
       PowerSetMatrix* result = new_powerset_matrix(total_subsets, set_size > 0 ? set_size : 1);
       
       for (int32_t mask = 0; mask < total_subsets; mask++) {
           ArrayList* temp_subset = new_list();
           
           for (int32_t i = 0; i < set_size; ++i) {
               if (mask & (1 << i)) {
                   add(temp_subset, set[i]);
               }
           }
           
           int32_t* subset_array = to_array(temp_subset);
           add_subset_to_powerset(result, subset_array, size(temp_subset));
           
           if (subset_array != NULL) {
               free(subset_array);
           }
           delete_list(temp_subset);
       }
       
       return result;
   }
   ```

## 效能分析

### 問題一：Ackermann 函數效能比較

#### 時間複雜度分析
- **遞迴版本**：無法用傳統 Big-O 表示法準確描述，屬於 NONELEMENTARY 複雜度類
- **記憶化版本**：仍然是指數級複雜度，但在有重複子問題時能顯著減少計算量
- **迭代版本**：與遞迴版本具有相同的時間複雜度，但避免了系統遞迴堆疊的限制

#### 空間複雜度分析
- **遞迴版本**：O(A(m, n))（系統遞迴堆疊深度）
- **記憶化版本**：O(實際計算的 (m, n) 對數量)（矩陣存儲空間）
- **迭代版本**：O(堆疊深度)（明確管理的堆疊空間，理論上可以設定更大的限制）

#### 實測結果與問題分析

**測試案例 A(3, 6)：**
```
1. 記憶化版本: 結果: 509, 時間: 0.000084 秒
2. 遞迴版本: 結果: 509, 時間: 0.000121 秒
3. 迭代版本: 結果: 509, 時間: 0.000383 秒
```

**性能分析：**
1. **記憶化版本最快**：0.000084 秒
   - 利用查表避免重複計算，性能有所提升
   - 在存在重複子問題的情況下效率最高

2. **遞迴版本中等**：0.000121 秒  
   - 完全遞迴實現，邏輯直觀
   - 沒有額外的查表開銷，但存在重複計算

3. **迭代版本最慢**：0.000383 秒
   - 需要明確管理堆疊結構，帶來額外開銷
   - 雖然避免了系統遞迴限制，但在小測試案例中性能不佳

**測試案例 A(4, 2)：**
```
1. 記憶化版本: Segmentation fault (core dumped)
2. 遞迴版本: Segmentation fault (core dumped)  
3. 迭代版本: Segmentation fault (core dumped)
```

**失敗原因分析：**
```
A(4, 2) = A(3, A(4, 1)) = A(3, 65533)
```
此計算路徑為：A(3, 65533) → A(3, 65532) → ... → A(3, 1)

**A(4, 2) 本身的計算超出了任何實際可行的範圍：**
- **數值爆炸**：結果約為 2^65536 - 3，是天文數字
- **計算深度**：需要極深的遞迴調用，超出系統極限
- **記憶體爆炸**：需要存儲65533個不同的值，超出系統限制

因此，三種實現都無法處理 A(4, 2) 這樣的極端案例。

### 問題二：Power Set 生成效能比較

#### 時間複雜度分析
- **遞迴版本（減治法）**：O(n × 2^n)，需要為每個子集進行複製操作
- **迭代版本（位元遮罩）**：O(n × 2^n)，但常數因子較小

#### 空間複雜度分析
- **兩個版本**：O(n × 2^n)，需要存儲所有子集

#### 實測結果與分析

**小規模測試（集合大小 3）：**
```
遞迴版本：0.000002 秒，8 個子集
迭代版本：0.000001 秒，8 個子集
結果一致性：一致
```

**中規模測試（集合大小 4）：**
```
遞迴版本：0.000002 秒，16 個子集
迭代版本：0.000002 秒，16 個子集
結果一致性：一致
```

## 測試與驗證

### 問題一測試結果
```
Testing Ackermann(3, 6):
Memoization version:
Result: 509
Time: 0.000084 sec

Recursion version:
Result: 509
Time: 0.000121 sec

Iterative version:
Result: 509
Time: 0.000383 sec

Consistent results: Yes
```

### 問題二測試結果

#### 基本功能測試
```
測試集合 {1, 2, 3}:
PowerSet with 8 subsets:
{ {}, {3}, {2}, {2,3}, {1}, {1,3}, {1,2}, {1,2,3} }

測試空集:
PowerSet with 1 subsets:
{ {} }

測試單元素集合 {5}:
PowerSet with 2 subsets:
{ {}, {5} }

測試較大集合 {1,2,3,4}:
PowerSet with 16 subsets:
{ {}, {4}, {3}, {3,4}, {2}, {2,4}, {2,3}, {2,3,4}, 
  {1}, {1,4}, {1,3}, {1,3,4}, {1,2}, {1,2,4}, {1,2,3}, {1,2,3,4} }
```

#### 矩陣表示效果
集合 {1, 2, 3} 的冪集在矩陣中的表示：
```
矩陣大小: 8 x 3
  [  -1,   -1,   -1]  // 空集 {}
  [   3,   -1,   -1]  // {3}
  [   2,   -1,   -1]  // {2}
  [   2,    3,   -1]  // {2,3}
  [   1,   -1,   -1]  // {1}
  [   1,    3,   -1]  // {1,3}
  [   1,    2,   -1]  // {1,2}
  [   1,    2,    3]  // {1,2,3}
```

#### 遞迴過程分析（減治法）
以集合 {1,2} 為例的遞迴過程：
```
powerset({1,2}):
  1. first = 1, rest = {2}
  2. 遞迴計算 powerset({2})（減治為更小的問題）:
     - first = 2, rest = {}
     - powerset({}) = {{}}（基本情況）
     - 不含 2: {{}}
     - 含 2: {{2}}
     - 返回: {{}, {2}}
  3. 不含 1: {{}, {2}}
  4. 含 1: {{1}, {1,2}}
  5. 最終結果: {{}, {2}, {1}, {1,2}}
```

#### 資料結構測試
**ArrayList 操作展示：**
```
創建空 ArrayList，容量：10，大小：0
添加元素後: [10, 20, 30, 40, 50]
獲取索引 2 的元素：30
設置索引 2 為 999 後: [10, 20, 999, 40, 50]
在索引 1 插入 555 後: [10, 555, 20, 999, 40, 50]
移除索引 3 的元素 999 後: [10, 555, 20, 40, 50]
```

**MatrixList 功能展示：**
```
創建 3x4 矩陣填充後:
  [   0,    1,    2,    3]
  [  10,   11,   12,   13]
  [  20,   21,   22,   23]

擴展到 4x5 後:
  [   0,    1,    2,    3,    0]
  [  10,   11,   12,   13,    0]
  [  20,   21,   22,   23,    0]
  [   0,    0,    0,    0,    0]
```

### 編譯與執行指令

建構請使用Ubuntu或WSL: 

```bash
# 問題一
$ cd homework1/src/problem-1
$ make run

Enter m and n: 3 16
Recursion version:
Result: 524285
Time: 131.477638 sec

Iterative version:
Result: 524285
Time: 361.891464 sec

Memoization version:
Result: 524285
Time: 4.224434 sec

Consistent results

# 問題二  
$ cd homework1/src/problem-2
$ make run

Testing set {1, 2, 3}:
PowerSet with 8 subsets:
{ {}, {3}, {2}, {2,3}, {1}, {1,3}, {1,2}, {1,2,3} }

Testing empty set:
PowerSet with 1 subsets:
{ {} }

Performance test for set size 25:
Recursive version: 7.784396 seconds, 33554432 subsets
Iterative version: 10.341533 seconds, 33554432 subsets
Results consistent: Yes
```

## 申論及開發報告

### 記憶化技術的應用與 Ackermann 函數的本質限制

#### 成功案例：A(3, 6) 的性能提升

測試 A(3, 6) 時，記憶化版本表現最佳（0.000084秒），相比遞迴版本（0.000121秒）提升有感。

**成功原因分析：**
1. **重複子問題存在**：在 A(3, 6) 的計算過程中，會有多次重複的子問題計算
2. **查表效率**：記憶化能夠避免重複計算相同的 (m, n) 對，直接從查表中獲取結果
3. **記憶體使用合理**：所需的矩陣存儲空間在可接受範圍內

#### 失敗案例：A(4, 2) 的根本性計算問題

測試 A(4, 2) 時，三種實現都出現 Segmentation fault，這與 Ackermann 函數的特性有關：

**問題分析：A(4, 2) 的計算模式對記憶化不友好**
```
A(4,2) = A(3, A(4, 1)) = A(3, 65533)
A(3, 65533) = A(2, A(3, 65532))
A(3, 65532) = A(2, A(3, 65531))
...
```

**A(4, 2) 失敗的根本原因：**
1. **數值爆炸：**：A(4, 2) ≈ 2^65536 - 3，是無法表示的天文數字
2. **計算深度問題**：需要極深的遞迴調用，遠超系統堆疊限制
3. **記憶體爆炸**：需要存儲 65533 個不同的值，超出系統限制

**重要發現：這不是技術的限制，而是問題本身的特性。**

雖然記憶化在此例中無效（因為每個 A(3, k) 只計算一次，無重複子問題），但更重要的是 A(4, 2) 本身就超出了合理的計算範圍。說明了 Ackermann 函數增長速度的恐怖性。

### 三種Ackermann實現的綜合比較

#### 各版本特性深度分析

**1. 記憶化版本的優勢與限制**：
- **優勢**：在存在重複子問題時效率最高，A(3, 6)測試中性能提升顯著
- **限制**：當問題結構為線性依賴且無重複時，記憶體需求可能爆炸
- **適用場景**：重複子問題較多的遞迴計算

**2. 遞迴版本的特點**：
- **優勢**：邏輯最簡潔，直接對應數學定義，沒有額外開銷
- **限制**：無法避免重複計算，受系統堆疊限制
- **適用場景**：邏輯清晰度優先，且堆疊深度可控的情況

**3. 迭代版本的考量**：
- **優勢**：避免系統遞迴堆疊限制，可處理更深層的遞迴
- **限制**：明確的堆疊管理帶來顯著性能開銷，在小測試案例中表現不佳
- **適用場景**：需要超越系統堆疊限制的深度遞迴計算

### Power Set 生成的成功

與 Ackermann 函數不同，Power Set 的兩種實現都很好：

#### 成功因素分析
1. **問題規模可控**：2^n 的增長雖然快，但在小到中等規模下仍可處理
2. **演算法複雜度匹配**：兩種演算法的時間複雜度都是 O(n × 2^n)，符合問題本質
3. **記憶體使用合理**：矩陣存儲結構有效管理子集數據，無記憶體爆炸風險

#### 減治法 vs 位元遮罩的比較
**遞迴版本（減治法）優勢：**
- 邏輯清晰，易於理解和驗證
- 符合減治思想，將問題逐步分解
- 自然對應數學定義

**迭代版本（位元遮罩）優勢：**
- 避免函數呼叫開銷，執行效率略高
- 記憶體使用更穩定
- 利用位元運算的高效性，直接映射所有可能的子集

### 資料結構設計的重要性

#### 自製資料結構
1. **MatrixList**：
   - 使用一維陣列模擬二維矩陣，提高記憶體存取效率
   - 實現動態擴展功能，適應不同規模的問題
   - 在Power Set問題中表現良好

2. **ArrayList**：
   - 提供自動擴展，避免固定大小限制
   - 實現完整的陣列操作，支援各種演算法需求
   - 測試結果顯示功能完備且穩定

### 關鍵學習心得

#### 理論與實踐的重要差距
1. **性能測試的不可替代性**：理論分析無法完全預測實際表現，A(3, 6) 的測試結果證明了記憶化的有效性
2. **問題結構的決定性影響**：A(4, 2) 的失敗，說明相同的最佳化技術在不同問題結構下可能有截然不同的效果

#### 演算法選擇的智慧
1. **技術適用性評估**：記憶化等技術並非萬能，需要結合問題特性謹慎選擇
2. **權衡考量的複雜性**：時間、空間、穩定性之間的權衡需要考慮具體應用場景
