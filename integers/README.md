# Integers

Integers work as you would expect. Let's write an add function to try things out.  Create a test file called `adder_test.go` and write this code.

## Write the test first

```go
package integers

import "testing"

func TestAdder(t *testing.T) {
	sum := Add(2, 2)
	expected := 4
	
	if sum != expected {
		t.Errorf("expected '%d' but got '%d'", expected, sum)
	}
}
```

Show the complete test 

{% include "./adder_test.go" %}