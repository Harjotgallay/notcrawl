package notiontext

import "testing"

func TestTitleFromProperties(t *testing.T) {
	got := TitleFromProperties(`{"title":[["Launch Plan"]]}`)
	if got != "Launch Plan" {
		t.Fatalf("got %q", got)
	}
}

func TestSlug(t *testing.T) {
	got := Slug("Launch Plan / Q2")
	if got != "launch-plan-q2" {
		t.Fatalf("got %q", got)
	}
}
