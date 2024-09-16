
  import 'package:flutter_application_1/models/quote_model.dart';

List<Map<String, dynamic>> quotes = [
    {
      'quote': 'The only way to do great work is to love what you do.',
      'author': 'Steve Jobs',
      'category': 'Motivation',
      'likes': 12345,
      'shares': 2345,
      'year': 2005,
      'source': 'Stanford Commencement Address'
    },
    {
      'quote': 'Success is not the key to happiness. Happiness is the key to success.',
      'author': 'Albert Schweitzer',
      'category': 'Success',
      'likes': 8765,
      'shares': 1456,
      'year': 0,
      'source': 'Speech'
    },
    {
      'quote': 'The best way to predict the future is to invent it.',
      'author': 'Alan Kay',
      'category': 'Innovation',
      'likes': 4567,
      'shares': 789,
      'year': 1971,
      'source': 'Talk at a Xerox PARC event'
    },
    {
      'quote': 'Your time is limited, don’t waste it living someone else’s life.',
      'author': 'Steve Jobs',
      'category': 'Motivation',
      'likes': 9876,
      'shares': 2367,
      'year': 2005,
      'source': 'Stanford Commencement Address'
    },
    {
      'quote': 'It is not the strongest of the species that survive, but the one most responsive to change.',
      'author': 'Charles Darwin',
      'category': 'Adaptation',
      'likes': 6543,
      'shares': 1234,
      'year': 1859,
      'source': 'On the Origin of Species'
    },
    {
      'quote': 'Life is what happens when you’re busy making other plans.',
      'author': 'John Lennon',
      'category': 'Life',
      'likes': 7890,
      'shares': 1789,
      'year': 1980,
      'source': 'Beautiful Boy (Darling Boy)'
    },
    {
      'quote': 'The purpose of our lives is to be happy.',
      'author': 'Dalai Lama',
      'category': 'Happiness',
      'likes': 9456,
      'shares': 2045,
      'year': 1992,
      'source': 'The Art of Happiness'
    },
    {
      'quote': 'Get busy living or get busy dying.',
      'author': 'Stephen King',
      'category': 'Motivation',
      'likes': 12340,
      'shares': 2345,
      'year': 1982,
      'source': 'Different Seasons'
    },
    {
      'quote': 'You only live once, but if you do it right, once is enough.',
      'author': 'Mae West',
      'category': 'Life',
      'likes': 8760,
      'shares': 1456,
      'year': 1937,
      'source': 'Every Day\'s a Holiday'
    },
    {
      'quote': 'Many of life’s failures are people who did not realize how close they were to success when they gave up.',
      'author': 'Thomas Edison',
      'category': 'Persistence',
      'likes': 10023,
      'shares': 3104,
      'year': 1921,
      'source': 'Interview with a reporter'
    },
    {
      'quote': 'If you want to live a happy life, tie it to a goal, not to people or things.',
      'author': 'Albert Einstein',
      'category': 'Happiness',
      'likes': 11456,
      'shares': 2647,
      'year': 1941,
      'source': 'Letter to son'
    },
    {
      'quote': 'Never let the fear of striking out keep you from playing the game.',
      'author': 'Babe Ruth',
      'category': 'Courage',
      'likes': 8654,
      'shares': 1992,
      'year': 1940,
      'source': 'Autobiography'
    },
    {
      'quote': 'Money and success don’t change people; they merely amplify what is already there.',
      'author': 'Will Smith',
      'category': 'Success',
      'likes': 10432,
      'shares': 2357,
      'year': 2006,
      'source': 'Interview'
    },
    {
      'quote': 'Your time is limited, so don’t waste it living someone else’s life.',
      'author': 'Steve Jobs',
      'category': 'Motivation',
      'likes': 7896,
      'shares': 1457,
      'year': 2005,
      'source': 'Stanford Commencement Address'
    },
    {
      'quote': 'Not how long, but how well you have lived is the main thing.',
      'author': 'Seneca',
      'category': 'Life',
      'likes': 5432,
      'shares': 1231,
      'year': 50,
      'source': 'Letters from a Stoic'
    },
    {
      'quote': 'If life were predictable it would cease to be life, and be without flavor.',
      'author': 'Eleanor Roosevelt',
      'category': 'Life',
      'likes': 8765,
      'shares': 1567,
      'year': 1960,
      'source': 'Autobiography'
    },
    {
      'quote': 'In the end, it’s not the years in your life that count. It’s the life in your years.',
      'author': 'Abraham Lincoln',
      'category': 'Life',
      'likes': 10987,
      'shares': 2345,
      'year': 1863,
      'source': 'Speech'
    },
    {
      'quote': 'Life is short, and it’s up to you to make it sweet.',
      'author': 'Sarah Louise Delany',
      'category': 'Life',
      'likes': 6789,
      'shares': 1432,
      'year': 1993,
      'source': 'Having Our Say'
    },
    {
      'quote': 'You define your own life. Don’t let other people write your script.',
      'author': 'Oprah Winfrey',
      'category': 'Self-empowerment',
      'likes': 11234,
      'shares': 2674,
      'year': 2007,
      'source': 'O Magazine'
    },
    {
      'quote': 'You only live once, but if you do it right, once is enough.',
      'author': 'Mae West',
      'category': 'Life',
      'likes': 6543,
      'shares': 1276,
      'year': 1937,
      'source': 'Every Day\'s a Holiday'
    },
    {
      'quote': 'Be not afraid of life. Believe that life is worth living, and your belief will help create the fact.',
      'author': 'William James',
      'category': 'Life',
      'likes': 7456,
      'shares': 1456,
      'year': 1909,
      'source': 'Is Life Worth Living?'
    },
    {
      'quote': 'Life is like riding a bicycle. To keep your balance, you must keep moving.',
      'author': 'Albert Einstein',
      'category': 'Life',
      'likes': 12309,
      'shares': 3456,
      'year': 1930,
      'source': 'Letter to son'
    },
    {
      'quote': 'Keep calm and carry on.',
      'author': 'Unknown',
      'category': 'Motivation',
      'likes': 8760,
      'shares': 1546,
      'year': 1939,
      'source': 'British Government Poster'
    },
    {
      'quote': 'The future belongs to those who believe in the beauty of their dreams.',
      'author': 'Eleanor Roosevelt',
      'category': 'Dreams',
      'likes': 9456,
      'shares': 1789,
      'year': 1933,
      'source': 'Speech'
    },
    {
      'quote': 'It’s not whether you get knocked down, it’s whether you get up.',
      'author': 'Vince Lombardi',
      'category': 'Perseverance',
      'likes': 9874,
      'shares': 2345,
      'year': 1960,
      'source': 'Speech'
    },
    {
      'quote': 'Life is 10% what happens to us and 90% how we react to it.',
      'author': 'Charles R. Swindoll',
      'category': 'Life',
      'likes': 8321,
      'shares': 1789,
      'year': 1980,
      'source': 'Book'
    },
    {
      'quote': 'When you cease to dream you cease to live.',
      'author': 'Malcolm Forbes',
      'category': 'Dreams',
      'likes': 6547,
      'shares': 1567,
      'year': 1987,
      'source': 'Forbes Magazine'
    },
    {
      'quote': 'If you want to live a happy life, tie it to a goal, not to people or things.',
      'author': 'Albert Einstein',
      'category': 'Happiness',
      'likes': 11432,
      'shares': 2647,
      'year': 1941,
      'source': 'Letter to son'
    },
    {
      'quote': 'You have within you right now, everything you need to deal with whatever the world can throw at you.',
      'author': 'Brian Tracy',
      'category': 'Self-empowerment',
      'likes': 10987,
      'shares': 2456,
      'year': 1993,
      'source': 'Book'
    },
    {
      'quote': 'Believe you can and you’re halfway there.',
      'author': 'Theodore Roosevelt',
      'category': 'Belief',
      'likes': 13245,
      'shares': 2987,
      'year': 1905,
      'source': 'Speech'
    }
  ];

List<QuoteModel> allData = quotes.map((e) => QuoteModel.fromMap(data: e)).toList();