from telethon import TelegramClient
import asyncio
import csv
import pytz
import os
from datetime import datetime, timezone
from dotenv import load_dotenv

load_dotenv()

API_ID = os.getenv('TELEGRAM_API_ID')
API_HASH = os.getenv('TELEGRAM_API_HASH')
CHANNEL_NAME = '@V_Zelenskiy_official'
START_DATE = datetime(2022, 2, 24, tzinfo=timezone.utc)
END_DATE = datetime(2025, 2, 25, tzinfo=pytz.timezone('Europe/Kiev'))
KEYWORDS = [
    'Україна', 'Київ', 'Зеленський', 'ЗСУ', 'Донбас', 'Донецьк', 'Луганськ', 'Резніков', 'Залужний', 'Буданов', 'Порошенко',
    'Крим', 'Севастополь', 'Азов', 'Азовсталь', 'Маріуполь', 'Ірпінь', 'Буча', 'Харків', 'Херсон', 'Миколаїв', 'Одеса',
    'Дніпро', 'Львів', 'Чернігів', 'Суми', 'Запоріжжя', 'Бахмут', 'Авдіївка', 'Краматорськ', 'Слов’янськ',
    'Росія', 'Москва', 'Путін', 'Орки', 'Рашисти', 'Ватки', 'НАТО', 'ЄС', 'ГУР', 'СБУ', 'Байрактар', 'Джавелін',
    'HIMARS', 'Стугна', 'Нептун', 'Патріот', 'Дрон', 'Леопард', 'Челленджер', 'Абрамс', 'Бредлі', 'F-16', 'Майдан'
]

async def get_channel_messages(client, channel_name, keywords, start_date, end_date, chunk_size=200):
    try:
        channel = await client.get_entity(channel_name)
        print(f'Connected to channel: {channel.title}')
    except Exception as e:
        print(f'Failed to retrieve channel entity: {e}')
        return []
    
    all_messages = []

    async for message in client.iter_messages(channel, offset_date=end_date, limit=chunk_size, min_id=0):
        print(f'Message Date: {message.date}') 
        if message.date < start_date:
            break
        text = message.message or ''
        if any(keyword.lower() in text.lower() for keyword in keywords):
            all_messages.append(message)

    return all_messages

async def fetch_channel_messages(client, channel_name, keywords, start_date, end_date, total_messages=None, filename='Russia-Ukraine/Ukraine/Politicians/Zelenskiy/zelenskiy.csv'):
    all_messages = []
    current_end_date = end_date
    write_header = True
    
    while True:
        print(f'Fetching messages before: {current_end_date}')
        chunk = await get_channel_messages(client, channel_name, keywords, start_date, current_end_date, chunk_size=total_messages // 10 if total_messages else 200)
        if not chunk:
            print('No more messages found, exiting loop.')
            break
        save_to_csv(chunk, filename=filename, write_header=write_header)
        write_header = False
        all_messages.extend(chunk)
        current_end_date = chunk[-1].date

    return all_messages

def save_to_csv(messages, filename='Russia-Ukraine/Ukraine/Politicians/Zelenskiy/zelenskiy.csv', write_header=False):
    fieldnames = ['Date', 'Sender', 'Message']

    with open(filename, 'a', newline='', encoding='utf-8') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        if write_header:
            writer.writeheader()
        
        for message in messages:
            text = message.message or ''
            writer.writerow({
                'Date': message.date.isoformat(),
                'Sender': str(message.sender_id),
                'Message': text
            })

    print(f'{len(messages)} messages saved to {filename}')

async def main():
    try:
        client = TelegramClient('session', API_ID, API_HASH)
        await client.start()

        messages = await fetch_channel_messages(client, CHANNEL_NAME, KEYWORDS, START_DATE, END_DATE)
        print(f'Fetched {len(messages)} messages')

        save_to_csv(messages)
    except Exception as e:
        print(f'An error occurred: {e}')

if __name__ == '__main__':
    asyncio.run(main())