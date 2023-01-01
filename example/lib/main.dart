import 'package:persian_needs/persian_needs.dart';
import 'package:shamsi_date/shamsi_date.dart';

void main() {
  // String extensions
  String text = loremParagraf; // lorem text
  text.timeToRead(); // return Duration()
  text.smsPageCount(); // 9
  text.mostWords(); // [{و: 13}]
  text.leastWords(); // [{کاربردهای: 1}, {ایپسوم: 1}, {متن: 1}, {ساختگی: 1}, {قرار: 1}, {تولید: 1}, ...]
  text.mostChars(); // [{ا: 96}]
  text.leastChars(); // [{ژ: 1}, {ذ: 1}, {،: 1}, {ئ: 1}]
  text.wordsRepetition(
    sorted: true,
    order: Order.descending,
  ); // {و: 13, در: 5, با: 4, طراحان: 3, مورد: 3, ... } <!>because of persian words, output is reverse.
  text.charsRepetition(
    sorted: true,
    order: Order.descending,
  ); // {ا: 96, ر: 49, ی: 47, و: 44, د: 34, ... } <!>because of persian words, output is reverse.
  text.wordsCount(); // 133
  text.words(); // [لورم, ایپسوم, متن, ساختگی, با, تولید, ...]

  // String methods #
  timeToRead(text); // return Duration()
  smsPageCount(text); // 9
  mostWords(text); // [{و: 13}]
  leastWords(
      text); // [{کاربردهای: 1}, {ایپسوم: 1}, {متن: 1}, {ساختگی: 1}, {قرار: 1}, {تولید: 1}, ...]
  mostChars(text); // [{ا: 96}]
  leastChars(text); // [{ژ: 1}, {ذ: 1}, {،: 1}, {ئ: 1}]
  wordsRepetition(
    text,
    sorted: true,
    order: Order.descending,
  ); // {و: 13, در: 5, با: 4, طراحان: 3, مورد: 3, ... } <!>because of persian words, output is reverse.
  charsRepetition(
    text,
    sorted: true,
    order: Order.descending,
  ); // {ا: 96, ر: 49, ی: 47, و: 44, د: 34, ... } <!>because of persian words, output is reverse.
  wordsCount(text); // 133
  words(text); // [لورم, ایپسوم, متن, ساختگی, با, تولید, ...]

  // Number extensions
  1234.farsi(); // ١۲۳۴
  1234.farsiString(); // یک هزار و دویست و سی و چهار
  '1235'.toFarsiNumber(); // ١۲۳۵
  '١۲۳۵'.toEnglishNumber(); //1235
  '122352'.toFarsiString(); //صد و بیست و دو هزار و سیصد و پنجاه و دو
  '١۲۲۳۵۲'.toFarsiString(); //صد و بیست و دو هزار و سیصد و پنجاه و دو
  '12۲3۵2'.toFarsiString(); //صد و بیست و دو هزار و سیصد و پنجاه و دو

  // Number methods
  digitToFarsi('1235'); // ١۲۳۵
  digitToEnglish('١۲۳۵'); //1235
  digitToFarsiString('122352'); //صد و بیست و دو هزار و سیصد و پنجاه و دو
  digitToFarsiString('١۲۲۳۵۲'); //صد و بیست و دو هزار و سیصد و پنجاه و دو
  digitToFarsiString('12۲3۵2'); //صد و بیست و دو هزار و سیصد و پنجاه و دو

  //standard Lorem Ipsum features
  loremByParagrafCount(
      count:
          1); /* لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد. */
  loremByWordCount(count: 5); // لورم ایپسوم متن ساختگی با
  loremIpsumWord; // لورم ایپسوم
  loremParagraf; /* لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد. */
  loremSentence; // لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.

  // Mock data
  randomPerson(gender: Gender.female); // output is something like: ملینا کیان
  randomName(gender: Gender.random); // ترلان
  randomFamily; // محرابی
  randomSentence;
  /* هر نفسی که فرو می‌ بریم، مرگی را که مدام به ما دست‌ اندازی می‌کند پس می‌زند... در نهایت این مرگ است که باید پیروز شود، زیرا از هنگام تولد بخشی از سرنوشت م
  ا شده و فقط مدت کوتاهی پیش از بلعیدن طعمه اش، با آن بازی می کند. با این همه، ما تا آنجا که ممکن است، با علاقه فراوان و دلواپسی زیاد به زندگی ادامه می دهیم، همان‌ طور که تا آنجا که ممکن است طولانی‌ تر در یک حباب صابون می‌ دمیم تا بزرگتر شود، گر چه با قطعیتی تمام می‌ دانیم که خواهد ترکید. */
  randomMaleName; // برنا
  randomFemaleName; // ویانا

  // Work with time
  // Gregorian calendar:
  DateTime miladi = DateTime.now().subtract(const Duration(seconds: 53));
  miladi.tillNow(); // پنجاه و سه ثانیه پیش
  miladi.tillNow(numeric: true); // 53 ثانیه پیش
  // jalali/shamsi calendar:
  Jalali jalali = Jalali(1376);
  jalali.tillNow(); // بیست و پنج سال پیش
  jalali.tillNow(numeric: true); // 25 سال پیش
}