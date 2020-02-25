import 'package:caranger/model/car.dart';
import 'package:caranger/pages/car/store/car_detail_store.dart';
import 'package:caranger/pages/car/tabs/history/history_tab.dart';
import 'package:caranger/pages/car/tabs/info/info_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CarHeader extends StatefulWidget {
  final Car car;

  CarHeader({this.car});

  @override
  _CarHeaderState createState() => _CarHeaderState();
}

class _CarHeaderState extends State<CarHeader>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  CarDetailStore store;
  List<Widget> tabs;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    print("CAR: ${widget.car}");
    tabs = [InfoTab(), HistoryTab(historyItems: widget.car.history,)];
  }

  void onTabTap(int index) {
    store.setCurrentIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<CarDetailStore>(context);

    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                      "${widget.car.manufacturerName} ${widget.car.modelName}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    widget.car.image,
                    fit: BoxFit.cover,
                  )),
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                TabBar(
                  onTap: (index) {
                    onTabTap(index);
                  },
                  controller: _tabController,
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(icon: Icon(Icons.info), text: "Informações"),
                    Tab(icon: Icon(Icons.history), text: "Histórico de gastos"),
                  ],
                ),
              ),
              pinned: true,
            ),
          ];
        },
        body: Observer(builder: (_) => tabs[store.currentIndex]));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
