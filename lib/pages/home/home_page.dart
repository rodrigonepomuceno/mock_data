import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mock_data/pages/home/home_controller.dart';
import 'package:mock_data/shared/widgets/app_divider.dart';
import 'package:mock_data/themes/app_colors.dart';
import 'package:mock_data/themes/app_sized_box.dart';
import 'package:mock_data/themes/app_text_style.dart';
import 'package:mock_data/utils/formatters.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var formatter = Formatters();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Mensalidades',
          style: AppTextStyle.titleHome(color: AppColors.white),
        ),
        backgroundColor: AppColors.grayPrincipal,
      ),
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.listMensalidades.length ?? 0,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () => controller
                        .goToDetail(controller.listMensalidades[index]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppSizedBox.height_12,
                              Text(
                                'Saldo devedor: ${formatter.formatMoney(controller.listMensalidades[index].saldo)}',
                                style: AppTextStyle.p(
                                    color: AppColors.grayPrincipal),
                              ),
                              AppSizedBox.height_4,
                              Text(
                                'Mensalidade de: ${formatter.formatDate(controller.listMensalidades[index].vencimento)}',
                                style: AppTextStyle.small(
                                    color: AppColors.grayPrincipal),
                              ),
                              AppSizedBox.height_12,
                            ],
                          ),
                        ),
                        AppDivider(
                          height: 2,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
