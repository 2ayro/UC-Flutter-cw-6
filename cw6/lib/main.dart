import 'package:cw6/buildings.dart';
import 'package:cw6/pages/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  List buildings = [
    Building(
      name: "أبراج الكويت",
      imgUrl:
          "https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg",
      description:
          "أبراج الكويت هي ثلاثة أبراج على ساحل الخليج العربي في مدينة الكويت في منطقة تسمى رأس عجوزة، تقع على شاطئ الخليج العربي مقابل قصر دسمان في منطقة شرق بمدينة الكويت.",
    ),
    Building(
      name: "برج التحرير",
      imgUrl:
          "https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg",
      description:
          "برج التحرير هو برج للاتصالات يقع في مدينة الكويت بارتفاع 372 متر كثاني أعلى مبنى في الكويت بعد برج الحمراء، ويحتل المركز الثالث عشر بين أطول أبراج العالم، ويشغل مساحة تبلغ 21 ألف متر مربع، ويعد أهم المعالم في دولة الكويت، ويستخدم البرج كبرج للاتصالات حيث يعتبر من أهم المرافق التابعة لوزارة المواصلات في الكويت .",
    ),
    Building(
      name: "المسجد الكبير",
      imgUrl:
          "https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg",
      description:
          "مسجد الدولة الكبير هو مسجد يقع في مدينة الكويت قرب شاطئ الخليج العربي اُفتتح عام 1986م بناء على توجيهات من الشيخ جابر الأحمد الصباح. بدأ العمل في بنائه عام 1979 واكتمل عام 1986 وبلغت كلفة إنجازه 14 مليون دينار كويتي وساهم في بنائه خمسون مهندسا وأربعمائة وخمسون عاملا. صمم المسجد المهندس المعماري محمد صالح مكية واختار تصميمه على الطراز الأندلسي الفاخر وتبلغ مساحة المسجد 45 ألف مترا مربعا، منها 25 ألف مترا مربعا مبنية، و 20 ألف مترا مربعا مكشوفة تشكل حدائق وممرات المسجد الخارجية.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Kuwait City LandMarks"),
        ),
        body: Center(
            child: ListView.builder(
                itemCount: buildings.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(buildings[index].imgUrl),
                    title: Text(buildings[index].name),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(yousef: buildings[index])));
                        },
                        icon: Icon(Icons.arrow_forward)),
                  );
                })),
      ),
    );
  }
}
