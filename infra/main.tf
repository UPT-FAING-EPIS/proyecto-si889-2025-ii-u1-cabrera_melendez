provider "google" {
  project = "simulapp-92286" # 👈 tu Project ID de Firebase
  region  = "us-central1"
}

resource "google_firestore_database" "default" {
  name        = "(default)"
  location_id = "us-central1"
  type        = "FIRESTORE_NATIVE"
}
