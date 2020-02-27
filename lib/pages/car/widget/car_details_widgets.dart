import 'package:caranger/model/car.dart';
import 'package:caranger/pages/car/store/car_details_store.dart';
import 'package:caranger/pages/car/tabs/history/history_tab.dart';
import 'package:caranger/pages/car/tabs/info/info_tab.dart';
import 'package:flutter/material.dart';
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
  List<Widget> tabs;
  CarDetailsStore store;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);

    print("CAR: ${widget.car}");
    tabs = [
      InfoTab(
        car: widget.car,
      ),
      HistoryTab(
        historyItems: widget.car.history,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<CarDetailsStore>(context);

    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          print("REBUILD");
          return <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.grey[300]),
              expandedHeight: 200.0,
              floating: true,
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
                    controller: _tabController,
                    labelColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: "Informações"),
                      Tab(
                          icon: Icon(Icons.history),
                          text: "Histórico de gastos"),
                    ],
                  ),
                  store),
              pinned: true,
            ),
          ];
        },
        body: TabBarView(
          children: tabs,
          controller: _tabController,
        ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar, this.store);

  final TabBar _tabBar;
  final CarDetailsStore store;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Theme.of(context).primaryColorDark,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return true;
  }
}
