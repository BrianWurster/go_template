package hello

import "testing" // https://pkg.go.dev/testing

func TestHello(t *testing.T) {
	want := "Hello World!"
	if got := Hello(); got != want {
		t.Errorf("Hello() got: %v want: %v", got, want)
	}
}
