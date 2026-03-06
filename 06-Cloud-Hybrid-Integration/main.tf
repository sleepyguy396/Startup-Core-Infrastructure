# Startup Infrastructure: AWS S3 Bucket for Offsite Backups
# Narrative: Automating the creation of our "Immutable" backup vault.

resource "aws_s3_bucket" "startup_backup_vault" {
  bucket = "startup-immutable-backups-2026"

  tags = {
    Name        = "Backup Vault"
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}

# Enable Versioning (Crucial for Ransomware Recovery)
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.startup_backup_vault.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Lock the objects so they cannot be deleted for 30 days
resource "aws_s3_bucket_object_lock_configuration" "lock" {
  bucket = aws_s3_bucket.startup_backup_vault.id
  rule {
    default_retention {
      mode = "COMPLIANCE"
      days = 30
    }
  }
}