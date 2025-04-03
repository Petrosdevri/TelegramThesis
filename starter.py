import os
from telethon import TelegramClient, events, sync
from dotenv import load_dotenv

load_dotenv()

api_id = os.getenv('TELEGRAM_API_ID')
api_hash = os.getenv('TELEGRAM_API_HASH')

async def main():
    try:
        client = TelegramClient('session', API_ID, API_HASH)
        await client.start()

        messages = await fetch_channel_messages(client, CHANNEL_NAME, START_DATE, END_DATE)
        print(f'Fetched {len(messages)} messages')

        save_to_csv(messages)
        print('Messages saved to enemywatch.csv')
    except Exception as e:
        print(f'An error occurred: {e}')

if __name__ == '__main__':
    asyncio.run(main())