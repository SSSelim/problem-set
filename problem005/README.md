# Max Index Difference of Same Number

- Given an array: [1, 6, 4, 2, -1, 6, 6]
- A[1] = 6 and A[6] = 6, |1-6| = 5

```java
int solution(int A) {
  int N = A.length;
  int maxDiff = 0;

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      if (A[i] == A[j]) {
        maxDiff = Math.max(maxDiff, Math.abs(i - j));
      }
    }
  }
  return maxDiff;
}
```

- Find a solution with O(n) complexity.
- Can modify given array and use O(n) extra space.
