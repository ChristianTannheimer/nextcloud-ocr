# nextcloud-ocr

Custom [Nextcloud](https://nextcloud.com) Docker image with built-in OCR support.

Based on the official `nextcloud:34-apache` image, extended with:

- **OCRmyPDF** – adds a searchable text layer to scanned PDFs
- **Tesseract OCR** – language packs for German (`deu`) and English (`eng`)

The image is built automatically via GitHub Actions whenever a new upstream
Nextcloud image is released, and published to the GitHub Container Registry.

## Usage

```yaml
services:
  nextcloud:
    image: ghcr.io/christiantannheimer/nextcloud-ocr:latest
```

Intended for use with Nextcloud OCR workflows (e.g. the *Workflow OCR* app),
which require `ocrmypdf` to be available inside the container.

## Why?

The official Nextcloud image does not ship OCR tools. Installing them manually
inside a running container does not survive image updates. This image bakes
them in, so automated updates (e.g. via Watchtower) keep OCR working.

## License

MIT
