import os


class AppConfig:
    # Telegram config
    TELEGRAM_BOT_TOKEN = os.getenv("TELEGRAM_BOT_TOKEN", "")
    TELEGRAM_CHAT_ID = os.getenv("TELEGRAM_CHAT_ID", "")
    TELEGRAM_TOPIC_ID = os.getenv("TELEGRAM_TOPIC_ID", "")

    # GitHub config
    GITHUB_WEBHOOK_SECRET = os.getenv("GITHUB_WEBHOOK_SECRET", "secret")

    # FastAPI config
    FASTAPI_OPENAPI_URL = os.getenv("FASTAPI_OPENAPI_URL", None)
