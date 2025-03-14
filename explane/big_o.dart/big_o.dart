//=====================big o====================
/*
 هناك مفهومين ريسين لما نتكلم عن ال bigo المفهومين هم : 
 time complexity : الوقت
 space complexity : الفضاء
 حساب الوقت والمساحه وتبسيطها عند استخدام ال bigo
 غالبا الbigo بنستخدمها لما يكون عندنا مشكله ليها اكتر من حلوعايزين نفاضل بين الحلول ايهما افضل

 مثال :اكتب داله تاخذ نص وترجع معكوسه
 

void main(List<String> args) {
  print(reverseByloop("hello"));
}

reverseString(String str) {
  return str.split("").reversed.join("");
}

/// Reverse a given string using a for loop
///
/// This function takes a given string and returns its reversed version
/// using a for loop.
///
/// The time complexity of this function is O(n) where n is the length of the string
/// The space complexity of this function is O(n) as it uses a new string
/// to store the reversed string.
String reverseByloop(String str) {
  String words =  "";
 
  // loop through the string from the end to the start
  for (var i = str.length - 1; i >= 0; i--) {
    words = (str[i]) + words;
  }
  return words ;
}
 حاليا في اكتر من طريقه للحل بس بس عايزين معيار نشوف بيه احسن طريقه من حيث اقل مساحه تخزينيه واقل وقت ممكن
 فال(big o)هو المعيار لقياس المساحه والوقت
 وهو موضوع مهم جدا لما يكون مشروعك كبير بحيث يقلل المساحه كما زكرنا وباختصار يزيد من كفاءة التطبيق مت حيث السرعه ونتخطى حصول العديد من الكراشات 
 وهي مهمه ايضا في مقابلات العمل يعني ممكن تنطرح عليكم مسائل متعلقه بالbig o
  //==============================big o===============================
طيب حنبدا نتكلم عنها بعد م عرفنا دورها وحنستخدمها وين 

مثال :

  void main(List<String> args) {
  print(addUPTo3(5));
}

addUpTo(int num) {
  int result = 0;
  for (var i = 0; i <= num; i++) {
    result += i;
    n operation
  }
  return result;
}

int result = 0;
addUPTo2(int num) {
  if (num >= 0) {
 1   result += num;
 2   addUPTo2(num - 1);
3    return result;
  }
}

addUPTo3(num) {
3  return num * (num + 1) / 2;
}

 لو لاحظنا اولا للعمليات فحنلاجظ عدد العمليات في الداله الاولى والتانيه تلاته عمليات بينما 
 الداله التالته عمليه واحده فقط ولا يقتصر القياس على هذا فقط فيمكن ان نلاحظ انها تاخذ زمن اكبر
 يمكن قياسها كالتالي 

   void main(List<String> args) {
   Stopwatch stopwatch = Stopwatch()..start();
  print(addUPTo3(5));

  print( "time complexity ${stopwatch.elapsedMilliseconds}");
}

 فسوف تلاحظ الزمن الذي تاخذه كل داله وستلاحظ ان الداله الاخيره سوف تاخذ اقل زمن مع ان كلها تاخذ اجزاء من الملي ثانيه بس لما
 يكبر المشروع سيكون له تاثير على التطبيق

هذه الطريقه غير عمليه لانه يعتمد على امكانيات الجهاز لهذا 
سوف نقوم بحساب عدد العمليات 


مثلا 
addUPTo3(num) {
1  return num * (num + 1) / 2;
}
في هذه الداله اذا قمنا بعدد العمليات التي تقوم بها فسنجدها تقوم ب 3 عمليات ضرب وقسمه وجمع فقط 
كيفما كانت قيمة المتغير ستكون ثلاثه عمليات فقط
ا اي عدد العمليات ثابت فلنفترض انها n of operations



addUpTo(int num) {
  int result = 0;
  for (var i = 0; i <= num; i++) {
    result += i;
    n operation
  }
  return result;
} 

في هذا المثال سوف نلاحظ عدد العمليات هنا يعتمد على قيمة المتغير كلما زادت        
قيمة المتغير اثر ذالك على عدد العمليات 

ومن هنا يمكننا تعريف ال big o
 صيغه موحده تبين زيادة العمليات مع زيادة المدخلات 
صية كتابتها كالتالي :
Big O(f(n))

f(n) هو الداله التي تقوم بها العمليات
 O(n)= 1 عندما تكون عدد العمليات ثابت
 O(n)= n عندما تكون عدد العمليات تزيد مع زيادة المدخلات
    O log n لوغريثم العدد                       
 O(n)= n2   زيادة المدخلات تزيد عدد العمليات الى الضعف
  
  المثال الثالث ينطبق على ان عدد العمليات   ثابت         addUpTo(int num)
O(n) =1
والمثال الثاني والاول عدد العمليات يساوي عدد المدخلات
O(n) = n
 وبالنسبه لمربع المتغير يبين زياده الضعف بالنسبه للعمليات 

O(n) = n2
example:
nested loop
for (int i = 0; i < n; i++) {
  for (int j = 0; j < n; j++) {
    // Do something
  }
}

=====================================================================================
 قواعد حساب الوقت او عدد العمليات 

1) O(1) : Constant time complexity
2) O(n) : Linear time complexity
وفي هذه القاعده الثوابت لاتؤثر بمعنى
 O(4n)= O(n)
 O(5N2)= O(n2)
 3)االاجزاء الاصغر لا تؤثر
 مثال 
 O(2n +10n +10)= O(n2)

4) المتغيرات والحصول على عنصر من قائمه او مصفوفه تعتبر العمليات قيم ثابته 
O(1)




  لو جينا نرتب ترتيب العمليات تصاعديا 

  O(1)->O log n -> O(n)->O(n2) 
*/
